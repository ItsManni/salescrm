<!-- start add modal  -->

    <div class="modal fade" id="quick_change_assignment_modal" tabindex="1">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h3 class="modal-title" id="QuickAssignmentHeading"></h3>
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="lead_assignment_form" onsubmit="return false;">

                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Assigned To <span
                                class="text-danger">*<span></label>
                        <select class="form-control select2-show-search" name="UserName" id="user_name">
                            <option value="">Select User</option>
                            <?php
                            foreach($all_counsellor_details as $Counsellor_value)
                            {

                            ?>
                            <option value="<?php echo  $Counsellor_value['ID']?>">
                                <?php echo  $Counsellor_value['Name']?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Lead Status <span
                                class="text-danger">*<span></label>
                        <select class="form-control select2-show-search" name="LeadStatus" id="lead_status">
                            <option value="">Select Status</option>
                            <?php
                            $i = 1;
                            foreach($lead_status as $Status_value)
                            {
                                if($Status_value['Status'] == $FinalStatus)
                                {
                                    continue;
                                }
                            ?>
                            <option value="<?php echo  $Status_value['Status']?>">
                                <?php echo  $Status_value['Status']?></option>
                            <?php
                            $i++;
                            }
                            ?>
                        </select>
                    </div>


                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Remark <span
                                class="text-danger">*<span></label>
                        <textarea type="text" class="form-control" name="LeadRemark" id="lead_remark"
                            placeholder="Type Remark Here... "></textarea>
                    </div>

                    <input type="hidden" name="LeadID" id="Assignment_lead_id" value="">


                    <div class="mt-5 text-center">
                        <button class="btn btn-success text-white" id="QuickAssignmentBtn"
                            onclick="AddUpdateAssignment()"></button>
                    </div>


                </form>
            </div>
        </div>
    </div>
    </div>

<!-- End End modal  -->