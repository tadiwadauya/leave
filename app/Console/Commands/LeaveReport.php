<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use App\Mail\LeaveWeeklyReport;
use Illuminate\Support\Facades\Mail;
class LeaveReport extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'leave:report';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Weekly Report Schedule';

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
        $now = Carbon::now();
        $weekStartDate = $now->startOfWeek()->format('Y-m-d H:i');
        $weekEndDate = $now->endOfWeek()->format('Y-m-d H:i');
        $recipient = 'tdauya@whelson.co.zw';

        $leaves = DB::table('leaves')
            ->whereBetween('created_at', [$weekStartDate, $weekEndDate])
            ->get();

        try {

            Mail::to($recipient)->cc(["vmarufu@whelson.co.zw"])->send(new LeaveWeeklyReport($leaves));
            Log::info("Report has been send successfully.");

        } catch(\Exception $e) {
            Log::info($e);
        }
    }
}
