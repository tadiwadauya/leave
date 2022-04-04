<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use jeremykenedy\LaravelRoles\Models\Role;
use Auth;

class DepartmentController extends Controller
{
    //

    public function index() {
        $pagintaionEnabled = config('usersmanagement.enablePagination');
        if ($pagintaionEnabled) {
            $departments = Department::paginate(config('usersmanagement.paginateListSize'));
            $users = User::paginate(config('usersmanagement.paginateListSize'));
        } else {
            $departments = Department::all();
            $users = User::all();
        }

        return View('departments.departments', compact('departments', 'users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $users = User::all();

        $data = [
            'users' => $users,
        ];

        return view('departments.create')->with($data);
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
                'department'                  => 'required|max:255|unique:departments',
                'manager'             => 'required|max:255|unique:departments',
                'asst_manager'            => 'max:255',
            ],
            [
                'department.unique'         => 'Department already exists',
                'manager.unique'         => 'A user can only manage one department at a time.',
                'asst_manager.unique'         => 'A user can only manage one department at a time.',
                'department.required'       => 'We obviously need a name for a department.',
                'manager.required' => 'We need a Manager name, or someone who will approve requests.',

            ]
        );

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $department = Department::create([
            'department'             => $request->input('department'),
            'manager'             => $request->input('manager'),
            'asst_manager'       => $request->input('asst_manager'),
        ]);

        $department->save();

        return redirect('departments')->with('success', 'Successfully created department.');
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
        $department = Department::find($id);
        $users = User::find($id);

        return view('departments.show-department',compact('department','users'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $department = Department::findOrFail($id);

        $data = [
            'department'        => $department,
        ];

        return view('departments.edit-department')->with($data);
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

        $department = Department::find($id);

        $validator = Validator::make($request->all(),
            [
                'department'                  => 'required|max:255',
                'manager'             => 'required|max:255',
                'asst_manager'            => 'max:255',
            ],
            [
                'manager.unique'         => 'A user can only manage one department at a time.',
                'asst_manager.unique'         => 'A user can only manage one department at a time.',
                'department.required'       => 'We obviously need a name for a department.',
                'manager.required' => 'We need a Manager name, or someone who will approve requests.',

            ]
        );

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $department->department = $request->input('department');
        $department->manager = $request->input('manager');
        $department->asst_manager = $request->input('asst_manager');

        $department->save();

        return back()->with('success', 'Successfully updated department.');
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
        $department = Department::findOrFail($id);

        $department->delete();

        return redirect('departments')->with('success', 'Successfully deleted department');
    }

    public function getDepartmentalUsers(){
        $users = User::where('department','=',Auth::user()->department)->get();
        $roles = Role::all();

        return View('departments.departmental-users', compact('users', 'roles'));
    }

}
