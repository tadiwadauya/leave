<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class LeaveWeeklyReport extends Mailable
{
    use Queueable, SerializesModels;

    public $leaves;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($leaves)
    {
        return $this->leaves = $leaves;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.weekly-report');
    }
}
