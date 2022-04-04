<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use App\Models\DriverLeave;
use App\Models\Leave;
use App\Models\User;
use App\Notifications\DriverLeaveApprovalEmail;
use App\Notifications\LeaveApprovalEmail;
use App\Notifications\LeaveApproved;
use Carbon\Carbon;
use DateTime;
use DateInterval;
use DatePeriod;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Qlick\LaravelFullcalendar\Facades\Calendar;

class DriverLeaveController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $user = Auth::user();
        $department = Auth::user()->department;

        $admin = $user->roles()->where('name', 'Admin')->orWhere('name', 'Wages')->exists();

        if($admin OR $department == 'Operations'){
            $leaves = DriverLeave::join('drivers', 'drivers.paynumber', '=', 'driver_leaves.paynumber')
                ->select('drivers.full_name','driver_leaves.id','driver_leaves.paynumber','driver_leaves.type_of_leave','driver_leaves.days_taken','driver_leaves.date_from','driver_leaves.date_to','driver_leaves.created_at','driver_leaves.status')
                ->get();
        } else{
            return redirect()->back()->with('error', 'Only Operations department is authorized to process driver leave days');
        }

        return View('driverleaves.leaves', compact('leaves'));
    }

    public function create(){
        $user = Auth::user();
        $department = Auth::user()->department;
        $det = $user->roles()->where('name', 'Admin')->orWhere('name', 'Wages')->exists();

        if($det OR $department == 'Operations') {
            $drivers = Driver::all();
            $leave_type = DB::table("leavetypes")->get();
        } else {
            return redirect()->back()->with('error', 'Only Operations department is authorized to process driver leave days');
        }

        return view('driverleaves.driver-apply ', compact('drivers', 'leave_type'));
    }

    public function manage(){

        $user = Auth::user();

        $adminCheck = $user->roles()->where('name', 'Admin')->exists();

        $managerCheck = $user->department;

        if($adminCheck){
            $leaves = DriverLeave::where('status', 0)
                ->join('drivers', 'drivers.paynumber', '=', 'driver_leaves.paynumber')
                ->select('drivers.full_name','driver_leaves.id','driver_leaves.paynumber','driver_leaves.type_of_leave','driver_leaves.days_taken','driver_leaves.date_from','driver_leaves.date_to','driver_leaves.created_at','driver_leaves.status')
                ->get();
        } elseif($managerCheck == 'Operations') {

                $leaves = DriverLeave::where('status', 0)
                    ->join('drivers', 'drivers.paynumber', '=', 'driver_leaves.paynumber')
                    ->select('drivers.full_name','driver_leaves.id','driver_leaves.paynumber','driver_leaves.type_of_leave','driver_leaves.days_taken','driver_leaves.date_from','driver_leaves.date_to','driver_leaves.created_at','driver_leaves.status')
                    ->get();
        } else{
            return redirect()->back()->with('error', 'Only Operations Management can approve leave days.');
        }


        return View('driverleaves.manage-driver-leave', compact('leaves'));
    }

    public function store(Request $request) {

        $paynumber = $request->input('paynumber');
        $specialCount = \App\Models\DriverLeave::where('type_of_leave','=','Compassionate')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
        $sickCount = \App\Models\DriverLeave::where('type_of_leave','=','Sick')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');
        $maternityCount = \App\Models\DriverLeave::where('type_of_leave','=','Maternity')->where('paynumber','=',$paynumber)->where('status','=',1)->count();

        $date1 = strtotime($request->date_from);
        $date2 = strtotime($request->date_to);

        if($request->type_of_leave == 'Annual' OR $request->type_of_leave == 'Cash in Lieu of Leave (CILL)' OR $request->type_of_leave == 'Off Day') {

            $start = new DateTime($request->date_from);
            $end = new DateTime($request->date_to);

            $end->modify('+1 day');

            $interval = $end->diff($start);

            $days = $interval->days;

            $period = new DatePeriod($start, new DateInterval('P1D'), $end);

            $holidays = array('2020-01-01', '2020-02-21', '2020-04-10', '2020-04-11', '2020-04-12', '2020-04-13', '2020-04-18', '2020-05-01', '2020-05-25', '2020-08-10', '2020-08-11',
                '2020-12-22', '2020-12-25', '2020-12-26');

            foreach ($period as $dt) {
                $curr = $dt->format('D');

                if ($curr == 'Sat' || $curr == 'Sun') {
                    $days--;
                } elseif (in_array($dt->format('Y-m-d'), $holidays)) {
                    $days--;
                }
            }
        }else{
            $days = ($date2 - $date1)/60/60/24;
        }

        if($date2<$date1){
            return redirect('/leaves')->with('error', 'Date to must be greater than Date From.');
        } elseif($request->half_day){
            $days_taken = 0.5;
        } else {
            $days_taken = $days;
        }

        $request->applied_by;
        $this->validate($request, [
            'paynumber' => 'required',
            'type_of_leave' => 'required',
            'date_from' => 'required',
            'date_to' => 'required',
            'applied_by' => 'required',
            'address' => 'required',
            'mobile' => 'required',
        ]);

        $data = DB::table("drivers")->where('paynumber', '=', $request->paynumber)->first();

        $request->date_from = date('Y-m-d', strtotime($request->date_from));
        $request->date_to = date('Y-m-d', strtotime($request->date_to));

        $approvers = DB::table('departments')
            ->join('users', function ($join) {
                $join->on('users.paynumber', '=', 'departments.manager')
                    ->orOn('users.paynumber', '=', 'departments.asst_manager');
            })
            ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'departments.department')
            ->where('departments.department', '=', 'Operations')
            ->get();

        if($request->type_of_leave == 'Compassionate'){
            if ($days_taken > (12 - $specialCount)){
                return redirect('/leaves/create')->with('error', 'According to the law, the driver is allowed 12 Special Leave days in a calendar year.');
            }
        } elseif ($request->type_of_leave == 'Sick'){
            if ($days_taken > (180 - $sickCount)){
                return redirect('/leaves/create')->with('error', 'According to the law, the driver is allowed 180 Sick Leave days in a calendar year.');
            }
        }elseif ($request->type_of_leave == 'Maternity'){
            if (($maternityCount+1) > 3){
                return redirect('/leaves/create')->with('error', 'According to the law, the driver is allowed 3 Maternity Leave days for any employer.');
            }
        } else {

            $leave = DriverLeave::create([
                'paynumber' => $request->input('paynumber'),
                'type_of_leave' => $request->input('type_of_leave'),
                'days_taken' => $days_taken,
                'date_from' => $request->date_from,
                'date_to' => $request->date_to,
                'applied_by' => $request->input('applied_by'),
                'address' => $request->input('address'),
                'mobile' => $request->input('mobile'),
                'status' => 0,
            ]);
            $leave->save();

            foreach ($approvers as $yuza) { // CHANGE THIS RIGHT HERE
                $user_name = $yuza->first_name;

                $details = [
                    'greeting' => 'Good day, ' . $user_name,
                    'body' => $data->full_name . ' (' . $data->paynumber . ') has submitted a leave request which needs your approval. The leave request has the following information:',
                    'body1'=> 'Type of Leave: '.$leave->type_of_leave,
                    'body2' => 'Days Requested: '.$leave->days_taken,
                    'body3' => 'Date From: '.$leave->date_from,
                    'body4'=> 'Date To: '.$leave->date_to.'.',
                    'actionText' => 'Approve Request',
                    'actionURL' => url('approve.driverleave'),
                    'id' => $leave->id
                ];

                $admin = User::where('email','=',$yuza->email)->first();

                //echo $admin;
                $admin->notify(new DriverLeaveApprovalEmail($details)); // CHANGE THIS RIGHT HERE
            } // CHANGE THIS RIGHT HERE
        }

        return redirect('/driverleaves/')->with('success', 'Leave form has been sent to the Ops Manager for Approval. Please download the form after the leave has been approved and submit to Human Resources.');
    }

    /**
     * Approve a leave.
     *
     * @param string $token The token
     *
     * @return Redirect
     */
    public function activate($leave_id) {
        $current_date_time = Carbon::now()->toDateTimeString();

        $leave = DriverLeave::findOrFail($leave_id);
        $leave->approved_when = $current_date_time;
        $leave->status = '1';
        $leave->approved_by = Auth::user()->paynumber;
        $leave->approver_name = Auth::user()->first_name.' '. Auth::user()->last_name;
        $leave->save();

        $user = Driver::where('paynumber','=',$leave->paynumber)->first();

        if($leave->type_of_leave =='Annual' OR $leave->type_of_leave =='Cash in Lieu of Leave (CILL)' OR $leave->type_of_leave =='Off Day') {
            $mazuvaAtorwa = $leave->days_taken;
            $mazuvaAsara = $user->leave_days - $mazuvaAtorwa;

            DB::table('drivers')
                ->where('paynumber', $leave->paynumber)
                ->update([
                    'leave_days' => $mazuvaAsara,
                ]);
        }

        return redirect()->route('manage-driverleave')->with('success','Request approved successfully');
    }

    /**
     * Reject a leave.
     *
     * @param string $token The token
     *
     * @return Redirect
     */
    public function reject($leave_id)
    {
        $leave = DriverLeave::findOrFail($leave_id);
        $leave->status = '2';
        $leave->save();

        return redirect()->route('manage-driverleave')->with('success','Request has been rejected successfully.');

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $leave = DriverLeave::findOrFail($id);
        $user = Driver::where('paynumber', $leave->paynumber )->first();

        return view('driverleaves.show-driver-leave',compact('leave', 'user'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $leave = DriverLeave::findOrFail($id);

        $leave->save();
        $leave->delete();

        return redirect('driverleaves')->with('success', 'Leave request deleted successfully.');
    }

    public function getLeaveSummary(){
        {
            $leaves = Leave::groupBy('paynumber','department','type_of_leave')
                ->selectRaw('paynumber, sum(days_taken) as sum,department,type_of_leave')
                ->where('status', '=', '1')
                ->paginate(10);

            return View('leaves.leave-summary', compact('leaves'));
        }
    }

    public function generatePdf($id){

        $leave = DriverLeave::findorFail($id);

        try {
            $mpdf = new \Mpdf\Mpdf([
                'margin_left' => 10,
                'margin_right' => 10,
                'margin_top' => 48, //48
                'margin_bottom' => 25,
                'margin_header' => 10, //10
                'margin_footer' => 10,
            ]);

            $html = \View::make('driverleaves.driver-form' )->with('leave', $leave);
            $html = $html->render();

            $mpdf->SetProtection(array('print'));
            $mpdf->SetTitle("Whelson Leave Form");
            $mpdf->SetAuthor("Vincent H Guyo");
            $mpdf->showWatermarkImage = true;
            $mpdf->watermark_font = 'DejaVuSansCondensed';
            $mpdf->watermarkTextAlpha = 0.1;
            $mpdf->SetDisplayMode('fullpage');
            $mpdf->WriteHTML($html);
            $mpdf->Output("WhelsonForm".$leave->paynumber.'.pdf', 'I');
        } catch (\Mpdf\MpdfException $e) { // Note: safer fully qualified exception name used for catch
            // Process the exception, log, print etc.
            echo $e->getMessage();

        }
    }

    public function getLeaveAdmin() {
        $leaves = DB::table('driver_leaves as l')
            ->join('drivers as u', function($join) {
                $join->on('u.paynumber', '=', 'l.paynumber');
            })
            ->select('u.paynumber','u.full_name','u.leave_days',DB::raw('sum(l.days_taken) as totalDaysTaken'))
            ->where('l.status','=', 1)
            ->groupBy('u.paynumber','u.full_name','u.leave_days')
            ->get();

        return View('driverleaves.dleave-administration', compact('leaves' ));
    }

    public function getLeaveBalances() {
        $drivers = Driver::all();

        return View('driverleaves.driver-leave-balances', compact('drivers'));
    }

    public function getRecords() {
        return View('driverleaves.dleave-records');
    }

    public function getLeaveRecords() {

        $from = $_POST['date_from'];
        $to = $_POST['date_to'];

        $start = date('Y-m-d h:m:s', strtotime($from));
        $end = date('Y-m-d h:m:s', strtotime($to));

        $leaves = DB::table('driver_leaves as l')
            ->join('drivers as u', function($join) {
                $join->on('u.paynumber', '=', 'l.paynumber');
            })
            ->select('u.full_name','u.paynumber','l.id','l.type_of_leave','l.days_taken','l.date_from','l.date_to')
            ->whereBetween('l.created_at', [$start, $end])
            ->where('l.deleted_at','=', null)
            ->groupBy('u.full_name','u.paynumber','l.id','l.type_of_leave','l.days_taken','l.date_from','l.date_to')
            ->get();

        return View('driverleaves.dleave-records', compact('leaves', 'from', 'to'));
    }

    public function bulkUpdater(){
        $drivers = Driver::all();

        foreach ( $drivers as $driver) {
            DB::table("drivers")
                ->where('id','=',$driver->id)
                ->update(['updated_at' => now(), 'leave_days' => $driver->leave_days+1.833]);
        }

        return redirect()->back()->with('success', 'Leave days updated successfully');
    }

    public function fetchPrevLeaves($paynumber){
        $leaves = DB::table("driver_leaves")
            ->where("paynumber",$paynumber)
            ->select("id","type_of_leave", "days_taken","date_from", "date_to")
            ->orderBy("id", 'desc')
            ->get(10);

        return response()->json($leaves);
    }
}