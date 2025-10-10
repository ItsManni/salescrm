<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$core = new Core();
$conn = $dbh->_connectodb();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();
if(isset($_POST))
{
	$IMSSetting = new IMSSetting($conn);
	$ManageLead_obj = new ManageLead($conn);
	$LeadID = $_POST['create_lead_telecaller_lead_id'];
	$telecaller_lead_data = $ManageLead_obj->GetTelecallerLeadsDetailsByID($LeadID);
	$data = $telecaller_lead_data;
	$data['Status'] = $IMSSetting->GetDefaultLeadStatus();
	$data['TelecallerFinalStatus'] = $IMSSetting->GetFinalTelecallerLeadStatus();
	$data['Center'] = $telecaller_lead_data['BranchID'];
	$data['AssignedTo'] = $_POST['create_lead_counsellor_id'];
	$data['TelecallerLeadID'] = $LeadID;
	$data['ActionType'] = "Telecaller Transfer";
	$data['Courses'] = $telecaller_lead_data['Course'];
	$data['CreatedBy'] = $_SESSION['pp_email'];

	$response = $ManageLead_obj->InsertLeadForm($data);
	if($response['error'] == false)
	{
		$response['message'] = "Lead Created and Transferred";
	}
	
}
else
{
	$response['error'] = true;
	$response['message'] = "Some Technical Error ! Please Try Again.";
}
echo json_encode($response);
?>