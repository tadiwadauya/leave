<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
| Middleware options can be located in `app/Http/Kernel.php`
|
*/

// Homepage Route
use App\Models\User;

Route::group(['middleware' => ['web', 'checkblocked']], function () {
    Route::get('/', 'WelcomeController@welcome')->name('welcome');
});

Route::get('/testing', 'WelcomeController@testing');

// Authentication Routes
Auth::routes();

// Public Routes
Route::group(['middleware' => ['web', 'activity', 'checkblocked']], function () {

    // Activation Routes
    Route::get('/activate', ['as' => 'activate', 'uses' => 'Auth\ActivateController@initial']);

    Route::get('/activate/{token}', ['as' => 'authenticated.activate', 'uses' => 'Auth\ActivateController@activate']);
    Route::get('/activation', ['as' => 'authenticated.activation-resend', 'uses' => 'Auth\ActivateController@resend']);
    Route::get('/exceeded', ['as' => 'exceeded', 'uses' => 'Auth\ActivateController@exceeded']);

    // Socialite Register Routes
    Route::get('/social/redirect/{provider}', ['as' => 'social.redirect', 'uses' => 'Auth\SocialController@getSocialRedirect']);
    Route::get('/social/handle/{provider}', ['as' => 'social.handle', 'uses' => 'Auth\SocialController@getSocialHandle']);

    // Route to for user to reactivate their user deleted account.
    Route::get('/re-activate/{token}', ['as' => 'user.reactivate', 'uses' => 'RestoreUserController@userReActivate']);

    Route::get('/getTitles/{department}','JobTitleController@getTitles')->name('jobtitles.fetch');

    Route::get('/leave-pdf/{id}','LeaveController@generatePdf')->name('generate.pdf');

    Route::get('/driver-leave-pdf/{id}','DriverLeaveController@generatePdf')->name('generate.driverpdf');
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {

    // Activation Routes
    Route::get('/activation-required', ['uses' => 'Auth\ActivateController@activationRequired'])->name('activation-required');
    Route::get('/logout', ['uses' => 'Auth\LoginController@logout'])->name('logout');
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'twostep', 'checkblocked']], function () {

    //  Homepage Route - Redirect based on user role is in controller.
    Route::get('/home', ['as' => 'public.home',   'uses' => 'UserController@index']);

    // Show users profile - viewable by other users.
    Route::get('profile/{username}', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@show',
    ]);
});

// Registered, activated, and is current user routes.
Route::group(['middleware' => ['auth', 'activated', 'currentUser', 'activity', 'twostep', 'checkblocked']], function () {

    // User Profile and Account Routes
    Route::resource(
        'profile',
        'ProfilesController', [
            'only' => [
                'show',
                'edit',
                'update',
                'create',
            ],
        ]
    );
    Route::put('profile/{username}/updateUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserAccount',
    ]);
    Route::put('profile/{username}/updateUserPassword', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserPassword',
    ]);
    Route::delete('profile/{username}/deleteUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@deleteUserAccount',
    ]);

    // Route to show user avatar
    Route::get('images/profile/{id}/avatar/{image}', [
        'uses' => 'ProfilesController@userProfileAvatar',
    ]);

    // Route to upload user avatar.
    Route::post('avatar/upload', ['as' => 'avatar.upload', 'uses' => 'ProfilesController@upload']);
});

