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
    <title>View All Educator Essay - <?= $_ProductName ?> Portal</title>
    <?php 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $core = new Core();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();

    $Educator = new Educator($conn);
    $Educator_Details = $Educator->GetAllEducators($conn);
    
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
                            <h1 class="page-title">All Educator Essay Questions</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Educator Essay Questions</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <div class="row pb-5 justify-content-end">
                            <div class="col-md-4 text-end">
                                <span onclick="AddQuestion()" class="btn btn-success">Add Educator Essay Question</span>
                            </div>
                        </div>
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="all_questions">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Educator Name</th>
                                                        <th class="wd-15p border-bottom-0">Question</th>
                                                        <th class="wd-15p border-bottom-0">Date </th>
                                                        <th class="wd-15p border-bottom-0">Details </th>
                                                        <th class="wd-15p border-bottom-0">Action </th>
                                                        
                                                    </tr>
                                                </thead>
                                               
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Row -->

                    </div>
                    <!-- CONTAINER END -->
                </div>
            </div>
            <!--app-content close-->


            <!-- start add modal  -->

            <div class="modal fade" id="add_educator_question">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content modal-content-demo">
                        <div class="modal-header">
                            <h3 class="modal-title" id="EducatorHeading"></h3>
                            <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="educator_form" onsubmit="return false;">
                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Educator Name <span class="text-danger">*<span></label>
                                    <select class="form-control select2 form-select" name="educator_name" id="educator_name">
                                        <option value="">Choose Educator Name</option>    
                                        <?php
                                        $i = 1;
                                        foreach($Educator_Details as $Educator_Value)
                                        {
                                            
                                        ?>
                                            <option value="<?php echo  $Educator_Value['ID']?>" ><?php echo  $Educator_Value['EducatorName']?></option>
                                        <?php
                                        $i++;
                                        }
                                        ?> 
                                    </select> 
                                </div>

                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Question Date <span class="text-danger">*<span></label>
                                    <input type="text" class="form-control fc-datepicker" name="question_date" id="question_date">
                                </div>


                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Question <span class="text-danger">*<span></label>
                                    
                                    <textarea class="content" name="educator_question" id="educator_question"></textarea>
                                </div>

                                


                                <input type="hidden" id="form_action" name="form_action" value="add" />
                                <input type="hidden" id="form_id" name="form_id" value="-1" />

                                <div class="mt-5 text-center">
                                    <button class="btn btn-success text-white" id="addEducatorBtn"
                                        onclick="AddUpdateQuestionForm()"></button>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <!-- End End modal  -->


            <?php
       include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>
       <script src="../project-assets/js/educatoressay.js"></script>

        <script src="../theme-assets/plugins/wysiwyag/jquery.richtext.js"></script>
        <script src="../theme-assets/plugins/wysiwyag/wysiwyag.js"></script>

        <!-- DATEPICKER JS -->
        <script src="../theme-assets/plugins/date-picker/date-picker.js"></script>
        <script src="../theme-assets/plugins/date-picker/jquery-ui.js"></script>
        <script src="../theme-assets/plugins/daterangepicker/custom-daterangepicker.js"></script>

        <!-- INTERNAL Bootstrap-Datepicker js -->
        <script src="../theme-assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
              $("#nav_educator_essay").addClass("active");
            });
        </script>

     
</body>

</html>