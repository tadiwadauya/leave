<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;


class monthlyAccrual extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'monthly:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Accrue leave days monthly by 1.833 in the users table.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $users = User::all();

        foreach ( $users as $user) {
            DB::table("users")
            ->where('id','=',$user->id)
                ->update(['updated_at' => now(), 'leave_days' => $user->leave_days+1.833]);
        }
        
        Log::info('Monthly Leave accruals processed successfully.');
    }
}