// Registered, activated, and is admin routes.
Route::group(['middleware' => ['auth', 'activated', 'role:admin', 'activity', 'twostep', 'checkblocked']], function () {
    Route::resource('/users/deleted', 'SoftDeletesController', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('users', 'UsersManagementController', [
        'names' => [
            'index'   => 'users',
            'destroy' => 'user.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

    Route::post('search-users', 'UsersManagementController@search')->name('search-users');

    Route::resource('themes', 'ThemesManagementController', [
        'names' => [
            'index'   => 'themes',
            'destroy' => 'themes.destroy',
        ],
    ]);

    Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
    Route::get('routes', 'AdminDetailsController@listRoutes');
    Route::get('active-users', 'AdminDetailsController@activeUsers');
});

Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {
    Route::resource('/leaves/deleted', 'SoftDeleteLeave', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('leaves', 'LeaveController', [
        'names' => [
            'index'   => 'leaves',
            'destroy' => 'leave.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

    Route::get('manage-leave', 'LeaveController@manage')->name('manage-leave');

    Route::get('leave-records', 'LeaveController@getRecords')->name('leave-records');

    Route::post('leave-records', 'LeaveController@getLeaveRecords')->name('records.leave');

    Route::get('leave-calendar', 'LeaveController@getLeaveCalendar')->name('leave-calendar');

    Route::get('leave-administration', 'LeaveController@getLeaveAdmin')->name('leave.admin');

    Route::get('leave-balances', 'LeaveController@getLeaveBalances')->name('leave.balances');

    Route::get('/leaves/approve/{id}', ['as' => 'approve.leave', 'uses' => 'LeaveController@activate']);
    Route::get('/leaves/reject/{id}', ['as' => 'reject.leave', 'uses' => 'LeaveController@reject']);

    Route::get('bulk-update', 'LeaveController@bulkUpdater')->name('bulk.update');

    Route::get('force-email', 'LeaveController@forceSendEmail')->name('force.mail');
});

Route::get('/leaves/emailapprove/{name}/{first_name}/{last_name}/{id}', ['as' => 'mailapprove.leaverequest', 'uses' => 'LeaveController@mailApprove']);
Route::get('/leaves/emailreject/{name}/{first_name}/{last_name}/{id}', ['as' => 'mailreject.leaverequest', 'uses' => 'LeaveController@mailReject']);
Route::get('/leaves/emailpreview/{name}/{first_name}/{last_name}/{id}', ['as' => 'mailpreview.leaverequest', 'uses' => 'LeaveController@mailPreview']);
Route::get('/blade-response', 'WelcomeController@requestResponse');

Route::get('testmail', function () {
    $leave = \App\Models\Leave::find(113);

    $fmuser = User::where('paynumber','=',237)->first();

    $applicant = User::where('paynumber','=','5A')->first();

    $details = [
        'greeting' => 'Good day, ' . $fmuser->first_name,
        'body' => $applicant->first_name . ' ' . $applicant->last_name . ' has submitted a leave request which has not been actioned. Please, attend to it. The leave request has the following information: ',
        'body1'=> $leave->type_of_leave,
        'body2' => $leave->days_taken,
        'body3' => $leave->date_from,
        'body4' => $leave->date_to,
        'body5' => 'You can approve this request by clicking Approve : ',
        'approveURL' => 'http://192.168.1.242:8080/whelsonleave/leaves/emailapprove/'.$fmuser->paynumber.'/'.$fmuser->first_name.'/'.$fmuser->last_name.'/'.$leave->id,
        'rejectURL' => 'http://192.168.1.242:8080/whelsonleave/leaves/emailreject/'.$fmuser->paynumber.'/'.$fmuser->first_name.'/'.$fmuser->last_name.'/'.$leave->id,
        'body6'=> 'You can reject this request straightaway:',
        'id' => $leave->id
    ];

    Mail::to($fmuser->email)->send(new App\Mail\LeaveApproval($details));
});

Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {
    Route::resource('/driverleaves/deleted', 'SoftDeleteDriverLeave', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('driverleaves', 'DriverLeaveController', [
        'names' => [
            'index'   => 'driverleaves',
            'destroy' => 'driverleave.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

    Route::get('manage-driver-leave', 'DriverLeaveController@manage')->name('manage-driverleave');

    Route::get('driver-leave-records', 'DriverLeaveController@getRecords')->name('driverleave-records');

    Route::post('driver-leave-records', 'DriverLeaveController@getLeaveRecords')->name('records.driverleave');

    Route::get('driver-leave-administration', 'DriverLeaveController@getLeaveAdmin')->name('driverleave.admin');

    Route::get('driver-leave-balances', 'DriverLeaveController@getLeaveBalances')->name('driverleave.balances');

    Route::get('/driverleaves/approve/{id}', ['as' => 'approve.driverleave', 'uses' => 'DriverLeaveController@activate']);
    Route::get('/driverleaves/reject/{id}', ['as' => 'reject.driverleave', 'uses' => 'DriverLeaveController@reject']);

    Route::get('driver-bulk-update', 'DriverLeaveController@bulkUpdater')->name('bulk.updatedrivers');

    Route::get('/getPrevLeaves/{paynumber}','DriverLeaveController@fetchPrevLeaves')->name('prevleaves.fetch');
});


// Registered, activated, and is admin routes.
Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {
    Route::resource('/departments/deleted', 'SoftDeletesController', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('departments', 'DepartmentController', [
        'names' => [
            'index'   => 'departments',
            'destroy' => 'department.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

    Route::get('departmental-users', 'DepartmentController@getDepartmentalUsers')->name('departmental-users');

});

Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {

    Route::resource('jobtitles', 'JobTitleController', [
        'names' => [
            'index'   => 'jobtitles',
            'destroy' => 'jobtitle.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

});

Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {

    Route::resource('/drivers/deleted', 'SoftDeleteDriver', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('drivers', 'DriverController', [
        'names' => [
            'index'   => 'drivers',
            'destroy' => 'driver.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);

});

Route::redirect('/php', '/phpinfo', 301);
