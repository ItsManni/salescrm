<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$Educator = new Educator($conn);
$loggedin_email = $_SESSION['pp_email'];
$authentication = new Authentication($conn);
$UserType = $authentication->SessionCheck();
## Read value
$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$searchValue = $_POST['search']['value']; // Search value

$branch_obj = new Branch($conn);
$branch_array = $branch_obj->SetBranchArrayByID();

$columnName = "ID";
$columnSortOrder = "DESC";

$data = array();

$searchQuery = " ";
if($searchValue != ''){
   $searchQuery = " and (EducatorName like '%".$searchValue."%' or Designation like '%".$searchValue."%')";
}

$filter = " where IsActive = 1";

$filter_center_manager = "";
$BranchID = '';
if(isset($_SESSION['BranchID'])){
  $BranchID = $_SESSION['BranchID'];
}
if($UserType == "Center Manager" || $UserType == "Lead Counsellor" || $UserType == "Batch Manager")
{
  $filter_center_manager = " AND BranchID = $BranchID";
}

$filter = $filter.$searchQuery.$filter_center_manager;
$totalRecordwithFilter = $core->_getTotalRows($conn,'educator', $filter);
## Total number of record with filtering
$totalRecords = $Educator->getTotalEducators('educator');
$filter = $filter." ORDER BY ".$columnName." ".$columnSortOrder;
$filter = $filter." limit ".$row.",".$rowperpage;
$educator_details_arr = $core->_getTableRecords($conn,'educator', $filter);

foreach ($educator_details_arr as $educator_details_value)
{
  extract($educator_details_value);
  if($EducatorProfile == ""){
    $EducatorProfile = "N/A";
  }else{
    $EducatorProfile = "<img src='../project-assets/admin-media/educator/$EducatorProfile' style='width:50px; height:50px;'>";
  }
  $branch_name = "N.A.";
  if(isset($branch_array[$BranchID]))
  {
    $branch_name = $branch_array[$BranchID]['BranchName'];
  }
  $data[] = array(
    "id"=>$ID,
    "Center"=>$branch_name,
    "EducatorName"=>"<b>Name - </b>".$EducatorName."<br> <b>Phone - </b>".$PhoneNumber."<br> <b>Email - </b>".$Email,
    "Designation"=>$Designation,
    "Profile"=>$EducatorProfile,
    "Action"=>"<a class='btn text-danger btn-sm' data-bs-toggle='tooltip' onclick='DeleteEducator($ID)' data-bs-original-title='Delete'><span
              class='fe fe-trash-2 fs-14'></span></a>&nbsp;&nbsp;<a class='btn text-danger btn-sm' data-bs-toggle='tooltip' onclick='UpdateEducator_modal($ID)' data-bs-original-title='Delete'><span
              class='fa fa-pencil-square-o fs-14'></span></a>",
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