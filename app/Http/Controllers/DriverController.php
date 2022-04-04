<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use Illuminate\Http\Request;
use Validator;

class DriverController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $drivers = Driver::all();

        return view('drivers.drivers', compact('drivers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('drivers.add-driver');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),
            [
                'paynumber'             => 'required|max:10|unique:drivers',
                'full_name'            => 'required',
                'address'             => 'required',
                'cell_no'              => 'required|unique:drivers',
                'leave_days'            => 'required',
            ],
            [
                'paynumber.required'         => 'We need the paynumber of the driver for this to work.',
                'paynumber.unique'         => 'Pay Number is registered to another driver.',
                'full_name.required'       => 'We need the full name for the driver.',
                'address.required'      => 'Physical address is needed.',
                'cell_no.required'  => 'Phone number is required to create driver profile',
                'cell_no.unique'  => 'Phone number is registered to another driver.',
                'leave_days.required' =>'We need to know how many leave days the driver has currently. Use 0 if the driver is new.',
            ]
        );

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $driver = Driver::create([
            'paynumber'             => $request->input('paynumber'),
            'full_name'       => $request->input('full_name'),
            'address'            => $request->input('address'),
            'cell_no'            => $request->input('cell_no'),
            'leave_days'        => $request->input('leave_days'),
        ]);

        $driver->save();

        return redirect('drivers')->with('success', 'Driver added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Driver  $driver
     * @return \Illuminate\Http\Response
     */
    public function show(Driver $driver)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Driver  $driver
     * @return \Illuminate\Http\Response
     */
    public function edit(Driver $driver)
    {
        return view('drivers.edit-driver', compact('driver'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Driver  $driver
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $driver = Driver::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'paynumber'     => 'required|max:10|unique:drivers,paynumber,'.$driver->id,
            'full_name'     => 'required',
            'address'     => 'required',
            'cell_no'     => 'required|unique:drivers,cell_no,'.$driver->id,
            'leave_days'     => 'required',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }

        $driver->paynumber = $request->input('paynumber');
        $driver->full_name = $request->input('full_name');
        $driver->address = $request->input('address');
        $driver->cell_no = $request->input('cell_no');
        $driver->leave_days = $request->input('leave_days');

        $driver->save();

        return back()->with('success', 'Driver info updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Driver  $driver
     * @return \Illuminate\Http\Response
     */
    public function destroy(Driver $driver)
    {
        $driver->delete();

        return redirect('drivers')->with('success','Driver deleted');
    }
}
