<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$conn = $dbh->_connectodb();
$core = new Core();
$EducatorEssay = new EducatorEssay($conn);
$loggedin_email = $_SESSION['pp_email'];
$authentication = new Authentication($conn);
$UserType = $authentication->SessionCheck();
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
   $searchQuery = " and (Educator like '%".$searchValue."%' or Question like '%".$searchValue."%' or QuestionDate LIKE '%".$searchValue."%')";
}

$filter = " where IsActive = 1";

/*if($CompanyID != -1 && !$nav)
{
    $filter = $filter." AND CompanyID = $CompanyID";
}*/
$filter = $filter.$searchQuery;
$totalRecordwithFilter = $core->_getTotalRows($conn,'educator_essay', $filter);
## Total number of record with filtering
$totalRecords = $EducatorEssay->getTotalEducatorQuestion('educator_essay');
$filter = $filter." ORDER BY ".$columnName." ".$columnSortOrder;
$filter = $filter." limit ".$row.",".$rowperpage;
$books_details_arr = $core->_getTableRecords($conn,'educator_essay', $filter);

foreach ($books_details_arr as $books_details_value) 
{

  
  extract($books_details_value);

  $where = " where IsActive = 1";
  $educator_array_temp = $core->_getTableRecords($conn,'educator',$where);
  $educator_array = array();
  foreach($educator_array_temp as $educator)
  {
      $EducatorID = $educator['ID'];
      $educator_array[$EducatorID] = $educator['EducatorName'];
  }


 
  $data[] = array(
    "id"=>$ID,
    "Educator"=>$educator_array[$Educator],
    "Question"=>$Question,
    "QuestionDate"=>$QuestionDate,
    "ViewQuestion"=>"<a href='./view-educator-question-details?QuestionID=$ID'><span
              class='badge bg-success'>View Details</span></a>",
    "Action"=>"<a class='btn text-danger btn-sm' data-bs-toggle='tooltip' onclick='DeleteQuestion($ID)' data-bs-original-title='Delete'><span
              class='fe fe-trash-2 fs-14'></span></a>&nbsp;&nbsp;<a class='btn text-danger btn-sm' data-bs-toggle='tooltip' onclick='UpdateQuestion_modal($ID)' data-bs-original-title='Delete'><span
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