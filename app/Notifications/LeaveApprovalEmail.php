<?php
/**
 * Created by PhpStorm.
 * User: Vincent Guyo
 * Date: 9/24/2019
 * Time: 13:57
 */

namespace App\Notifications;


use App\Models\Leave;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class LeaveApprovalEmail extends Notification
{
    use Queueable;

    private $new_leave_request;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($details) {
        $this->details = $details;
    }

    public function via($notifiable){
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable) {
        //dd($this->details['id']);
        return (new MailMessage)
            ->greeting($this->details['greeting'])
            ->line($this->details['body'])
            ->line($this->details['body1'])
            ->line($this->details['body2'])
            ->line($this->details['body3'])
            ->line($this->details['body4'])
            ->action($this->details['actionText'], route('approve.leave', $this->details['id']));

    }


}