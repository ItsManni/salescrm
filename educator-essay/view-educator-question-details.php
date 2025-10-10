<?php
@session_start();
require_once('../include/autoloader.inc.php');
$conf = new Conf();
$_ProductName = $conf->_ProductName;
$_ProductLogo = $conf->_ProductLogo;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <!-- TITLE -->
    <title>View All Question Details - <?= $_ProductName ?> Portal</title>
    <?php 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $core = new Core();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $encrypt = new Encryption();
    $EducatorEssay = new EducatorEssay($conn);

    $QuestionID = $_GET['QuestionID'];

    $Essay_Question_Details = $EducatorEssay->GetEducatorQuestionDetailsbyID($QuestionID);

    $Question_Comment_Details = $EducatorEssay->GetAllCommentbyQuestionID($QuestionID);


    // $Student_details = $Admission->GetAdmissionStudentDetailsByID($conn,$AdmissionID);
    // $Student_Enrollment_details_arr = $Admission->GetStudentEnrollmentDetailsByID($conn,$AdmissionID);


    $where = " where 1";
    $educator_array_temp = $core->_getTableRecords($conn,'educator',$where);
    $educator_array = array();
    foreach($educator_array_temp as $educator)
    {
        $EducatorID = $educator['ID'];
        $educator_array[$EducatorID] = $educator['EducatorName'];
    }

    ?>
</head>

<body class="app sidebar-mini ltr light-mode">
    <div class="page">
        <div class="page-main">
            <?php 
                include("../navigation/top-header.php");
                include("../navigation/side-navigation.php");
            ?>

            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header mb-3">
                            <h1 class="page-title">Question Details</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Question Details</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <div class="row pb-5 justify-content-end">
                            <!-- <div class="col-md-4 text-end">
                                <a href="#" onclick="AddCourses()" class="btn btn-success">Add Course</a>
                            </div> -->
                        </div>
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                        <div class="panel panel-primary">
                                            <?php include("include/comments.php"); ?>
                                        </div>
                            </div>
                        </div>
                        <!-- End Row -->

                    </div>
                    <!-- CONTAINER END -->
                </div>
            </div>
            <!--app-content close-->


            <?php
       include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>
       <script src="../project-assets/js/educatoressay.js"></script>

       <script type="text/javascript">
            $(document).ready(function() {
              $("#nav_educator_essay").addClass("active");
            });
        </script>
</body>

</html>