<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use Illuminate\Http\Request;

class SoftDeleteDriver extends Controller
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
    public static function getDeletedDriver($id)
    {
        $drivers = Driver::onlyTrashed()->where('id', $id)->get();
        if (count($drivers) != 1) {
            return redirect('/drivers/deleted/')->with('error', 'Nothing Found.');
        }

        return $drivers[0];
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $drivers = Driver::onlyTrashed()->get();

        return View('drivers.show-deleted-drivers', compact('drivers'));
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
        $driver = self::getDeletedDriver($id);
        $driver->restore();

        return redirect('/drivers/')->with('success', 'Driver has been successfully been restored.');
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
        $driver = self::getDeletedDriver($id);
        $driver->forceDelete();

        return redirect('/drivers/deleted/')->with('success', 'Driver record has been terminated.');
    }
}
