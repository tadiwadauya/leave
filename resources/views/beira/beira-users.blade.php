@extends('layouts.app')

@section('template_title')
    Beira Users List
@endsection

@section('template_linked_css')
    @if (config('usersmanagement.enabledDatatablesJs'))
        <link rel="stylesheet" type="text/css" href="{{ asset('css/dataTables.bootstrap4.min.css') }}">
    @endif
    <style type="text/css" media="screen">
        .users-table {
            border: 0;
        }

        .users-table tr td:first-child {
            padding-left: 15px;
        }

        .users-table tr td:last-child {
            padding-right: 15px;
        }

        .users-table.table-responsive,
        .users-table.table-responsive table {
            margin-bottom: 0;
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">

                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                Showing All Beira Users
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-ellipsis-v fa-fw" aria-hidden="true"></i>
                                    <span class="sr-only">
                                        {!! trans('usersmanagement.users-menu-alt') !!}
                                    </span>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="{{ url('/users/create') }}">
                                        <i class="fa fa-fw fa-user-plus" aria-hidden="true"></i>
                                        {!! trans('usersmanagement.buttons.create-new') !!}
                                    </a>
                                    @permission('delete.users')
                                        <a class="dropdown-item" href="{{ url('/users/deleted') }}">
                                            <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                            {!! trans('usersmanagement.show-deleted-users') !!}
                                        </a>
                                    @endpermission
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">

                                <thead class="thead">
                                    <tr>

                                        <th>Pay Number</th>
                                        <th>Username</th>
                                        <th class="hidden-xs">{!! trans('usersmanagement.users-table.email') !!}</th>
                                        <th class="hidden-xs">{!! trans('usersmanagement.users-table.fname') !!}</th>
                                        <th class="hidden-xs">{!! trans('usersmanagement.users-table.lname') !!}</th>
                                        <th>Gender</th>
                                        <th>{!! trans('usersmanagement.users-table.role') !!}</th>
                                        <th>Department</th>
                                        <th>Position</th>
                                        <th>Leave Days</th>
                                        <th>{!! trans('usersmanagement.users-table.actions') !!}</th>
                                        @permission('delete.users')
                                            <th class="no-search no-sort"></th>
                                        @endpermission
                                        <th class="no-search no-sort"></th>
                                    </tr>
                                </thead>
                                <tbody id="users_table">
                                    @foreach ($users as $user)
                                        <tr>

                                            <td>{{ $user->paynumber }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td class="hidden-xs"><a href="mailto:{{ $user->email }}"
                                                    title="email {{ $user->email }}">{{ $user->email }}</a></td>
                                            <td class="hidden-xs">{{ $user->first_name }}</td>
                                            <td class="hidden-xs">{{ $user->last_name }}</td>
                                            <td class="hidden-xs">{{ $user->gender }}</td>
                                            <td>
                                                @foreach ($user->roles as $user_role)
                                                    @if ($user_role->name == 'User')
                                                        @php $badgeClass = 'primary' @endphp
                                                    @elseif ($user_role->name == 'Manager')
                                                        @php $badgeClass = 'secondary' @endphp
                                                    @elseif ($user_role->name == 'Director')
                                                        @php $badgeClass = 'warning' @endphp
                                                    @elseif ($user_role->name == 'Admin')
                                                        @php $badgeClass = 'danger' @endphp
                                                    @else
                                                        @php $badgeClass = 'default' @endphp
                                                    @endif
                                                    <span
                                                        class="badge badge-{{ $badgeClass }}">{{ $user_role->name }}</span>
                                                @endforeach
                                            </td>
                                            <td>{{ $user->department }}</td>
                                            <td>{{ $user->position }}</td>
                                            <td> {{ $user->leave_days }}</td>
                                            @permission('delete.users')
                                                <td>
                                                    {!! Form::open(['url' => 'users/' . $user->id, 'class' => '', 'data-toggle' => 'tooltip', 'title' => 'Delete']) !!}
                                                    {!! Form::hidden('_method', 'DELETE') !!}
                                                    {!! Form::button(trans('usersmanagement.buttons.delete'), [
                                                        'class' => 'btn btn-danger btn-sm',
                                                        'type' => 'button',
                                                        'style' => 'width: 100%;',
                                                        'data-toggle' => 'modal',
                                                        'data-target' => '#confirmDelete',
                                                        'data-title' => 'Delete User',
                                                        'data-message' => 'Are you sure you want to delete this user ?',
                                                    ]) !!}
                                                    {!! Form::close() !!}
                                                </td>
                                            @endpermission
                                            <td>
                                                <a class="btn btn-sm btn-success btn-block"
                                                    href="{{ URL::to('users/' . $user->id) }}" data-toggle="tooltip"
                                                    title="Show">
                                                    {!! trans('usersmanagement.buttons.show') !!}
                                                </a>
                                            </td>
                                            <td>
                                                <a class="btn btn-sm btn-info btn-block"
                                                    href="{{ URL::to('users/' . $user->id . '/edit') }}"
                                                    data-toggle="tooltip" title="Edit">
                                                    {!! trans('usersmanagement.buttons.edit') !!}
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tbody id="search_results"></tbody>
                                @if (config('usersmanagement.enableSearchUsers'))
                                    <tbody id="search_results"></tbody>
                                @endif

                            </table>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-delete')
@endsection

@section('footer_scripts')
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

    @include('scripts.datatables')

    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @if (config('usersmanagement.tooltipsEnabled'))
        @include('scripts.tooltips')
    @endif
    @if (config('usersmanagement.enableSearchUsers'))
        @include('scripts.search-users')
    @endif
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
@endsection
