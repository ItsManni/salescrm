<?php
    $BranchID = -1;
    if(isset($_SESSION['BranchID'])){
        $BranchID = $_SESSION['BranchID'];
    }
    $user = new Users($conn);
    $all_counsellor_details = $user->getAllCounsellorByBranchID($BranchID);
    $IMSSetting = new IMSSetting($conn);
    $lead_status = $IMSSetting->GetAllLeadStatus($conn);
    $FinalStatus = $IMSSetting->GetFinalLeadStatus($conn);

    $lead_assignment_details = $ManageLead->GetLeadAssignmentDetailsByID($conn,$LeadID);
    // print_r($lead_assignment_details);
    // die();
?>

<div class="row justify-content-end mt-2 mb-3">
    <div class="col-md-4 text-end">
        <span onclick="OpenModal_ChangeAssignment()" class="btn btn-success cursor-pointer">Change Assignment & Status
        </span>
    </div>
</div>


<span class="font-weight-bold mt-2 mb-2 d-block" style="color: #e1a300;
    font-weight: 600;">Lead Assignment Details:</span>

<div class="card">
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-bordered text-nowrap border-bottom" id="all_student_detals">
                <tbody>

                    <tr>
                        <th class="wd-15p border-bottom-0">Assigned To</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_assignment_details['AssignedTo'] != "" && $lead_assignment_details['AssignedTo'] != -1 ){
                             if(isset($user_array[$lead_details['AssignedTo']]))
                            {
                                echo $user_array[$lead_details['AssignedTo']];
                            }
                            else
                            {
                                echo "N/A";
                            }
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Status</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_assignment_details['Status'] != ""){
                             echo $lead_assignment_details['Status'];
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Remark</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_assignment_details['Remark'] != ""){
                             echo $lead_assignment_details['Remark'];
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Created Date</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_assignment_details['CreatedDate'] != ""){
                             echo $lead_assignment_details['CreatedDate'];
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Created Time</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_assignment_details['CreatedTime'] != ""){
                             echo $lead_assignment_details['CreatedTime'];
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                </tbody>

            </table>
        </div>
    </div>
</div>




<!-- start add modal  -->

<div class="modal fade" id="change_assignment_modal" tabindex="1">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h3 class="modal-title" id="AssignmentHeading"></h3>
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="lead_assignment_form" onsubmit="return false;">

                    <div class="row">
                        <div class="mb-3 col-12">
                            <label for="recipient-name" class="col-form-label">Assigned To <span
                                    class="text-danger">*<span></label>
                            <select class="form-control select2-show-search" name="UserName" id="user_name"
                                style="width:100%;">
                                <option value="">Select User</option>
                                <?php
                                    $i = 1;
                                    $UserID = $lead_assignment_details['AssignedTo'];
                                    foreach($all_counsellor_details as $Counsellor_value)
                                    {
                                        $selected = "";
                                        if ($UserID != -1) {
                                            if($UserID == $Counsellor_value['ID'])
                                                $selected = "selected";
                                            else
                                            {
                                                if($UserID==0)
                                                    continue;
                                            }
                                        }
                                    ?>
                                <option <?php echo $selected ?> value="<?php echo  $Counsellor_value['ID']?>">
                                    <?php echo  $Counsellor_value['Name']?></option>
                                <?php
                                    $i++;
                                    }
                                    ?>
                            </select>
                        </div>

                        <div class="mb-3 col-12">
                            <label for="recipient-name" class="col-form-label">Lead Status <span
                                    class="text-danger">*<span></label>
                            <select class="form-control select2-show-search" name="LeadStatus" id="lead_status"
                                style="width:100%;">
                                <option value="">Select Status</option>
                                <?php
                                    $i = 1;
                                    $StatusID = $lead_assignment_details['Status'];
                                    foreach($lead_status as $Status_value)
                                    {
                                        $selected = "";
                                        if ($StatusID != -1) {
                                            if($StatusID == $Status_value['Status'])
                                                $selected = "selected";
                                            // else
                                            // {
                                            //     if($StatusID==0)
                                            //         continue;
                                            // }
                                        }
                                        if($Status_value['Status'] == $FinalStatus)
                                            {
                                                continue;
                                            }
                                    ?>
                                <option <?php echo $selected ?> value="<?php echo  $Status_value['Status']?>">
                                    <?php echo  $Status_value['Status']?></option>
                                <?php
                                    $i++;
                                    }
                                    ?>
                            </select>
                        </div>


                        <div class="mb-3 col-12">
                            <label for="recipient-name" class="col-form-label">Remark <span
                                    class="text-danger">*<span></label>
                            <textarea type="text" class="form-control" name="LeadRemark" id="lead_remark"
                                placeholder="Type Remark Here... "></textarea>
                        </div>

                        <input type="hidden" name="LeadID" value="<?php echo $LeadID ?>">


                        <div class="mt-5 col-12 text-center">
                            <button class="btn btn-success text-white" id="AssignmentBtn"
                                onclick="AddUpdateAssignment()"></button>
                        </div>
                    </div>




                </form>
            </div>
        </div>
    </div>
</div>


<!-- End End modal  -->