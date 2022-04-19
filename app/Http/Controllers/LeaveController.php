<?php

namespace App\Http\Controllers;

use App\Mail\LeaveApproval;
use App\Mail\LeaveHasApproved;
use App\Models\Driver;
use App\Models\Leave;
use App\Models\User;
use App\Notifications\LeaveApprovalEmail;
use App\Notifications\LeaveApproved;
use Carbon\Carbon;
use DateInterval;
use DatePeriod;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Traits\LeaveActivationTrait;
use Qlick\LaravelFullcalendar\Facades\Calendar;
use Mail;

class LeaveController extends Controller
{

    /*public function __construct()
    {
        $this->middleware('auth');
    }*/

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

        $user = Auth::user();
        $paynumber = Auth::user()->paynumber;
        $department = Auth::user()->department;

        $det = $user->roles()->where('name', 'User')->exists();
        $admin = $user->roles()->where('name', 'Admin')->exists();
        $hrmain = $user->roles()->where('slug','hrmaingate')->exists();

        if($det){
            $leaves = DB::table('leaves as l')
                ->join('users as u', function($join) {
                    $join->on('u.paynumber', '=', 'l.paynumber');
                })
                ->select('u.paynumber','u.first_name','u.last_name','u.department','l.type_of_leave','l.id','l.days_taken','l.date_from','l.date_to','l.created_at','l.status')
                ->where('u.paynumber','=', $paynumber)
                ->get();
        } elseif($admin){
            $leaves = DB::table('leaves as l')
                ->join('users as u', function($join) {
                    $join->on('u.paynumber', '=', 'l.paynumber');
                })
                ->select('u.paynumber','u.first_name','u.last_name','u.department','l.type_of_leave','l.id','l.days_taken','l.date_from','l.date_to','l.created_at','l.status')
                ->get();
        }elseif ($hrmain){
            $leaves = DB::table('leaves as l')
                ->join('users as u', function($join) {
                    $join->on('u.paynumber', '=', 'l.paynumber');
                })
                ->select('u.paynumber','u.first_name','u.last_name','u.department','l.type_of_leave','l.id','l.days_taken','l.date_from','l.date_to','l.created_at','l.status')
                ->get();
        }else{
            $leaves = DB::table('leaves as l')
                ->join('users as u', function($join) {
                    $join->on('u.paynumber', '=', 'l.paynumber');
                })
                ->select('u.paynumber','u.first_name','u.last_name','u.department','l.type_of_leave','l.id','l.days_taken','l.date_from','l.date_to','l.created_at','l.status')
                ->latest()
                ->get();
        }

