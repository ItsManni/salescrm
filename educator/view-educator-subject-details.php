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

    $EducatorID = -1;
    if(isset($_GET['EducatorID'])){
        $EducatorID = $_GET['EducatorID'];
    }

    $Educator = new Educator($conn);
    $All_Educator_Subjects = $Educator->GetAllSubjectByEducatorID($EducatorID);

    $IMSSetting = new IMSSetting($conn);
    $All_Subjects = $IMSSetting->GetAllSubjects();

    $where = " where 1";
    $subject_array_temp = $core->_getTableRecords($conn,'conf_subject',$where);
    $subject_array = array();
    foreach($subject_array_temp as $subject)
    {
        $SubjectID = $subject['ID'];
        $subject_array[$SubjectID] = $subject['Name'];
    }

    $where = " where 1";
    $educator_array_temp = $core->_getTableRecords($conn,'educator',$where);
    $educator_array = array();
    foreach($educator_array_temp as $educator)
    {
        $Educator_ID = $educator['ID'];
        $educator_array[$Educator_ID] = $educator['EducatorName'];
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
                            <h1 class="page-title">All Educators</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="../dashboard/admin-dashboard">Home</a></li>
                                    <li class="breadcrumb-item"><a href="./view-all-educators">View Educators</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">View Educator Subjects</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->

                        <!-- Row -->
                        <div class="row pb-5 justify-content-end">
                            <div class="col-md-4 text-end">
                                <span onclick="AddEducatorSubject()" class="btn btn-success">Add Educator Subject</span>
                            </div>
                        </div>
                        <div class="row row-sm">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-nowrap border-bottom"
                                                id="all_educator_subject">
                                                <thead>
                                                    <tr>
                                                        <th class="wd-15p border-bottom-0">#</th>
                                                        <th class="wd-15p border-bottom-0">Educator</th>
                                                        <th class="wd-15p border-bottom-0">Subject</th>
                                                        <th class="wd-15p border-bottom-0">Action </th>

                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php
                                                    $i=1;
                                                    foreach($All_Educator_Subjects as $Educator_Subject)
                                                    {
                                                    $id  = $Educator_Subject['ID'];
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $i; ?></td>
                                                        <td><?php echo $educator_array[$Educator_Subject['EducatorID']]; ?></td>
                                                        <td><?php echo $subject_array[$Educator_Subject['SubjectID']]; ?></td>

                                                        <td>
                                                            <div class="g-2">
                                                                <a class="btn text-danger btn-sm"
                                                                    data-bs-toggle="tooltip"
                                                                    onclick="DeleteEducatorSubject(<?php echo $id;?>)"
                                                                    data-bs-original-title="Delete"><span
                                                                        class="fe fe-trash-2 fs-14"></span>
                                                                </a>
                                                                <!-- <a class="btn text-danger btn-sm"
                                                                    data-bs-toggle="tooltip"
                                                                    onclick="UpdateEducatorSubject_modal(<?php echo $id;?>)"
                                                                    data-bs-original-title="Edit"><span
                                                                        class="fe fe-edit fs-14"></span>
                                                                </a> -->
                                                            </div>
                                                        </td>

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


            <!-- start add modal  -->

            <div class="modal fade" id="add_educator_subject">
                <div class="modal-dialog" role="document">
                    <div class="modal-content modal-content-demo">
                        <div class="modal-header">
                            <h3 class="modal-title" id="EducatorSubjectHeading"></h3>
                            <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="educator_subject_form" onsubmit="return false;">
                                <div class="row">
                                    <div class="mb-3 col-md-12">
                                        <label for="recipient-name" class="col-form-label">Subject <span
                                                class="text-danger">*<span></label>
                                        <select class="form-control select2" name="subject_id" id="subject_id"
                                            style='width:100%;'>
                                            <option value="">Select Center</option>
                                            <?php
                                            foreach($All_Subjects as $Subject_value)
                                            {
                                                
                                            ?>
                                            <option value="<?php echo  $Subject_value['ID']?>">
                                                <?php echo  $Subject_value['Name']?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    
                                </div>





                                <input type="hidden" id="form_action" name="form_action" value="add" />
                                <input type="hidden" id="form_id" name="form_id" value="-1" />
                                <input type="hidden" id="educator_id" name="educator_id" value="<?php echo $EducatorID;?>" />

                                <div class="mt-5 text-center">
                                    <button class="btn btn-success text-white" id="addEducatorSubjectBtn"
                                        onclick="AddUpdateEducatorSubjectForm()"></button>
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
        <script src="../project-assets/js/educator-subject.js"></script>
        <!-- INTERNAL WYSIWYG Editor JS -->
        <script src="../theme-assets/plugins/wysiwyag/jquery.richtext.js"></script>
        <script src="../theme-assets/plugins/wysiwyag/wysiwyag.js"></script>

        <script type="text/javascript">
        $(document).ready(function() {
            $("#nav_educator").addClass("active");
        });

        $("#all_educator_subject").DataTable({
            autoFill: true,
        });
        </script>
</body>

</html>