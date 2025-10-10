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
    <title>View All Educators - <?= $_ProductName ?> Portal</title>
    <?php
    include("../include/common-head.php");
    $dbh = new Dbh();
    $conn = $dbh->_connectodb();
    $core = new Core();
    $authentication = new Authentication($conn);
    $UserType = $authentication->SessionCheck();

    $BranchID = -1;
    if(isset($_SESSION['BranchID'])){
        $BranchID = $_SESSION['BranchID'];
    }

    $Branch = new Branch($conn);
    $AllBranches = $Branch->GetAllBranch($conn);

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
                            <h1 class="page-title">All Educators</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Educators</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <div class="row pb-5 justify-content-end">
                            <div class="col-md-4 text-end">
                                <span onclick="AddEducator()" class="btn btn-success">Add Educators</span>
                            </div>
                        </div>
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="all_educators">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Center</th>
                                                        <th class="wd-15p border-bottom-0">Educator Details</th>
                                                        <th class="wd-15p border-bottom-0">Designation</th>
                                                        <th class="wd-15p border-bottom-0">Educator Profile </th>
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

            <div class="modal fade" id="add_educator">
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
                                <div class="row">
                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Center<span
                                                class="text-danger">*<span></label>
                                        <select class="form-control select2" name="center_id" id="center_name"
                                            style='width:100%;'>
                                            <option value="">Select Center</option>
                                            <?php
                                            foreach($AllBranches as $Branch_value)
                                            {
                                                if($BranchID == -1 || $BranchID == $Branch_value['ID'])
                                                {
                                            ?>
                                            <option value="<?php echo  $Branch_value['ID']?>">
                                                <?php echo  $Branch_value['BranchName']?></option>
                                            <?php
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-md-6 mb-3">
                                        <label for="recipient-name" class="col-form-label">Strategy Session</label>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="Session"
                                                id="strategy_session" value="1">
                                            <label class="form-check-label" for="strategy_session">
                                                Yes
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="Session"
                                                id="strategy_session" value="0" checked>
                                            <label class="form-check-label" for="strategy_session">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Educator Name <span
                                                class="text-danger">*<span></label>
                                        <input type="text" class="form-control" name="educator_name" id="educator_name"
                                            Placeholder="Enter Educator Name">
                                    </div>


                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Designation <span
                                                class="text-danger">*<span></label>
                                        <input type="text" class="form-control" name="educator_designation"
                                            id="educator_designation" Placeholder="Enter Designation">
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Educator Phone No. <span
                                                class="text-danger">*<span></label>
                                        <input type="text" class="form-control" maxlength="10" onkeyup="validISNumber()"
                                            name="educator_phone" id="educator_phone"
                                            Placeholder="Enter Educator Phone No.">
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Educator Alternative No.
                                        </label>
                                        <input type="text" class="form-control" name="educator_alternative"
                                            maxlength="10" onkeyup="validISNumber()" id="educator_alternative"
                                            Placeholder="Enter Educator Alternative No.">
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Educator Email <span
                                                class="text-danger">*<span> (will be used as Username)</label>
                                        <input type="text" class="form-control" name="educator_email"
                                            id="educator_email" Placeholder="Enter Educator Email">
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Password <span
                                                class="text-danger">*<span></label>
                                        <input type="text" class="form-control" name="educator_password"
                                            id="educator_password" Placeholder="Enter Password">
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="recipient-name" class="col-form-label">Educator Profile </label>
                                        <input type="file" class="form-control" accept="" name="educator_profile"
                                            id="educator_profile">
                                    </div>
                                </div>


                                <div class="mb-3">
                                    <label for="recipient-name" class="col-form-label">Educator Details<span
                                            class="text-danger">*<span></label>
                                    <textarea class="content" name="educator_details" id="educator_details"></textarea>
                                </div>




                                <input type="hidden" id="form_action" name="form_action" value="add" />
                                <input type="hidden" id="form_id" name="form_id" value="-1" />

                                <div class="mt-5 text-center">
                                    <button class="btn btn-success text-white" id="addEducatorBtn"
                                        onclick="AddUpdateEducatorForm()"></button>
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
        <script src="../project-assets/js/educator.js"></script>
        <!-- INTERNAL WYSIWYG Editor JS -->
        <script src="../theme-assets/plugins/wysiwyag/jquery.richtext.js"></script>
        <script src="../theme-assets/plugins/wysiwyag/wysiwyag.js"></script>

        <script type="text/javascript">
        $(document).ready(function() {
            $("#nav_educator").addClass("active");
        });

        $(document).ready(function() {
            var i = 1;
            $('#all_educators').dataTable({
                responsive: true,
                'processing': true,
                'serverSide': true,
                'ordering': false,
                'serverMethod': 'post',
                'ajax': {
                    'url': 'ajax/view-all-educator_post.php'
                },
                'columnDefs': [{
                    "targets": [0],
                    "className": "text-center"
                }],
                "order": [
                    [1, 'asc']
                ],
                'columns': [{
                        "data": "id",
                        render: function(data, type, row, meta) {
                            return meta.row + meta.settings._iDisplayStart + 1;
                        }
                    },
                    {
                        data: 'Center'
                    },
                    {
                        data: 'EducatorName'
                    },
                    {
                        data: 'Designation'
                    },
                    {
                        data: 'Profile'
                    },
                    {
                        data: 'Action'
                    }


                ]


            });
        });
        </script>
</body>

</html>