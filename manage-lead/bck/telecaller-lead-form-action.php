<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$core = new Core();
$conn = $dbh->_connectodb();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();
if(isset($_POST['Name']))
{
	$ManageLead = new ManageLead($conn);
	$form_action = $_POST['form_action'];
	$data = $_POST;
	if($form_action == 'Add')
	{
		$data['CreatedBy'] = $_SESSION['pp_email'];	
		$admission_details = $ManageLead->getTelecallerLeadsDetails($data);

		$IMSSetting = new IMSSetting($conn);
		$DefaultStatus = $IMSSetting->GetDefaultTelecallerLeadStatus($conn);
		
		if($admission_details['exist'] == false)
		{
			$data['DefaultStatus'] = $DefaultStatus;
			$data['LeadSource'] = "Telecaller";
			$data['AssignedTo'] = $_SESSION['UserID'];
			$response = $ManageLead->InsertTelecallerLeadForm($data);
			$response['error'] = false;
			$response['message'] = "Lead Added";
		}
		else
		{
			 
			$response['error'] = true;
			$response['message'] = "Lead Already Exist.";
		}
	}
	else
	{
		$response = $ManageLead->UpdateTelecallerLeadsDetails($data);
		$response['error'] = false;
	    $response['message'] = "Lead Details Updated !";
	}
	
}
else
{
	$response['error'] = true;
	$response['message'] = "Some Technical Error ! Please Try Again.";
}
echo json_encode($response);
?>