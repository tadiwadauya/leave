<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\JobTitle;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class JobTitleController extends Controller
{
    public function __construct()
    {
        /*$this->middleware('auth');
        $this->middleware( 'manager')->only(['index','show']);*/
        //$this->middleware(['auth','admin']);
    }

    public function index() {

        $titles = JobTitle::all();

        return View('job-title.job-titles', compact('titles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $departments = Department::all();

        $data = [
            'departments' => $departments,
        ];

        return view('job-title.create-job-title')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        $validator = Validator::make($request->all(),
            [
                'department'           => 'required|max:255',
                'jobtitle'             => 'required|max:255',
            ],
            [
                'department.required'       => 'We obviously need a name for a department.',
                'jobtitle.required'         => 'We need a Job Title.',

            ]
        );

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $jobtitle = JobTitle::create([
            'department'             => $request->input('department'),
            'jobtitle'             => $request->input('jobtitle'),
        ]);

        $jobtitle->save();

        return redirect('jobtitles')->with('success', 'Successfully added Job Title.');
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
        $title = JobTitle::findorFail($id);

        return view('job-title.show-job-title',compact('title'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $title = JobTitle::findOrFail($id);
        $departments = Department::all();

        $data = [
            'title'        => $title,
            'departments'        => $departments,
        ];

        return view('job-title.edit-job-title')->with($data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int                      $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

        $title = JobTitle::findorFail($id);

        $validator = Validator::make($request->all(),
            [
                'department'           => 'required|max:255',
                'jobtitle'             => 'required|max:255',
            ],
            [
                'department.required'       => 'We obviously need a name for a department.',
                'jobtitle.required'         => 'We need a Job Title.',

            ]
        );

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $title->department = $request->input('department');
        $title->jobtitle = $request->input('jobtitle');

        $title->save();

        return back()->with('success', 'Successfully updated job title.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $title = JobTitle::findOrFail($id);

        $title->delete();

        return redirect('jobtitles')->with('success', 'Successfully deleted job title.');
    }

    //For fetching states
    public function getTitles($department)
    {
        $states = DB::table("job_titles")
            ->where("department",$department)
            ->pluck("jobtitle");

        return response()->json($states);
    }

    /*public function fetcher(){

            $titles_list = DB::table('job_titles')
                ->groupBy('department')
                ->get();
            return view('dynamic_dependent')->with('titles_list', $titles_list);

    }

    function fetch(Request $request)
    {
        $select = $request->get('select');
        $value = $request->get('value');
        $dependent = $request->get('dependent');
        $data = DB::table('jobtitles')
            ->where($select, $value)
            ->groupBy($dependent)
            ->get();
        $output = '<option value="">Select '.ucfirst($dependent).'</option>';
        foreach($data as $row)
        {
            $output .= '<option value="'.$row->$dependent.'">'.$row->$dependent.'</option>';
        }
        echo $output;
    }*/
}
