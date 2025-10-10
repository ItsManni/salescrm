<?php
    @session_start();
	require_once('../../include/autoloader.inc.php');
	$filename = $_FILES['student_csv']['tmp_name'];
	$file = fopen($filename, 'r');
	$data = array();
	$dbh = new Dbh();
	$conn = $dbh->_connectodb();
	$Admission = new Admission($conn);
	$i=0;$k=1;
	$response_data = array();
	$message = "Import done !";
	while (($row = fgetcsv($file)) !== false) 
	{
		$i++;
		if($i<=1)
   		{
   			continue;
   		}
   		$response = $Admission->ImportStudentAdmissionData($row);
   		if($response == false)
   		{
   			$j=$i-1;
   			if($k==1)
   			{
   				
   				$message =" Row $j can't be imported. Data Error <br>";
   			}
   			else
   			{
   				$message = $message." Row $j can't be imported. Data Error <br>";
   			}
   			$k++;
   		}

   	}

   	$response_data['message'] = $message;
   echo json_encode($response_data)
?>	