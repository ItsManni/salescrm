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
$IMSSetting = new IMSSetting($conn);
$all_lead_status = $IMSSetting->GetAllLeadStatus();
$status_array = $core->generateArraywithKeyName($all_lead_status,'Status');

$ManageLead = new ManageLead($conn);
$data = $ManageLead->GetLeadsDataGroupedByStatus($data);
$graph_data = array();
$graph_data_labels = array();
$graph_data_label_colors = array();
foreach ($data as $status => $total) {
  array_push($graph_data,$total);
  array_push($graph_data_labels,$status);
  array_push($graph_data_label_colors,$status_array[$status]['LeadColor']);
}
$response['chart_data']['data'] = $graph_data;
$response['chart_data']['data_labels'] = $graph_data_labels;
$response['chart_data']['data_label_color'] = $graph_data_label_colors;
echo json_encode($response);
?>