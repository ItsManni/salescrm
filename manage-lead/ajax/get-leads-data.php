<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$core->setTimeZone();
$BranchID = -1;
if(isset($_POST['BranchID']))
{
  $BranchID = $_POST['BranchID'];
}
$data['BranchID'] = $BranchID;

// Initialize an empty array to store the last 7 dates
$lastSevenDates = array();

// Get today's date
$currentDate = new DateTime();

// Loop to get the last 7 dates
for ($i = 1; $i < 8; $i++) {
    // Clone the current date
    $date = clone $currentDate;
    // Subtract $i days from the current date
    $date->modify("-$i day");
    // Format the date as per your requirement
    $formattedDate = $date->format('Y-m-d');
    // Push the formatted date into the array
    $lastSevenDates[] = $formattedDate;
}

// Reverse the array to get the dates in descending order
$lastSevenDates = array_reverse($lastSevenDates);

$ManageLead = new ManageLead($conn);
$data = $ManageLead->GetLeadsDataGroupedByDate($lastSevenDates,$data);
$graph_data = array();
$graph_data_labels = array();
foreach ($data as $created_date => $total) {
  array_push($graph_data,$total);
  array_push($graph_data_labels,$created_date);
}
$response['chart_data']['data'] = $graph_data;
$response['chart_data']['data_labels'] = $graph_data_labels;
echo json_encode($response);
?>