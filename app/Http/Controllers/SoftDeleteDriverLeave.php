<?php

namespace App\Http\Controllers;

use App\Models\DriverLeave;
use Illuminate\Http\Request;

class SoftDeleteDriverLeave extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Get Soft Deleted User.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public static function getDeletedDriverLeave($id)
    {
        $leaves = DriverLeave::onlyTrashed()->where('id', $id)->get();
        if (count($leaves) != 1) {
            return redirect('/driverleaves/deleted/')->with('error', 'Nothing Found.');
        }

        return $leaves[0];
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $leaves = DriverLeave::onlyTrashed()->get();

        return View('driverleaves.show-deleted-driverleaves', compact('leaves'));
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
        $leave = self::getDeletedDriverLeave($id);

        return view('driverleaves.show-deleted-driverleave', compact('leave'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int                      $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $leave = self::getDeletedDriverLeave($id);
        $leave->restore();

        return redirect('/driverleaves/')->with('success', 'Driver Leave request has been successfully been restored.');
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
        $leave = self::getDeletedDriverLeave($id);
        $leave->forceDelete();

        return redirect('/driverleaves/deleted/')->with('success', 'Driver Leave record has been terminated.');
    }
}
