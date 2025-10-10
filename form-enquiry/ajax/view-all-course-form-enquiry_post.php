<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$FormEnquiry = new FormEnquiry($conn);

## Read value
$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$searchValue = $_POST['search']['value']; // Search value

$columnName = "ID";
$columnSortOrder = "DESC";

$data = array();

$searchQuery = " ";
if($searchValue != ''){
   $searchQuery = " and (Name like '%".$searchValue."%' or MobileNumber like '%".$searchValue."%' or Email LIKE '%".$searchValue."%' or ModeOfClasses like '%".$searchValue."%')";
}

$filter = " where IsActive = 1";
/*if($CompanyID != -1 && !$nav)
{
    $filter = $filter." AND CompanyID = $CompanyID";
}*/
$filter = $filter.$searchQuery;
$totalRecordwithFilter = $core->_getTotalRows($conn,'allcourse_form_payment', $filter);
## Total number of record with filtering
$totalRecords = $FormEnquiry->getTotalEnquiries('allcourse_form_payment');

$filter = $filter." limit ".$row.",".$rowperpage;
$enquiries_details = $core->_getTableRecords($conn,'allcourse_form_payment', $filter);

foreach ($enquiries_details as $enquiry) 
{
  extract($enquiry);

  if($enquiry['CourseName'] == ""){

    $CourseName = "NA";
  }

  if($enquiry['OptionalCourseName'] == ""){

    $OptionalCourseName = "NA";
  }


  if($enquiry['ModuleCourseName'] == ""){

      $ModuleCourseName = "NA";
  }


  $data[] = array(
    "id"=>$ID,
    "Name"=>$Name,
    "Mobile_Email"=>$MobileNumber."<br>".$Email,
    "ModeOfClasses"=>$ModeOfClasses,
    "CourseName"=>"<br> Course -".$CourseName."<br> Optional -".$OptionalCourseName."<br> Module -".$ModuleCourseName
   );
 
}
## Response
$response = array(
  "draw" => intval($draw),
  "iTotalRecords" => $totalRecords,
  "iTotalDisplayRecords" => $totalRecordwithFilter,
  "aaData" => $data
);
// echo $response;
echo json_encode($response);
?>