<?php

	require_once('../include/autoloader.inc.php');
	$filename = 'lead_data.csv';
	$file = fopen($filename, 'r');
	$data = array();
	$dbh = new Dbh();
	$conn = $dbh->_connectodb();
	$utility = new Utility($conn);
	$lead_obj = new Managelead($conn);
	$IMSSetting = new IMSSetting($conn);
	$DefaultStatus = $IMSSetting->GetDefaultLeadStatus();
	$core = new Core();
	$i=0;
	while (($row = fgetcsv($file)) !== false) 
	{
		$i++;
		if($i<=1)
   		{
   			continue;
   		}
   		$data = array();
   		echo "<hr>";
   		echo "i = ".$i."<br>";
   		
   		$data['Center'] = 3;
   		$data['Name'] = $row[0];
   		$data['PhoneNumber'] = $row[1];
   		$data['Mode'] = "Offline";
   		$data['Courses'] = 32;
   		$data['AssignedTo'] = 22;
   		$data['CreatedBy'] = "gayatri@praajasv.com";
   		$data['LeadSource'] = "Excel";
   		$data['DefaultStatus'] = $DefaultStatus;
   		print_r($data);
   		$lead_details = $lead_obj->getLeadsDetails($data);
		if($lead_details['exist'] == false)
		{
			echo "<br>Lead To Be Added<br>";
			$response = $lead_obj->InsertLeadForm($data);
			$response['error'] = false;
			$response['message'] = "Lead Added and Assigned !";
		}
		else
		{
			echo "<br>Lead Already Exist<br>";
			$response['error'] = true;
			$response['message'] = "Lead Already Exist.";
		}
   		
   		
   		if($i==1000)
   		{
   			break;
   		}
   	}

?>	