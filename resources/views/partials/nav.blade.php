<nav class="navbar navbar-expand-md navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/home') }}">
            {!! config('app.name', trans('titles.app')) !!}
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            <span class="sr-only">{!! trans('titles.toggleNav') !!}</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            {{-- Left Side Of Navbar --}}
            <ul class="navbar-nav mr-auto">
                @role('admin')
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Users
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('users', 'users/' . Auth::user()->id, 'users/' . Auth::user()->id . '/edit') ? 'active' : null }}"
                                href="{{ url('/users') }}">
                                {!! trans('titles.adminUserList') !!}
                            </a>

                            <div class="dropdown-divider"></div>

                            <a class="dropdown-item {{ Request::is('users/beira/list') ? 'active' : null }}"
                                href="{{ url('/users/beira/list') }}">
                                Beira Users Administration
                            </a>

                            <div class="dropdown-divider"></div>

                            <a class="dropdown-item {{ Request::is('drivers', 'drivers/*') ? 'active' : null }}"
                                href="{{ url('/drivers') }}">
                                Drivers Administration
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('roles') || Request::is('permissions') ? 'active' : null }}"
                                href="{{ route('laravelroles::roles.index') }}">
                                {!! trans('titles.laravelroles') !!}
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Departments
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ url('/departments') }}">
                                Departments
                            </a>


                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Job Titles
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ url('/jobtitles') }}">
                                Job Titles
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('leaves') || Request::is('leaves') ? 'active' : null }}"
                                href="{{ url('/leaves') }}">
                                Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('manage-leave') || Request::is('manage-leave') ? 'active' : null }}"
                                href="{{ route('manage-leave') }}">
                                Manage Leave Requests
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-calendar') || Request::is('leave-calendar') ? 'active' : null }}"
                                href="{{ route('leave-calendar') }}">
                                Leave Calendar
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-records') || Request::is('leave-records') ? 'active' : null }}"
                                href="{{ route('leave-records') }}">
                                Leave Records
                            </a>
                            {{-- <div class="dropdown-divider"></div>
                        <a class="dropdown-item {{ (Request::is('leave-balances') || Request::is('leave-balances')) ? 'active' : null }}" href="{{ route('leave.balances') }}">
                            Leave Balances
                        </a> --}}
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-administration') || Request::is('leave-administration') ? 'active' : null }}"
                                href="{{ route('leave.admin') }}">
                                Administration
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Driver Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('driverleaves') || Request::is('driverleaves') ? 'active' : null }}"
                                href="{{ url('/driverleaves') }}">
                                Driver Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('manage-driver-leave') || Request::is('manage-driver-leave') ? 'active' : null }}"
                                href="{{ route('manage-driverleave') }}">
                                Manage Driver Leave Requests
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-records') || Request::is('driver-leave-records') ? 'active' : null }}"
                                href="{{ route('driverleave-records') }}">
                                Driver Leave Records
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-balances') || Request::is('driver-leave-balances') ? 'active' : null }}"
                                href="{{ route('driverleave.balances') }}">
                                Driver Leave Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-administration') || Request::is('driver-leave-administration') ? 'active' : null }}"
                                href="{{ route('driverleave.admin') }}">
                                Administration
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leave Balances
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('anual-leave-balances') || Request::is('anual-leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances.anual') }}">
                                Annual Balances
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('sick-leave-balances') || Request::is('sick-leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances.sick') }}">
                                Sick Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('martenity-leave-balances') || Request::is('martenity-leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances.martenity') }}">
                                Maternity Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('study-leave-balances') || Request::is('study-leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances.study') }}">
                                Study Balances
                            </a>
                            {{-- <div class="dropdown-divider"></div>
                        <a class="dropdown-item {{ (Request::is('leave-balances') || Request::is('leave-balances')) ? 'active' : null }}" href="{{ route('leave.balances') }}">
                            Compasionate Balances
                        </a> --}}

                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Settings
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('roles') || Request::is('permissions') ? 'active' : null }}"
                                href="{{ route('laravelroles::roles.index') }}">
                                {!! trans('titles.laravelroles') !!}
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('themes', 'themes/create') ? 'active' : null }}"
                                href="{{ url('/themes') }}">
                                {!! trans('titles.adminThemesList') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('logs') ? 'active' : null }}"
                                href="{{ url('/logs') }}">
                                {!! trans('titles.adminLogs') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('activity') ? 'active' : null }}"
                                href="{{ url('/activity') }}">
                                {!! trans('titles.adminActivity') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('phpinfo') ? 'active' : null }}"
                                href="{{ url('/phpinfo') }}">
                                {!! trans('titles.adminPHP') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('routes') ? 'active' : null }}"
                                href="{{ url('/routes') }}">
                                {!! trans('titles.adminRoutes') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('active-users') ? 'active' : null }}"
                                href="{{ url('/active-users') }}">
                                {!! trans('titles.activeUsers') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('blocker') ? 'active' : null }}"
                                href="{{ route('laravelblocker::blocker.index') }}">
                                {!! trans('titles.laravelBlocker') !!}
                            </a>
                        </div>
                    </li>
                @endrole

                @role('director')
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Department
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ url('/departmental-users') }}">
                                My Department Users
                            </a>


                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('leaves/create') ? 'active' : null }}"
                            href="{{ url('/leaves/create') }}" id="navbarDropdown" role="button">
                            Apply for Leave
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('leaves') || Request::is('leaves') ? 'active' : null }}"
                                href="{{ url('/leaves') }}">
                                Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('manage-leave') || Request::is('manage-leave') ? 'active' : null }}"
                                href="{{ route('manage-leave') }}">
                                Manage Leave Requests
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-calendar') || Request::is('leave-calendar') ? 'active' : null }}"
                                href="{{ route('leave-calendar') }}">
                                Leave Calendar
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-records') || Request::is('leave-records') ? 'active' : null }}"
                                href="{{ route('leave-records') }}">
                                Leave Records
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-balances') || Request::is('leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances') }}">
                                Leave Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-administration') || Request::is('leave-administration') ? 'active' : null }}"
                                href="{{ route('leave.admin') }}">
                                Administration
                            </a>
                        </div>
                    </li>
                @endrole

                @role('manager')
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Department
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ url('/departmental-users') }}">
                                My Department Users
                            </a>


                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('leaves/create') ? 'active' : null }}"
                            href="{{ url('/leaves/create') }}" id="navbarDropdown" role="button">
                            Apply for Leave
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('leaves') || Request::is('leaves') ? 'active' : null }}"
                                href="{{ url('/leaves') }}">
                                Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('manage-leave') || Request::is('manage-leave') ? 'active' : null }}"
                                href="{{ route('manage-leave') }}">
                                Manage Leave Requests
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-calendar') || Request::is('leave-calendar') ? 'active' : null }}"
                                href="{{ route('leave-calendar') }}">
                                Leave Calendar
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-records') || Request::is('leave-records') ? 'active' : null }}"
                                href="{{ route('leave-records') }}">
                                Leave Records
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-balances') || Request::is('leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances') }}">
                                Leave Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-administration') || Request::is('leave-administration') ? 'active' : null }}"
                                href="{{ route('leave.admin') }}">
                                Administration
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Driver Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('driverleaves') || Request::is('driverleaves') ? 'active' : null }}"
                                href="{{ url('/driverleaves') }}">
                                Driver Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('manage-driver-leave') || Request::is('manage-driver-leave') ? 'active' : null }}"
                                href="{{ route('manage-driverleave') }}">
                                Manage Driver Leave Requests
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-records') || Request::is('driver-leave-records') ? 'active' : null }}"
                                href="{{ route('driverleave-records') }}">
                                Driver Leave Records
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-balances') || Request::is('driver-leave-balances') ? 'active' : null }}"
                                href="{{ route('driverleave.balances') }}">
                                Driver Leave Balances
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('driver-leave-administration') || Request::is('driver-leave-administration') ? 'active' : null }}"
                                href="{{ route('driverleave.admin') }}">
                                Administration
                            </a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        @php
                            // $user = Auth::user();
                            // $notifications = \App\Models\Leave::where([['status', '=', '1'], ['status', '=', '2'], ['department', $user->department]])->get();
                            // $count = count($notifications);
                            
                            $dept = Auth::user()->department;
                            $position = Auth::user()->position;
                            $fdDepts = ['Accounts', 'I.T.', 'Internal Audit', 'Customs', 'SADC Accounts', 'Directors'];
                            $techdDepts = ['Operations', 'Roadgrip', 'Tyres and Tarps', 'Human Resources', 'Engineering', 'Horses Workshop'];
                            $opsHod = ['Beitbridge', 'Chirundu', 'Victoria Falls', 'Forbes'];
                            $engHod = ['Trailers', 'Sales'];
                            $accHod = ['Stores', 'Diesel'];
                            $mdDepts = ['Directors'];
                            
                            if ($position == 'Finance Director') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $fdDepts)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '4')
                                    ->get();
                            } elseif ($position == 'Technical Director') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $techdDepts)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '4')
                                    ->get();
                            } elseif ($position == 'Operations Manager') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $opsHod)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '4')
                                    ->orWhere('leaves.department', $dept)
                                    ->where('role_user.role_id', '!=', '4')
                                    ->where('status', null)
                                    ->get();
                            } elseif ($position == 'Engineering Manager') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $engHod)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '4')
                                    ->orWhere('leaves.department', $dept)
                                    ->where('role_user.role_id', '!=', '4')
                                    ->where('status', null)
                                    ->get();
                            } elseif ($position == 'Finance Manager') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $accHod)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '4')
                                    ->orWhere('leaves.department', $dept)
                                    ->where('role_user.role_id', '!=', '4')
                                    ->where('status', null)
                                    ->get();
                            } elseif ($position == 'Managing Director') {
                                $leaves = \App\Models\Leave::whereIn('leaves.department', $mdDepts)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '=', '5')
                                    ->get();
                            } else {
                                $department = AUth::user()->department;
                                $leaves = \App\Models\Leave::where('leaves.department', $department)
                                    ->where('status', null)
                                    ->join('users', 'users.paynumber', '=', 'leaves.paynumber')
                                    ->join('role_user', 'users.id', '=', 'role_user.user_id')
                                    ->select('users.first_name', 'users.last_name', 'leaves.id', 'leaves.applier_name', 'leaves.paynumber', 'leaves.type_of_leave', 'leaves.days_taken', 'leaves.date_from', 'leaves.date_to', 'leaves.created_at', 'leaves.status')
                                    ->where('role_user.role_id', '!=', '4')
                                    ->where('role_user.role_id', '!=', '5')
                                    ->get();
                            }
                            
                            $count = count($leaves);
                        @endphp
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Notifications @if ($count > 0)
                                <span
                                    style="background-color: red; padding:4px; border-radius:50%; color:white;">{{ $count }}</span>
                            @endif
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            @if ($count > 0)
                                @foreach ($leaves as $l)
                                    <a class="dropdown-item" href="{{ url('/manage-leave') }}">
                                        <h6>
                                            {{ $l->type_of_leave }} - {{ $l->applier_name }}
                                        </h6>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                @endforeach
                            @else
                                <a class="dropdown-item" href="#">
                                    No Notifications
                                </a>
                            @endif

                        </div>
                    </li>
                @endrole

                @role('hrmaingate')
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('leaves/create') ? 'active' : null }}"
                            href="{{ url('/leaves/create') }}" id="navbarDropdown" role="button">
                            Apply for Leave
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('leaves') || Request::is('leaves') ? 'active' : null }}"
                                href="{{ url('/leaves') }}">
                                Leave List
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-records') || Request::is('leave-records') ? 'active' : null }}"
                                href="{{ route('leave-records') }}">
                                Leave Records
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-balances') || Request::is('leave-balances') ? 'active' : null }}"
                                href="{{ route('leave.balances') }}">
                                Leave Balances
                            </a>

                        </div>
                    </li>
                @endrole

                @role('user')
                    <li class="nav-item">
                        <a class="nav-link {{ Request::is('leaves/create') ? 'active' : null }}"
                            href="{{ url('/leaves/create') }}" id="navbarDropdown" role="button">
                            Apply for Leave
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Leaves
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('leaves') || Request::is('leaves') ? 'active' : null }}"
                                href="{{ url('/leaves') }}">
                                Leave List
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ Request::is('leave-calendar') || Request::is('leave-calendar') ? 'active' : null }}"
                                href="{{ route('leave-calendar') }}">
                                Leave Calendar
                            </a>

                        </div>
                    </li>
                    @if (auth()->user()->department == 'Operations')
                        <li class="nav-item">
                            <a class="nav-link {{ Request::is('driverleaves/create') ? 'active' : null }}"
                                href="{{ url('/driverleaves/create') }}" id="navbarDropdown" role="button">
                                Apply Driver Leave
                            </a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Drivers
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item {{ Request::is('driverleaves') || Request::is('driverleaves') ? 'active' : null }}"
                                    href="{{ url('/driverleaves') }}">
                                    Driver Leave List
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item {{ Request::is('drivers', 'drivers/*') ? 'active' : null }}"
                                    href="{{ url('/drivers') }}">
                                    Drivers Administration
                                </a>

                            </div>

                        </li>
                    @endif

                @endrole
            </ul>

            {{-- Right Side Of Navbar --}}
            <ul class="navbar-nav ml-auto">
                {{-- Authentication Links --}}
                @guest
                    <li><a class="nav-link" href="{{ route('login') }}">{{ trans('titles.login') }}</a></li>
                    <li><a class="nav-link" href="{{ route('register') }}">{{ trans('titles.register') }}</a></li>
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            @if (Auth::User()->profile && Auth::user()->profile->avatar_status == 1)
                                <img src="{{ Auth::user()->profile->avatar }}" alt="{{ Auth::user()->name }}"
                                    class="user-avatar-nav">
                            @else
                                <div class="user-avatar-nav"></div>
                            @endif
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ Request::is('profile/' . Auth::user()->name, 'profile/' . Auth::user()->name . '/edit') ? 'active' : null }}"
                                href="{{ url('/profile/' . Auth::user()->name) }}">
                                {!! trans('titles.profile') !!}
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>
