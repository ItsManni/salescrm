<?php
require_once('../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$sql = "SELECT a.PhoneNumber,SUM(b.Amount) as TotalPayment FROM `student_admission` a, student_transaction b WHERE a.ID = b.AdmissionID GROUP BY a.PhoneNumber";
$result = mysqli_query($conn, $sql);
$payments = array();

$payments_excel = array();
$details = array();

if ($result) 
{
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) 
		{
			extract($row);
			$payments[$PhoneNumber] = $TotalPayment;
		}
	}
}
/*print_r($payments);
die();*/

$filename = 'ALL_28_11.csv';
$file = fopen($filename, 'r');
while (($row = fgetcsv($file)) !== false) 
{
	$data = $row;
	/*if($data[0] == "SR NO.")
		continue;*/
	$PhoneNumber = $data[5];
	if (strpos($PhoneNumber, "/") !== false) {
	    $modifiedPhoneNumber = str_replace("\n", "", $PhoneNumber);
	    $parts = explode("/", $modifiedPhoneNumber);
	    $PhoneNumber = $parts[0];
	} else {
	    
	}
	$Total_Payment_excel = $data[25];
	$details[$PhoneNumber]['SNo'] = $data[0];
	$details[$PhoneNumber]['Name'] = $data[1];
	if(isset($payments_excel[$PhoneNumber]))
	{
		$payments_excel[$PhoneNumber] = $payments_excel[$PhoneNumber] + $data[25];
		
	}
	else
	{
		$payments_excel[$PhoneNumber] = $data[25];
	}
	/*$db_payment = $payments[$PhoneNumber];
	echo "<br>Database Payment = ".$payments[$PhoneNumber]."<br>";
	if(intval($Total_Payment_excel) == intval($db_payment))
	{
		echo $PhoneNumber." MATCH : Excel Amount - $Total_Payment_excel ,  Database Amount - $db_payment <br>";
	}
	else
	{
		echo $PhoneNumber." MISMATCH : Excel Amount - $Total_Payment_excel ,  Database Amount - $db_payment <br>";
	}*/

}

foreach ($payments_excel as $PhoneNumber => $Payment_excel) {
	$match = false;
	$payment_db = "Not Found";
	if(isset($payments[$PhoneNumber]))
	{
		$payment_db = $payments[$PhoneNumber];
		if($payments[$PhoneNumber] == $Payment_excel)
		{
			$match = true;
		}
	}
	if($match == false)
	{
		echo "<hr> Phone number = $PhoneNumber Payment Excel = ".$Payment_excel." Payment Database = ".$payment_db ."<br>";
		echo "Name - ".$details[$PhoneNumber]['Name']." , SNo - ".$details[$PhoneNumber]['SNo']."<hr><hr>";
	}
}

?>