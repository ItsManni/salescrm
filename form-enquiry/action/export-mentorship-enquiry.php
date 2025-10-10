<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$authentication = new Authentication($conn);
$authenticated = $authentication->SessionCheck();

$output ="";

$filter_start_date = "";
if(isset($_POST['filter_start_date']))
{
    $filter_start_date = $_POST['filter_start_date'];
    // $dateTime = DateTime::createFromFormat('m/d/Y', $filter_start_date); 
    // $newDateFormat = $dateTime->format('Y-m-d');
    if($filter_start_date != "")
    {
        $filter_start_date = " AND CreatedDate = '$filter_start_date'";
    }
}

$filter_end_date = "";
if(isset($_POST['filter_end_date']))
{
    $filter_end_date = $_POST['filter_end_date'];
    // $dateTime = DateTime::createFromFormat('m/d/Y', $filter_end_date); 
    // $newDateFormat = $dateTime->format('Y-m-d');
    if($filter_end_date != "")
    {
        $filter_end_date = " AND CreatedDate = '$filter_end_date'";
    }
}

$fillter_date = '';
if($filter_start_date != "" && $filter_end_date != ""){
  $filter_start_date = '';
  $filter_end_date = '';
   
  $start_date = $_POST['filter_start_date'];
  $end_date = $_POST['filter_end_date'];

  $fillter_date = " AND CreatedDate BETWEEN '$start_date' AND '$end_date'";

}

$where = " where 1";
$filter = $where.$filter_start_date.$filter_end_date.$fillter_date;
$mentorship_enquiry_details = $core->_getTableRecords($conn,'mentorship_enquiry', $filter);
if ($mentorship_enquiry_details > 0) {
    $output .= '
   <table class="table" border="1">  
                    <tr>  
                         <th>Name</th>                        
                         <th>Mobile Number</th> 
                         <th>Email</th>
                         <th>City</th>
                         <th>Mode</th>
                         <th>Year</th>
                         <th>Preparing Year</th>
                         <th>Optional Subject</th>
                         <th>Message</th>
                         <th>Created Date</th> 
                         <th>Created Time</th>
                    </tr>
  ';
    foreach ($mentorship_enquiry_details as $MentorshipData) {
        
        $output .= '<tr>  
                        <td>' . $MentorshipData["Name"] . '</td> 
                        <td>' . $MentorshipData["MobileNumber"] . '</td>
                        <td>' . $MentorshipData["Email"] . '</td>
                        <td>' . $MentorshipData["City"] . '</td>
                        <td>' . $MentorshipData["Mode"] . '</td>
                        <td>' . $MentorshipData["Year"] . '</td>
                        <td>' . $MentorshipData["PreparingYear"] . '</td>
                        <td>' . $MentorshipData["OptionalSubject"] . '</td>
                        <td>' . $MentorshipData["Message"] . '</td>
                        <td>' . $MentorshipData["CreatedDate"] . '</td>
                        <td>' . $MentorshipData["CreatedTime"] . '</td>
                    </tr>
   ';
    }

} else {
    $output = "<table><tr><td>No Data Available</td></tr></table>";
}
echo $output;
$myfile = fopen("../report.xls", "w");
fwrite($myfile, $output);
fclose($myfile);
?>