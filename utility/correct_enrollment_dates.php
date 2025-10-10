<?php
	require_once('../include/autoloader.inc.php');
	$filename = 'admission_sheet_final.csv';
	$file = fopen($filename, 'r');
	$data = array();
	$dbh = new Dbh();
	$conn = $dbh->_connectodb();
	$utility = new Utility($conn);
	$i=1;
	while (($row = fgetcsv($file)) !== false) 
	{
		$i++;
		if($i<=3)
   		{
   			continue;
   		}
   		echo "i = ".$i."<br>";
   		echo $utility->correctEnrollmentDates($row);
   		echo "<hr>";
   		if($i==1200)
   		{
   			break;
   		}
   	}

?>	