        return View('leaves.leaves', compact('leaves'));
    }

    public function manage(){

        $user = Auth::user();

        $adminCheck = $user->roles()->where('name', 'Admin')->exists();

        $directorCheck = $user->roles()->where('name', 'Director')->exists();

        $managerCheck = $user->roles()->where('name', 'Manager')->exists();

        if($adminCheck){
//ADMIN
            $leaves = Leave::where('status', null)
                ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                ->get();
        }elseif($directorCheck){
//DIRECTOR
            $leaves =  Leave::where('status', null)
                ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                ->join('role_user', 'users.id', '=', 'role_user.user_id')
                ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                ->where('role_user.role_id',4)
                ->orWhere('role_user.role_id',5)
                ->get();
        } elseif($managerCheck) {
            $dept = Auth::user()->department;
            $position = Auth::user()->position;
            $fdDepts = array('Accounts', 'I.T.', 'Internal Audit', 'Customs', 'SADC Accounts','Directors');
            $techdDepts = array('Operations', 'Roadgrip', 'Tyres and Tarps', 'Human Resources', 'Engineering','Horses Workshop');
            $opsHod = array('Beitbridge', 'Chirundu', 'Victoria Falls', 'Forbes');
            $engHod = array('Trailers', 'Sales');
            $accHod = array('Stores', 'Diesel');
            $mdDepts = array('Directors');

            if ($position == 'Finance Director') {
                $leaves = Leave::whereIn('leaves.department', $fdDepts)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','4')
                    ->get();
            }
            elseif ($position == 'Technical Director') {
                $leaves = Leave::whereIn('leaves.department', $techdDepts)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','4')
                    ->get();
            }
            elseif ($position == 'Operations Manager') {
                $leaves = Leave::whereIn('leaves.department', $opsHod)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','4')
                    ->orWhere('leaves.department', $dept)
                    ->where('role_user.role_id','!=','4')
                    ->where('status', null)
                    ->get();
            }
            elseif ($position == 'Engineering Manager') {
                $leaves = Leave::whereIn('leaves.department', $engHod)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','4')
                    ->orWhere('leaves.department', $dept)
                    ->where('role_user.role_id','!=','4')
                    ->where('status', null)
                    ->get();
            }
            elseif ($position == 'Finance Manager') {
                $leaves = Leave::whereIn('leaves.department', $accHod)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','4')
                    ->orWhere('leaves.department', $dept)
                    ->where('role_user.role_id','!=','4')
                    ->where('status', null)
                    ->get();

            }
            elseif ($position == 'Managing Director') {
                $leaves = Leave::whereIn('leaves.department', $mdDepts)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','=','5')
                    ->get();
            }
            else{
                $department = AUth::user()->department;
                $leaves = Leave::where('leaves.department', $department)
                    ->where('status', null)
                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                    ->select('users.first_name','users.last_name','leaves.id','leaves.paynumber','leaves.type_of_leave','leaves.days_taken','leaves.date_from','leaves.date_to','leaves.created_at','leaves.status')
                    ->where('role_user.role_id','!=','4')
                    ->where('role_user.role_id','!=','5')
                    ->get();
            }

        }
        return View('leaves.manage-leave', compact('leaves'));
    }

    public function create(){
        $user = Auth::user();

        $det = $user->roles()->where('name', 'Admin')->exists();

        if($det) {
            $data = DB::table("users")
                ->where('deleted_at', '=', null)
                ->get();
            $leave_type = DB::table("leavetypes")->get();
        } else {
            $data = DB::table("users")
                ->where('department', '=', $user->department)
                ->where('deleted_at', '=', null)
                ->get();
            $leave_type = DB::table("leavetypes")->get();
        }

        return view('leaves.create ', compact('data', 'leave_type'));
    }


    /**
     * Fetch Leave Calendar for entire department.
     *
     * @param string $token The token
     *
     * @return Redirect
     */

    public function getLeaveCalendar() {
        $leave_list = [];
        $department = AUth::user()->department;
        $leaves = Leave::where('department', $department)
            ->where('status', 1)
            ->get();

        if($leaves->count()){
            foreach ($leaves as $key => $leave) {

                $leave_list[] = Calendar::event(
                    $leave->applier_name,
                    true,
                    new \DateTime($leave->date_from),
                    new \DateTime($leave->date_to.' +1 day'),
                    [
                        'paynumber' => $leave->paynumber,
                    ]
                );
            }
        }
        $calendar_details = Calendar::addEvents($leave_list);

        return view('leaves.leave-calendar', compact('calendar_details') );
    }

    public function store(Request $request) {
        $user = Auth::user();
        $paynumber = $user->paynumber;

        $specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')
            ->where('paynumber','=',$paynumber)
            ->where('status','=',1)
            ->whereYear('created_at', '=', date('Y'))
            ->sum('days_taken');

        $sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')
            ->where('paynumber','=',$paynumber)
            ->where('status','=',1)
            ->whereYear('created_at', '=', date('Y'))
            ->sum('days_taken');

        $studycount = \App\Models\Leave::where('type_of_leave','=','Study')
            ->where('paynumber','=',$paynumber)
            ->where('status','=',1)
            ->whereYear('created_at', date('Y'))
            ->sum('days_taken');
            
        if ($user->gender == 'Female') {
            $maternityCount = \App\Models\Leave::where('type_of_leave','=','Maternity')
                ->where('paynumber','=',$paynumber)
                ->where('status','=',1)
                ->whereYear('created_at', date('Y'))
                ->sum('days_taken');
        }

        if ($user->hasRole('director') OR $user->hasRole('manager')) { // you can pass an id or slug
            $managerDirectorCheck = true;
        } else{
            $managerDirectorCheck = false;
        }

        $date1 = strtotime($request->date_from);
        $date2 = strtotime($request->date_to);

        
            if($request->type_of_leave == 'Annual' OR $request->type_of_leave == 'Cash in Lieu of Leave (CILL)' OR $request->type_of_leave == 'Off Day' OR $request->type_of_leave == 'Sick' OR $request->type_of_leave == 'Maternity') {

                $start = new DateTime($request->date_from);
                $end = new DateTime($request->date_to);

                $end->modify('+1 day');

                $interval = $end->diff($start);

                $days = $interval->days;

                $period = new DatePeriod($start, new DateInterval('P1D'), $end);

                $holidays = array('2022-01-01', '2022-02-21', '2022-04-15', '2022-04-16', '2022-04-17', '2022-04-18', '2022-05-02', '2020-05-25', '2022-08-10', '2022-09-11',
                    '2022-12-22', '2022-12-25', '2022-12-26', '2022-12-27');

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
        ]);

        $data = DB::table("users")->where('paynumber', '=', $request->paynumber)->first();

        $request->date_from = date('Y-m-d', strtotime($request->date_from));
        $request->date_to = date('Y-m-d', strtotime($request->date_to));

        if($managerDirectorCheck){
            $appliya = User::where('paynumber','=', $request->paynumber)->first();

            if (strpos($appliya->position, 'Assistant') === 0){
                $approvers = DB::table('departments')
                    ->join('users', function ($join) {
                        $join->on('users.paynumber', '=', 'departments.manager');
                    })
                    ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'departments.department')
                    ->where('departments.department', '=', $request->department)
                    ->get();
            } else {

                $fdDepts = array('Accounts', 'I.T.', 'Internal Audit', 'Customs', 'SADC Accounts','Directors');
                $techdDepts = array('Operations', 'Roadgrip', 'Tyres and Tarps', 'Human Resources', 'Engineering','Horses Workshop');
                $opsHod = array('Beitbridge', 'Chirundu', 'Victoria Falls', 'Forbes');
                $engHod = array('Trailers', 'Sales');
                $accHod = array('Stores', 'Diesel');
                $mdDepts = array('Directors');

                if (in_array($request->department, $fdDepts)) {
                    $approvers = DB::table('users')
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '=', 'Finance Director')
                        ->get();
                } elseif (in_array($request->department, $techdDepts)) {
                    $approvers = DB::table('users')
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '=', 'Technical Director')
                        ->get();
                } elseif (in_array($request->department, $opsHod)) {
                    $approvers = DB::table('users')
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '=', 'Operations Manager')
                        ->get();
                } elseif (in_array($request->department, $engHod)) {
                    $approvers = DB::table('users')
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '=', 'Engineering Manager')
                        ->get();
                } elseif (in_array($request->department, $accHod)) {
                    $approvers = DB::table('users')
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '=', 'Finance Manager')
                        ->get();
                } elseif (in_array($request->department, $mdDepts)) {
                    $approvers = DB::table('users')
                        ->join('role_user', function ($join) {
                            $join->on('users.id', '=', 'role_user.user_id');
                        })
                        ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'users.department')
                        ->where('users.position', '!=', $appliya->position)
                        ->where('role_user.role_id', '=', 5)
                        ->get();
                }
            }

        }else{
            $approvers = DB::table('departments')
                ->join('users', function ($join) {
                    $join->on('users.paynumber', '=', 'departments.manager')
                        ->orOn('users.paynumber', '=', 'departments.asst_manager');
                })
                ->select('users.paynumber', 'users.first_name', 'users.last_name', 'users.email', 'departments.department')
                ->where('departments.department', '=', $request->department)
                ->get();
        }

        if($request->type_of_leave == 'Compassionate'){
            if ($days_taken > (12 - $specialCount)){
                return redirect('/leaves/create')->with('error', 'According to the law, you are only allowed 12 Special Leave days in a calendar year.');
            } else{
                if($user->leave_days >= 1 && $user->leave_days >= $days_taken){
                    $leave = Leave::create([
                        'paynumber' => $request->input('paynumber'),
                        'type_of_leave' => $request->input('type_of_leave'),
                        'days_taken' => $days_taken,
                        'date_from' => $request->date_from,
                        'date_to' => $request->date_to,
                        'applied_by' => $request->input('applied_by'),
                        'applier_name' => $request->input('applier_name'),
                        'department' => $request->input('department'),
                        'address' => $request->input('address'),
                        'mobile' => $request->input('mobile'),
                    ]);
                    $leave->save();
                }else{
                    return redirect('/leaves/create')->with('error', 'You have Exceeded The Number Of Days You Can Apply');
                }

                try {
                    foreach ($approvers as $authorizer){
                        $applicant = User::where('paynumber','=',$request->paynumber)->first(); //Systems Applications Administrator Finance Manager

                        $details = [
                            'greeting' => 'Good day, ' . $authorizer->first_name,
                            'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which needs your approval. The leave request has the following information: ',
                            'body1'=> $leave->type_of_leave,
                            'body2' => $leave->days_taken,
                            'body3' => $leave->date_from,
                            'body4' => $leave->date_to,
                            'body5' => 'You can approve this request by clicking Approve : ',
                            'approveURL' => 'http://leave.whelson.net.za/leaves/emailapprove/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                            'rejectURL' => 'http://leave.whelson.net.za/leaves/emailreject/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                            'body6'=> 'You can reject this request straightaway:',
                            'id' => $leave->id
                        ];

                        Mail::to($authorizer->email)->send(new LeaveApproval($details));
                    }

                } catch (\Exception $exception){
                    echo 'Error - '.$exception;
                }
            }
        } elseif ($request->type_of_leave == 'Sick'){
            
            if($user->sick_days >= 0.5 && $user->sick_days >= $days_taken){
                $leave=new Leave();
                if($request->file('file')){
                    $file=$request->file('file');
                    $filename=time().'.'.$file->getClientOriginalExtension();
                    $request->file->move('documents/', $filename);
                } 
                $leave = Leave::create([
                    'paynumber' => $request->input('paynumber'),
                    'type_of_leave' => $request->input('type_of_leave'),
                    'days_taken' => $days_taken,
                    'date_from' => $request->date_from,
                    'date_to' => $request->date_to,
                    'applied_by' => $request->input('applied_by'),
                    'applier_name' => $request->input('applier_name'),
                    'department' => $request->input('department'),
                    'address' => $request->input('address'),
                    'mobile' => $request->input('mobile'),
                ]);
                $leave->file = $filename;
                $leave->save();
            }else{
                return redirect('/leaves/create')->with('error', 'You have Exceeded The Number Of Days You Can Apply');
            }
            // $leave = Leave::create([
            //     'paynumber' => $request->input('paynumber'),
            //     'type_of_leave' => $request->input('type_of_leave'),
            //     'days_taken' => $days_taken,
            //     'date_from' => $request->date_from,
            //     'date_to' => $request->date_to,
            //     'applied_by' => $request->input('applied_by'),
            //     'applier_name' => $request->input('applier_name'),
            //     'department' => $request->input('department'),
            //     'address' => $request->input('address'),
            //     'mobile' => $request->input('mobile'),
            // ]);
            // $leave->save();
        
            try {
                foreach ($approvers as $authorizer){
                    $applicant = User::where('paynumber','=',$request->paynumber)->first(); //Systems Applications Administrator Finance Manager

                    $details = [
                        'greeting' => 'Good day, ' . $authorizer->first_name,
                        'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which needs your approval. The leave request has the following information: ',
                        'body1'=> $leave->type_of_leave,
                        'body2' => $leave->days_taken,
                        'body3' => $leave->date_from,
                        'body4' => $leave->date_to,
                        'body5' => 'You can approve this request by clicking Approve : ',
                        'approveURL' => 'http://leave.whelson.net.za/leaves/emailapprove/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'rejectURL' => 'http://leave.whelson.net.za/leaves/emailreject/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'body6'=> 'You can reject this request straightaway:',
                        'id' => $leave->id
                    ];

                    Mail::to($authorizer->email)->send(new LeaveApproval($details));
                }

            } catch (\Exception $exception){
                echo 'Error - '.$exception;
            }
        }elseif ($request->type_of_leave == 'Maternity'){
            if (Auth::user()->gender == "Male"){
                return redirect('/leaves/create')->with('error', 'Male Employees Are Not Allowed To Take Maternity Leaves.');
            } else {
                
                if ($user->maternity >= 0.5 && $user->maternity >= $days_taken) {
                    $leave = Leave::create([
                        'paynumber' => $request->input('paynumber'),
                        'type_of_leave' => $request->input('type_of_leave'),
                        'days_taken' => $days_taken,
                        'date_from' => $request->date_from,
                        'date_to' => $request->date_to,
                        'applied_by' => $request->input('applied_by'),
                        'applier_name' => $request->input('applier_name'),
                        'department' => $request->input('department'),
                        'address' => $request->input('address'),
                        'mobile' => $request->input('mobile'),
                    ]);
                    $leave->save();
                } else {
                    return redirect('/leaves/create')->with('error', 'You have Exceeded The Number Of Days You Can Apply');
                }

                try {
                        foreach ($approvers as $authorizer){
                            $applicant = User::where('paynumber','=',$request->paynumber)->first(); //Systems Applications Administrator Finance Manager

                            $details = [
                                'greeting' => 'Good day, ' . $authorizer->first_name,
                                'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which needs your approval. The leave request has the following information: ',
                                'body1'=> $leave->type_of_leave,
                                'body2' => $leave->days_taken,
                                'body3' => $leave->date_from,
                                'body4' => $leave->date_to,
                                'body5' => 'You can approve this request by clicking Approve : ',
                                'approveURL' => 'http://leave.whelson.net.za/leaves/emailapprove/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                                'rejectURL' => 'http://leave.whelson.net.za/leaves/emailreject/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                                'body6'=> 'You can reject this request straightaway:',
                                'id' => $leave->id
                            ];

                            Mail::to($authorizer->email)->send(new LeaveApproval($details));
                        }

                    } catch (\Exception $exception){
                        echo 'Error - '.$exception;
                    }
            }
        }elseif ($request->type_of_leave == 'Study'){
            
            if ($user->study_leave_days >= 0.5 && $user->study_leave_days >= $days_taken) {
                $leave = Leave::create([
                    'paynumber' => $request->input('paynumber'),
                    'type_of_leave' => $request->input('type_of_leave'),
                    'days_taken' => $days_taken,
                    'date_from' => $request->date_from,
                    'date_to' => $request->date_to,
                    'applied_by' => $request->input('applied_by'),
                    'applier_name' => $request->input('applier_name'),
                    'department' => $request->input('department'),
                    'address' => $request->input('address'),
                    'mobile' => $request->input('mobile'),
                ]);
                $leave->save();
            } else {
                return redirect('/leaves/create')->with('error', 'You have Exceeded The Number Of Days You Can Apply');
            }

            try {
                foreach ($approvers as $authorizer){
                    $applicant = User::where('paynumber','=',$request->paynumber)->first(); //Systems Applications Administrator Finance Manager

                    $details = [
                        'greeting' => 'Good day, ' . $authorizer->first_name,
                        'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which needs your approval. The leave request has the following information: ',
                        'body1'=> $leave->type_of_leave,
                        'body2' => $leave->days_taken,
                        'body3' => $leave->date_from,
                        'body4' => $leave->date_to,
                        'body5' => 'You can approve this request by clicking Approve : ',
                        'approveURL' => 'http://leave.whelson.net.za/leaves/emailapprove/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'rejectURL' => 'http://leave.whelson.net.za/leaves/emailreject/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'body6'=> 'You can reject this request straightaway:',
                        'id' => $leave->id
                    ];

                    Mail::to($authorizer->email)->send(new LeaveApproval($details));
                }

            } catch (\Exception $exception){
                echo 'Error - '.$exception;
            }
        } else {
            if($user->leave_days >= 0.5 && $user->leave_days >= $days_taken){
                $leave = Leave::create([
                    'paynumber' => $request->input('paynumber'),
                    'type_of_leave' => $request->input('type_of_leave'),
                    'days_taken' => $days_taken,
                    'date_from' => $request->date_from,
                    'date_to' => $request->date_to,
                    'applied_by' => $request->input('applied_by'),
                    'applier_name' => $request->input('applier_name'),
                    'department' => $request->input('department'),
                    'address' => $request->input('address'),
                    'mobile' => $request->input('mobile'),
                ]);

                $leave->save();
            }else{
                return redirect('/leaves/create')->with('error', 'You have Exceeded The Number Of Days You Can Apply');
            }

            try {
                foreach ($approvers as $authorizer){
                    $applicant = User::where('paynumber','=',$request->paynumber)->first(); //Systems Applications Administrator Finance Manager

                    $details = [
                        'greeting' => 'Good day, ' . $authorizer->first_name,
                        'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which needs your approval. The leave request has the following information: ',
                        'body1'=> $leave->type_of_leave,
                        'body2' => $leave->days_taken,
                        'body3' => $leave->date_from,
                        'body4' => $leave->date_to,
                        'body5' => 'You can approve this request by clicking Approve : ',
                        'approveURL' => 'http://leave.whelson.net.za/leaves/emailapprove/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'rejectURL' => 'http://leave.whelson.net.za/leaves/emailreject/'.$authorizer->paynumber.'/'.$authorizer->first_name.'/'.$authorizer->last_name.'/'.$leave->id,
                        'body6'=> 'You can reject this request straightaway:',
                        'id' => $leave->id
                    ];

                    Mail::to($authorizer->email)->send(new LeaveApproval($details));
                }

            } catch (\Exception $exception){
                echo 'Error - '.$exception;
            }

        }

        return redirect('/leaves/')->with('success', 'Leave form has been sent to your Manager for Approval. Please download the form after the leave has been approved and submit to Human Resources.');
    }

    public function forceSendEmail(){

        $details = [
            'greeting' => 'Good day, Alfred',
            'body' => 'Trust Ushe (73) has submitted a leave request which needs your approval. The leave request has the following information:',
            'body1'=> 'Type of Leave: Annual',
            'body2' => 'Days Requested: 3',
            'body3' => 'Date From: 2020-09-16',
            'body4'=> 'Date To: 2020-09-18.',
            'actionText' => 'Approve Request',
            'actionURL' => url('approve.leave'),
            'id' => '54'
        ];

        $admin = User::where('email','=','achiremba@whelson.co.zw')->first();

        //echo $admin;
        $admin->notify(new LeaveApprovalEmail($details)); // CHANGE THIS RIGHT HERE

        return redirect()->back()->with('success', 'Email has been sent successfully.');

    }

      public function mailApprove($paynumber, $first_name, $last_name, $leave_id) {

        $unidentified = array("5A","2A","237");
        
        $current_date_time = Carbon::now()->toDateTimeString();

        $leave = Leave::findOrFail($leave_id);
        if ($leave->status == null){
            $leave->approved_when = $current_date_time;
            $leave->status = '1';
            $leave->approved_by = $paynumber;
            $leave->approver_name = $first_name.' '. $last_name;
            $leave->save();

            $user = User::where('paynumber','=',$leave->paynumber)->first();

            $details = [
                'greeting' => 'Good day, ' . $user->first_name,
                'body' => 'Your leave request for '.$leave->days_taken . ' day(s) from '. $leave->date_from. ' to ' .$leave->date_to. ' was approved. Enjoy your rest.' ,

            ];

            if($leave->type_of_leave =='Annual' OR $leave->type_of_leave =='Cash in Lieu of Leave (CILL)' OR $leave->type_of_leave =='Off Day') {
                $mazuvaAtorwa = $leave->days_taken;
                $mazuvaAsara = $user->leave_days - $mazuvaAtorwa;

                DB::table('users')
                    ->where('paynumber', $leave->paynumber)
                    ->update([
                        'leave_days' => $mazuvaAsara,
                    ]);

            } elseif ($leave->type_of_leave == 'Sick') {
                $sickdaystaken = $leave->days_taken;
                $sickdaysleft = $user->sick_days - $sickdaystaken;

                DB::table('users')
                    ->where('paynumber', $leave->paynumber)
                    ->update([
                        'sick_days' => $sickdaysleft,
                    ]);
            }elseif($leave->type_of_leave == 'Maternity') {
                $maternitydaystaken = $leave->days_taken;
                $maternitydaysleft = $user->maternity - $maternitydaystaken;

                DB::table('users')
                    ->where('paynumber', $leave->paynumber)
                    ->update([
                        'maternity' => $maternitydaysleft,
                    ]);
            }elseif($leave->type_of_leave == 'Study') {
                $studydaystaken = $leave->days_taken;
                $studydaysleft = $user->study_leave_days - $studydaystaken;

                DB::table('users')
                    ->where('paynumber', $leave->paynumber)
                    ->update([
                        'study_leave_days' => $studydaysleft,
                    ]);
            }

            if (!in_array($user->paynumber,$unidentified))
            {
                Mail::to($user->email)->cc(["payrolladmin@whelson.co.zw"])->send(new LeaveHasApproved($details));
            } else {
                Mail::to($user->email)->send(new LeaveHasApproved($details));
            }

            

        } else{
            return redirect('/blade-response')->with('error','This request has been processed already by '.$leave->approver_name);
        }

        return redirect('/blade-response')->with('success','Leave Request approved successfully');
    }

    /**
     * Approve a leave.
     *
     * @param string $token The token
     *
     * @return Redirect
     */
    public function activate($leave_id) {

        $unidentified = array("5A","2A","237");

        $current_date_time = Carbon::now()->toDateTimeString();

        $leave = Leave::findOrFail($leave_id);
        $leave->approved_when = $current_date_time;
        $leave->status = '1';
        $leave->approved_by = Auth::user()->paynumber;
        $leave->approver_name = Auth::user()->first_name.' '. Auth::user()->last_name;
        $leave->save();

        $user = User::where('paynumber','=',$leave->paynumber)->first();

        $details = [
            'greeting' => 'Good day, ' . $user->first_name,
            'body' => 'Your leave request for '.$leave->days_taken . ' day(s) from '. $leave->date_from. ' to ' .$leave->date_to. ' was approved. You can now download your leave form.' ,

        ];

        if($leave->type_of_leave =='Annual' OR $leave->type_of_leave =='Cash in Lieu of Leave (CILL)' OR $leave->type_of_leave =='Off Day') {
            $mazuvaAtorwa = $leave->days_taken;
            $mazuvaAsara = $user->leave_days - $mazuvaAtorwa;

            //DB::table("users")->update('leave_days')->first();
            DB::table('users')
                ->where('paynumber', $leave->paynumber)
                ->update([
                    'leave_days' => $mazuvaAsara,
                ]);
        }elseif($leave->type_of_leave == 'Sick') {
            $sickdaystaken = $leave->days_taken;
            $sickdaysleft = $user->sick_days - $sickdaystaken;

            DB::table('users')
                ->where('paynumber', $leave->paynumber)
                ->update([
                    'sick_days' => $sickdaysleft,
                ]);
        }elseif($leave->type_of_leave == 'Maternity') {
            $maternitydaystaken = $leave->days_taken;
            $maternitydaysleft = $user->maternity - $maternitydaystaken;

            DB::table('users')
                ->where('paynumber', $leave->paynumber)
                ->update([
                    'maternity' => $maternitydaysleft,
                ]);
        }elseif($leave->type_of_leave == 'Study') {
            $studydaystaken = $leave->days_taken;
            $studydaysleft = $user->study_leave_days - $studydaystaken;

            DB::table('users')
                ->where('paynumber', $leave->paynumber)
                ->update([
                    'study_leave_days' => $studydaysleft,
                ]);
        }

        if (!in_array($user->paynumber,$unidentified))
        {
            Mail::to($user->email)->cc(["payrolladmin@whelson.co.zw"])->send(new LeaveHasApproved($details));

        } else {

            Mail::to($user->email)->send(new LeaveHasApproved($details));
        }
 

        return redirect()->route('manage-leave')->with('success','Request approved successfully');
    }

    /**
     * Reject a leave.
     *
     * @param string $token The token
     *
     * @return Redirect
     */
    public function reject($leave_id) {
    $leave = Leave::findOrFail($leave_id);
        $leave->status = '2';
        $leave->save();

        $details = [
            'greeting' => 'Good day, ' . $leave->first_name,
            'body' => 'Your leave request for '.$leave->days_taken . ' day(s) from '. $leave->date_from. ' to ' .$leave->date_to. ' was rejected. Please contact your manager for any further enquiries.' ,

        ];

        $user = User::where('paynumber','=',$leave->paynumber)->first();
        //dd($user->email);
        $user->notify(new LeaveApproved($details));

        return redirect()->route('manage-leave')->with('success','Request has been rejected successfully.');
    }

    public function mailReject($paynumber, $first_name, $last_name, $leave_id) {
        $current_date_time = Carbon::now()->toDateTimeString();

        $leave = Leave::findOrFail($leave_id);
        if ($leave->status == '1'){
            $leave->approved_when = $current_date_time;
            $leave->status = '2';
            $leave->approved_by = $paynumber;
            $leave->approver_name = $first_name.' '. $last_name;
            $leave->save();

            $user = User::where('paynumber','=',$leave->paynumber)->first();

            $details = [
                'greeting' => 'Good day, ' . $leave->first_name,
                'body' => 'Your leave request for '.$leave->days_taken . ' day(s) from '. $leave->date_from. ' to ' .$leave->date_to. ' was rejected. Please contact your manager for any further enquiries.' ,

            ];

            $user->notify(new LeaveApproved($details));
        } else{
            return redirect('/blade-response')->with('error','This request has been processed already by '.$first_name.' '. $last_name);
        }

        return redirect('/blade-response')->with('success','Request has been rejected successfully.');
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
        $leave = Leave::findOrFail($id);
        $user = User::where('paynumber', $leave->paynumber )->first();

        return view('leaves.show-leave',compact('leave', 'user'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $leave = Leave::findOrFail($id);

        $leave->save();
        $leave->delete();

        return redirect('leaves')->with('success', 'Leave request deleted successfully.');
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
     $date = Carbon::now();
        $leave = Leave::findorFail($id);
        $leaves= DB::table('leaves as l')
        ->join('users as u', function($join) {
            $join->on('u.paynumber', '=', 'l.paynumber');
        })
       
        ->select('u.paynumber','u.first_name','u.last_name','u.leave_days',DB::raw('sum(l.days_taken) as totalDaysTaken'))
        ->where('l.paynumber', $leave->paynumber  )
        ->where('l.type_of_leave','=', 'Annual')
        ->groupBy('u.paynumber','u.first_name','u.last_name','u.leave_days')
        ->get();
       
        $sickleaves = DB::table('leaves as l')
        ->join('users as u', function($join) {
            $join->on('u.paynumber', '=', 'l.paynumber');
        })
        
        ->select('u.paynumber','u.first_name','u.last_name','u.leave_days',DB::raw('sum(l.days_taken) as totalDaysTaken'))
        ->where('l.paynumber', $leave->paynumber  )
        ->where('l.type_of_leave','=', 'Sick')
        ->whereYear('l.created_at', '=', Carbon::parse($date)->format('Y'))
        ->groupBy('u.paynumber','u.first_name','u.last_name','u.leave_days')
        ->get();

        try {
            $mpdf = new \Mpdf\Mpdf([
                'margin_left' => 10,
                'margin_right' => 10,
                'margin_top' => 48, //48
                'margin_bottom' => 25,
                'margin_header' => 10, //10
                'margin_footer' => 10,
            ]);

            $html = \View::make('leaves.form' ,compact('leaves','sickleaves'))->with('leave',$leave);
            $html = $html->render();

            $mpdf->SetProtection(array('print'));
            $mpdf->SetTitle("Whelson Leave Form");
            $mpdf->SetAuthor("Tadiwanashe Dauya");
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
        $leaves = DB::table('leaves as l')
            ->join('users as u', function($join) {
                $join->on('u.paynumber', '=', 'l.paynumber');
            })
            ->select('u.paynumber','u.first_name','u.last_name','u.leave_days',DB::raw('sum(l.days_taken) as totalDaysTaken'))
            ->where('l.status','=', 1)
            ->groupBy('u.paynumber','u.first_name','u.last_name','u.leave_days')
            ->get();

        return View('leaves.leave-administration', compact('leaves' ));
    }

    public function getLeaveBalances() {
        $users = User::all();

        return View('leaves.leave-balances', compact('users'));
    }

    // Leave Balances
    public function getAnualLeaveBalances() {
        $users = User::all();

        return View('leaves.anual-leave-balances', compact('users'));
    }

    public function getSickLeaveBalances() {
        $users = User::all();

        return View('leaves.sick-leave-balances', compact('users'));
    }

    public function getMaternityLeaveBalances() {
        $users = User::all();

        return View('leaves.maternity-leave-balances', compact('users'));
    }

    public function getStudyLeaveBalances() {
        $users = User::all();

        return View('leaves.study-leave-balances', compact('users'));
    }

    public function getCompasionateLeaveBalances() {
        $users = User::all();

        return View('leaves.compasionate-leave-balances', compact('users'));
    }
    // Leave Balances

    public function getRecords() {
        return View('leaves.leave-records');
    }

    public function getLeaveRecords() {

        $from = $_POST['date_from'];
        $to = $_POST['date_to'];

        $start = date('Y-m-d h:m:s', strtotime($from));
        $end = date('Y-m-d h:m:s', strtotime($to));

        $leaves = DB::table('leaves as l')
            ->join('users as u', function($join) {
                $join->on('u.paynumber', '=', 'l.paynumber');
            })
            ->select('u.first_name','u.last_name','u.paynumber','l.id','l.type_of_leave','l.days_taken','l.date_from','l.date_to')
            ->whereBetween('l.created_at', [$start, $end])
            ->where('l.deleted_at','=', null)
            ->groupBy('u.first_name','u.last_name','u.paynumber','l.id','l.type_of_leave','l.days_taken','l.date_from','l.date_to')
            ->get();

        return View('leaves.leave-records', compact('leaves', 'from', 'to'));
    }

    public function bulkUpdater(){
        $users = User::all();

        foreach ( $users as $user) {

            DB::table("users")
                ->where('id','=',$user->id)
                ->update([
                    'updated_at' => now(),
                    'leave_days' => $user->leave_days+1.833
                ]);
        }

        return redirect()->back()->with('success', 'Leave days updated successfully');
    }
}
