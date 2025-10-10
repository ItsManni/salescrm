<?php

	require_once('../include/autoloader.inc.php');
	$filename = 'admission_sheet_final_1.csv';
	$file = fopen($filename, 'r');
	$data = array();
	$dbh = new Dbh();
	$conn = $dbh->_connectodb();
	$utility = new Utility($conn);
	$admission_obj = new Admission($conn);
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
   		
   		
   		$data['StudentName'] = $row[1];
   		$data['StudentPhoneNumber'] = $data['PhoneNumber'] = $row[2];
   		$data['AdmissionDate'] = $core->convertDateFormat($row[3]);
   		$data['FeestobePaid'] = $core->_RemoveSpaces($row[5]);
   		$data['StudentFee'] = $core->_RemoveSpaces($row[6]);
   		$data['Courses'] = $row[8];
   		$data['TotalStructuredFee'] = $core->_RemoveSpaces($row[7]);
   		$data['Mode'] = $row[9];
   		$data['BranchID'] = 1;
   		$data['PaymentMode'] = $row[11];
   		$data['CreatedBy'] = $row[13];
   		$data['Source'] = "parser";
   		$data['Batch'] = "AOC 1";
   		$data['ScholarshipProvided'] = $admission_obj->calculateScholarship($data);

   		print_r($data);
   		$admission_details = $admission_obj->getAdmissionDetails($data);
		
		if($admission_details['exist'] == true)
	    {	
	    	echo "<br> data already exist <br>";
	    	continue;
	    }
	    else
	    {
	    	$response_insert_admission_details = $admission_obj->InsertAdmissionForm($data);
	    	$AdmissionID = $response_insert_admission_details['last_insert_id'];
	    	$Remarks = $row[4]."<br>".$row[11]."<br>".$row[15];
	    	$data['AdmissionID'] = $AdmissionID;
	    	$data['student_remark'] = $Remarks;
	    	$response = $admission_obj->AddStudentRemarkDispatch($data);
	    }
   		if($i==44)
   		{
   			break;
   		}
   	}

?>	