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
    <title>View All Course Enquiry - <?= $_ProductName ?> Portal</title>
    <?php
    @session_start(); 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $Enquiry = new FormEnquiry($conn);
    $Enquiry_details = $Enquiry->GetAllCoursesEnquiry($conn);
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
                            <h1 class="page-title">All Enquiry</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Enquiry</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <!-- <div class="row pb-5 justify-content-end">
                            <div class="col-md-4 text-end">
                                <a href="./add-partner-account-manager" class="btn btn-success">Add PAM</a>
                            </div>
                        </div> -->

                         <!-- Filters -->
                            <form id="export_fillter_form">
                                <div class="row row-sm pt-2 pb-2 justify-content-center">
                                    
                                        
                                    
                                        <div class="col-2">
                                            <input type="date" class="form-control fc-datepicker" id="filter_start_date" name="filter_start_date" placeholder="Start Date" >
                                        </div>

                                        <div class="col-2">
                                            <input type="date" class="form-control fc-datepicker" id="filter_end_date" name="filter_end_date" placeholder="End Date">
                                        </div>
                                        
                                        <div class="col-2">
                                            <select class="form-control bg-white" name="fillter_mode" id="fillter_mode">
                                                <option value="">Course Mode</option> 
                                                <option value="Offline">Offline</option>  
                                                <option value="Online">Online</option> 
                                            </select>   
                                        </div>

                                        <div class="col-2 text-center d-flex">
                                              <!-- <span onclick="SearchFillterAdmission()" class="btn btn-danger" style="margin-right:5px">Search</span> -->
                                              <span onclick="ExportCourseEnquiryData()" class="btn btn-info">Export</span>
                                        </div>


                                </div> <!-- row -->
                            </form>
                        <!-- Filters --> 
                        
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table id="enquiry_table" class="table table-bordered text-nowrap key-buttons border-bottom">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Name</th>
                                                        <th class="wd-15p border-bottom-0">Mobile No / Email</th>
                                                        <th class="wd-15p border-bottom-0">Mode Of Classes</th>
                                                        <th class="wd-20p border-bottom-0">Course(s)</th>
                                                        <!-- <th class="wd-20p border-bottom-0">Lead Assign</th> -->
                                                        <!-- <th class="wd-20p border-bottom-0">View Details</th> -->

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

        <!-- assigned modal start      -->

            <!-- MODAL EFFECTS -->
                <div class="modal fade" id="assigned_modal">
                    <div class="modal-dialog modal-dialog-centered text-center" role="document">
                        <div class="modal-content modal-content-demo">
                            <div class="modal-header">
                                <h6 class="modal-title">Lead Assigned</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <form>
                                <div class="modal-body">
                                        
                                                <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label class="form-label">Assigned to Employee</label>
                                                        <select multiple="multiple" class="filter-multi">
                                                                <option value="1" selected>Select Assigned Employee</option>
                                                                <option value="2" >2</option>
                                                            </select>
                                                    </div>
                                                </div>
                                                                                           
                                            </div>
                                        
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-primary">Save & Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

        <!-- assigned modal End  -->


        <?php
           include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
        include("../include/common-script.php");
        ?>

        <script src="../project-assets/js/commonjs.js"></script>
        <script src="../project-assets/js/view-all-course-enquiry.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
              $("#enquiry_li").css("display", "block"); 
              $("#enquiry_li").addClass("open");  
              $("#course_form").addClass("active");
              $("#enquiry").addClass("active");
            });
        </script>
        
</body>

</html>