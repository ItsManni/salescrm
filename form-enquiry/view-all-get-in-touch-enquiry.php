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
    <title>View All Get In Touch Enquiry - <?= $_ProductName ?> Portal</title>
    <?php 
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();
    $Enquiry = new FormEnquiry($conn);
    $Enquiry_details = $Enquiry->GetAllGetInTouchEnquiry($conn);
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
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="getintouch_enquiry">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Name</th>
                                                        <th class="wd-15p border-bottom-0">Phone</th>
                                                        <th class="wd-15p border-bottom-0">Email</th>
                                                        <th class="wd-15p border-bottom-0">Course</th>
                                                        <th class="wd-15p border-bottom-0">Message</th>
                                                        <th class="wd-15p border-bottom-0">Date & Time</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php
                                                    $i=1;
                                                    foreach($Enquiry_details as $Enquiry_value)
                                                    {

                                                    $id  = $Enquiry_value['ID'];
                                                    ?>
                                                <tr>
                                                    <td><?php echo $i; ?></td>
                                                    <td><?php echo $Enquiry_value['Name']; ?></td>
                                                    <td><?php echo $Enquiry_value['Phone']; ?></td>
                                                    <td><?php echo $Enquiry_value['Email']; ?></td>
                                                    <td><?php echo $Enquiry_value['Course']; ?></td>
                                                    <td><?php echo $Enquiry_value['Message']; ?></td>
                                                    <td><?php echo $Enquiry_value['CreatedDateTime']; ?></td>
                                                    

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

        <script type="text/javascript">
             $('#getintouch_enquiry').DataTable({
                    autoFill: true
                });
             $(document).ready(function() {
              $("#enquiry_li").css("display", "block"); 
              $("#enquiry_li").addClass("open");  
              $("#nav_enquiry").addClass("active");
              $("#nav_getintouch").addClass("active");
            });
         </script>
</body>

</html>