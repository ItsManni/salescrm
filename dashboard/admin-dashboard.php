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
    <title>Dashboard - <?= $_ProductName ?> Portal</title>
    <?php
        include("../include/common-head.php");
        require_once('../include/autoloader.inc.php');
        $dbh = new Dbh();
        $conn = $dbh->_connectodb();
        $session = new Session($conn);
        $UserType = $session->SessionCheck_redirect();
        $BranchID = -1;
        if(isset($_SESSION['BranchID'])){
            $BranchID = $_SESSION['BranchID'];
        }

        $User_ID = '';
        if(isset($_SESSION['UserID'])){
        $User_ID = $_SESSION['UserID'];
        }

        $navigation = new Navigation();
        $navigation->setNavigation($_SESSION['pp_UserType']);
    ?>

</head>

<body class="app sidebar-mini ltr light-mode">
    <div class="page">
        <div class="page-main">

        <?php
       include("../navigation/top-header.php");
       $dashboard = new Dashboard($conn);

        if($UserType == "System Admin")
        {
            $stats_array = $dashboard->GetAdminDashboardStats($BranchID);
        }

        if($UserType == "Center Manager")
        {
            $stats_array = $dashboard->GetAdminDashboardStats($BranchID);
        }

        if($UserType == "BDE")
        {
            $stats_array = $dashboard->GetBDEDashboardStats($User_ID);
        }

        include("../navigation/side-navigation.php");
        ?>

            <!--app-content open-->
            <div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <!-- <h1 class="page-title">Product Dashboard</h1> -->
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><?= $_ProductName ?>
                                        Dashboard</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <?php
                        if($navigation->_Nav_Dashboard_Lead)
                        {
                        ?>

                        <!-- ROW-1 -->
                        <h2 class="page-title text-primary"> Dashboard</h2>
                        <div class="row mt-5">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                        <div class="card overflow-hidden bg-danger-gradient text-light">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="mt-2">
                                                        <h6 class="">All Leads</h6>
                                                        <h2 class="mb-0 number-font">
                                                            <?php echo $stats_array['AllLead']; ?></h2>
                                                    </div>
                                                    <div class="ms-auto">
                                                        <div class="chart-wrapper mt-1">
                                                            <canvas id="saleschart"
                                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--span class="text-muted fs-12"><span class="text-secondary"><i
                                                            class="fe fe-arrow-up-circle  text-secondary"></i> 5%</span>
                                                    Last week</span-->
                                            </div>
                                        </div>
                                    </div>
                                    <?php if($UserType == 'System Admin'){?>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                        <div class="card overflow-hidden bg-dark-gradient text-light">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="mt-2">
                                                        <h6 class="">All Users</h6>
                                                        <h2 class="mb-0 number-font">
                                                            <?php echo $stats_array['AllUsers']; ?></h2>
                                                    </div>
                                                    <div class="ms-auto">
                                                        <div class="chart-wrapper mt-1">
                                                            <canvas id="saleschart"
                                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--span class="text-muted fs-12"><span class="text-secondary"><i
                                                            class="fe fe-arrow-up-circle  text-secondary"></i> 5%</span>
                                                    Last week</span-->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                        <div class="card overflow-hidden bg-info-gradient text-light">
                                            <div class="card-body">
                                                <div class="d-flex">
                                                    <div class="mt-2">
                                                        <h6 class="">All Services</h6>
                                                        <h2 class="mb-0 number-font">
                                                            <?php echo $stats_array['AllServices']; ?></h2>
                                                    </div>

                                                </div>
                                                <!--span class="text-muted fs-12"><span class="text-secondary"><i
                                                            class="fe fe-arrow-up-circle  text-secondary"></i> 5%</span>
                                                    Last week</span-->
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <!-- ROW-1 END -->


                       <?php } ?>



                       <?php if($UserType == 'System Admin'){?>
                        <!-- ROW-2 -->
                        <h2 class="page-title text-primary">Business Category Analytics</h2>
                        <div class="row mt-5">

                            <?php
                            function randomDarkColor() {
                                $r = rand(0, 120);
                                $g = rand(0, 120);
                                $b = rand(0, 120);
                                return sprintf("#%02X%02X%02X", $r, $g, $b);
                            }
                            ?>
                           <?php if(!empty($stats_array['BusinessWiseLead'])): ?>
                            <?php foreach($stats_array['BusinessWiseLead'] as $business_name => $count): ?>
                                <?php $bgColor = randomDarkColor(); ?>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                    <div class="card overflow-hidden text-light"
                                        style="background: <?= $bgColor ?>;">
                                        <div class="card-body">
                                            <div class="d-flex">
                                                <div class="mt-2">
                                                    <h6><?= htmlspecialchars($business_name) ?> Leads</h6>
                                                    <h2 class="mb-0 number-font"><?= $count ?></h2>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>

                        </div>

                        <h2 class="page-title text-primary">Services Lead Analytics</h2>
                         <div class="row mt-5">

                            <?php if(!empty($stats_array['ServiceWiseLead'])): ?>
                                <?php foreach($stats_array['ServiceWiseLead'] as $service => $count): ?>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                        <div class="card text-light"
                                            style="background-color: <?= randomDarkColor(); ?>;">
                                            <div class="card-body">
                                                <h6><?= htmlspecialchars($service) ?> Leads</h6>
                                                <h2><?= $count ?></h2>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            <?php endif; ?>

                         </div>
                        <!-- ROW-2 END -->
                        <h2 class="page-title text-primary">Lead Source Analytics</h2>
                        <div class="row mt-5">
                             <?php if(!empty($stats_array['LeadSourceWiseLead'])): ?>
                                <?php foreach($stats_array['LeadSourceWiseLead'] as $source => $count): ?>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                                        <div class="card text-light"
                                            style="background-color: <?= randomDarkColor(); ?>;">
                                            <div class="card-body">
                                                <h6 style='text-transform:capitalize'><?= htmlspecialchars($source) ?> Leads</h6>
                                                <h2><?= $count ?></h2>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </div>
                        <?php } ?>

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
        //include("../include/common-script.php");
        include("../include/common-script-v2.php");
        ?>




        <script>
        $("#dasboard").addClass("open");
        $("#dasboard").addClass("active");
        </script>
</body>

</html>