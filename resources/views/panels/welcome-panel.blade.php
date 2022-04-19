@php

    use jeremykenedy\LaravelRoles\Models\Role;

        $levelAmount = 'level';

        if (Auth::User()->level() >= 2) {
            $levelAmount = 'levels';

        }

        $departments = \App\Models\Department::count();

        $users = \App\Models\User::count();

        $deptusers = \App\Models\User::where('department','=',Auth::user()->department)->count();

        $leaves = \App\Models\Leave::count();

        $deptleaves = \App\Models\Leave::where('department','=',Auth::user()->department)->count();

        $unprocleaves = \App\Models\Leave::where('department','=',Auth::user()->department)->where('status','=',null)->count();

        $role_permissions = Role::with('permissions')->where('name','=',Auth::User()->roles->first()->name)->get();

        $myleaves = \App\Models\Leave::where('paynumber','=',Auth::user()->paynumber)->count();

$paynumber = AUth::user()->paynumber;

$specialCount = \App\Models\Leave::where('type_of_leave','=','Compassionate')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');

$sickCount = \App\Models\Leave::where('type_of_leave','=','Sick')->where('paynumber','=',$paynumber)->where('status','=',1)->whereYear('created_at', '=', date('Y'))->sum('days_taken');

$maternityCount = \App\Models\Leave::where('type_of_leave','=','Maternity')->where('paynumber','=',$paynumber)->where('status','=',1)->count();

@endphp

<div class="card">
    <div class="card-header @role('admin', true) bg-secondary text-white @endrole">

        Welcome {{ Auth::user()->name }}

        @if(Auth::user()->hasRole('admin'))
            <span class="pull-right badge badge-danger" style="margin-top:4px">
                Admin Access
            </span>
        @elseif(Auth::user()->hasRole('director'))
            <span class="pull-right badge badge-warning" style="margin-top:4px">
            Director Access
        </span>
            @elseif(Auth::user()->hasRole('manager'))
                <span class="pull-right badge badge-primary" style="margin-top:4px">
                Manager Access
            </span>
            @else
                <span class="pull-right badge badge-primary" style="margin-top:4px">
                User Access
            </span>
            @endif

    </div>
    <div class="card-body">

        @role(['admin', 'manager', 'director'])
        <p>
            Departments: {{$departments}}
        </p>
        <hr>

        <p>
            Registered Users: {{$users}}
        </p>
        <hr>

        <p>
            My Departmental Users : {{$deptusers}}
        </p>
        <hr>

        <p>
            Total Leave requests : {{$leaves}}
        </p>
        <hr>

        <p>
            My Departmental Leave Requests : {{$deptleaves}}
        </p>
        <hr>

        <p class="text-danger">
            Pending / Unprocessed Leave Requests: {{$unprocleaves}}
        </p>
        <hr>
        <p>
            Special/ Compassionate days taken: {{$specialCount}} / 12
        </p>
        <hr>
        <p>
            Sick days taken: {{$sickCount}} / 180
        </p>
        <hr>
        @if (Auth::user()->gender == "Female")
            <p>
                Maternity days taken: {{$maternityCount}} / 98
            </p>
        @endif
        <hr>

        <p>
            You have the following permissions:

            @foreach($role_permissions as $role)
                @foreach($role->permissions as $permission)
                    <span class="badge badge-primary margin-half margin-left-0">{{ $permission->name }}</span>
                @endforeach
            @endforeach

        </p>
        @endrole

        @role('user')
        <p>
            My Total Leave requests: {{$myleaves}}
        </p>
        <hr>
        <p>
            Special/ Compassionate days taken: {{$specialCount}} / 12
        </p>
        <hr>
        <p>
            Sick days taken: {{$sickCount}} / 180
        </p>
        <hr>
        @if (Auth::user()->gender == "Female")
            <p>
                Maternity days taken: {{$maternityCount}} / 98
            </p>
        @endif
        <hr>
        @endrole

    </div>
</div>
