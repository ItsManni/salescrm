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
    <title>View All Mentorship Enquiry - <?= $_ProductName ?> Portal</title>
    <?php 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $Enquiry = new FormEnquiry($conn);
    $Mentor_details = $Enquiry->GetAllMentorShipEnquiry($conn);
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
                            <h1 class="page-title">All Mentorship Enquiry</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Mentorship Enquiry</li>
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
                                        

                                        <div class="col-2 text-center d-flex">
                                              <!-- <span onclick="SearchFillterAdmission()" class="btn btn-danger" style="margin-right:5px">Search</span> -->
                                              <span onclick="ExportMentorshipEnquiryData()" class="btn btn-info">Export</span>
                                        </div>


                                </div> <!-- row -->
                            </form>
                        <!-- Filters --> 

                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table id="mentor_table" class="table table-bordered text-nowrap key-buttons border-bottom">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Name</th>
                                                        <th class="wd-15p border-bottom-0">Mobile Number</th>
                                                        <th class="wd-15p border-bottom-0">Email</th>
                                                        <th class="wd-15p border-bottom-0">City</th>
                                                        <th class="wd-15p border-bottom-0">Mode Of Classes</th>
                                                        <th class="wd-15p border-bottom-0">Year</th>
                                                        <th class="wd-20p border-bottom-0">Preparing Year</th>
                                                        <th class="wd-15p border-bottom-0">Optional Subject</th>
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php
                                                    $i=1;
                                                    foreach($Mentor_details as $Mentor_value)
                                                    {

                                                    $id  = $Mentor_value['ID'];
                                                    ?>
                                                <tr>
                                                    <td><?php echo $i; ?></td>
                                                    <td><?php echo $Mentor_value['Name']; ?></td>
                                                   
                                                    <td><?php echo $Mentor_value['MobileNumber']; ?></td>
                                                    <td><?php echo $Mentor_value['Email']; ?></td>
                                                    <td><?php echo $Mentor_value['City']; ?></td>
                                                    <td><?php echo $Mentor_value['Mode']; ?></td>
                                                    <td><?php echo $Mentor_value['Year']; ?></td>
                                                    <td><?php echo $Mentor_value['PreparingYear']; ?></td>
                                                    <td><?php echo $Mentor_value['OptionalSubject']; ?></td>

                                                   
                                                    
                                                </tr>
                                                <?php
                                                    $i++;
                                                    }
                                                    ?>
                                                </tbody>
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


            <?php
       include("../navigation/right-side-navigation.php");
        ?>

        </div>

        <?php
       include("../include/common-script.php");
        ?>
        <script src="../project-assets/js/commonjs.js"></script>

         <script type="text/javascript">
             $('#mentor_table').DataTable({
                    autoFill: true
                });
             $(document).ready(function() {
              $("#enquiry_li").css("display", "block"); 
              $("#enquiry_li").addClass("open");  
              $("#nav_enquiry").addClass("active");
              $("#nav_mentorship_form").addClass("active");
            });
         </script>
</body>

</html>