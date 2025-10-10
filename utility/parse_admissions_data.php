<?php
	require_once('../include/autoloader.inc.php');
	$filename = 'admission-2.csv';
	$file = fopen($filename, 'r');
	$data = array();
	$dbh = new Dbh();
	$conn = $dbh->_connectodb();
	$utility = new Utility($conn);
	while (($row = fgetcsv($file)) !== false) 
	{
   		$FirstName = $row[0];
   		$LastName = $row[0];
   		$Title = $row[0];
   		$Company = $row[0];
   		$Email = $row[0];
   		$Seniority = $row[0];
   		$PhoneNumber = $row[0];
   		$FirstName = $row[0];
   	}

?>	