<?php

namespace App\Http\Controllers;

use App\Models\Leave;
use Illuminate\Http\Request;

class SoftDeleteLeave extends Controller
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
    public static function getDeletedLeave($id)
    {
        $leaves = Leave::onlyTrashed()->where('id', $id)->get();
        if (count($leaves) != 1) {
            return redirect('/leaves/deleted/')->with('error', 'Nothing Found.');
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
        $leaves = Leave::onlyTrashed()->get();

        return View('leaves.show-deleted-leaves', compact('leaves'));
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
        $leave = self::getDeletedLeave($id);

        //dd($leave);

        return view('leaves.show-deleted-leave', compact('leave'));
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
        $leave = self::getDeletedLeave($id);
        $leave->restore();

        return redirect('/leaves/')->with('success', 'Leave request has been successfully been restored.');
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
        $leave = self::getDeletedLeave($id);
        $leave->forceDelete();

        return redirect('/leaves/deleted/')->with('success', 'Leave record has been terminated.');
    }
}
