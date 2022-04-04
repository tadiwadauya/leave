<?php 

/*
$start = new DateTime('2020-01-9');
$end = new DateTime('2020-01-18');
// otherwise the  end date is excluded (bug?)
$end->modify('+1 day');

$interval = $end->diff($start);

// total days
$days = $interval->days;

// create an iterateable period of date (P1D equates to 1 day)
$period = new DatePeriod($start, new DateInterval('P1D'), $end);

// best stored as array, so you can add more than one
$holidays = array('2020-01-01', '2020-02-21', '2020-04-10', '2020-04-11', '2020-04-12', '2020-04-13', '2020-04-18', '2020-05-01', '2020-05-25', '2020-08-10', '2020-08-11', '2020-12-22', '2020-12-25', '2020-12-26');

foreach($period as $dt) {
    $curr = $dt->format('D');

    // substract if Saturday or Sunday
    if ($curr == 'Sat' || $curr == 'Sun') {
        $days--;
    }

    // (optional) for the updated question
    elseif (in_array($dt->format('Y-m-d'), $holidays)) {
        $days--;
    }
}


echo $days; // 4
*/

?>