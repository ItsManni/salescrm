<?php
require_once('../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$sql = "SELECT * from student_transaction where Mode = 'Offline' ORDER BY CreatedDate ASC, ID ASC";
$result = mysqli_query($conn, $sql);
$invoice_number = 1;
if ($result) 
{
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) 
		{
			extract($row);
			$sql_update_invoice_number_param = " InvoiceNo = $invoice_number where ID = $ID";
			$core->_UpdateTableRecords($conn,'student_transaction', $sql_update_invoice_number_param);
			$invoice_number = $invoice_number + 1;
		}
	}
}

$sql = "SELECT * from student_transaction where Mode = 'Online' ORDER BY CreatedDate ASC, ID ASC";
$result = mysqli_query($conn, $sql);
$invoice_number = 1;
if ($result) 
{
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) 
		{
			extract($row);
			$sql_update_invoice_number_param = " InvoiceNo = $invoice_number where ID = $ID";
			$core->_UpdateTableRecords($conn,'student_transaction', $sql_update_invoice_number_param);
			$invoice_number = $invoice_number + 1;
		}
	}
}

?>