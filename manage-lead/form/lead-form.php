<!-- start add modal  -->

<div class="modal fade" id="add_lead_form_modal" tabindex="-1">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h3 class="modal-title" id="AddLeadHeading"></h3>
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="lead_form" onsubmit="return false;">
                    <div class="card-body">
                        <div class="panel panel-primary">
                            <div class="tab-menu-heading tab-menu-heading-boxed">
                                <div class="tabs-menu-boxed">
                                    <!-- Tabs -->
                                    <ul class="nav panel-tabs">
                                        <li><a href="#basic_info" class="active" data-bs-toggle="tab">Basic Info</a>
                                        </li>
                                        <li><a href="#contact_details" data-bs-toggle="tab">Contact Information</a></li>
                                        <li><a href="#address_info" data-bs-toggle="tab">Address</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="panel-body tabs-menu-body">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="basic_info">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 mb-3">
                                                <label for="recipient-name" class="col-form-label">Branch <span
                                                        class="text-danger">*</span></label>
                                                <select class="select2 form-control select2-show-search"
                                                    onchange="GetCenterUserDropDown(this.value)" name="Branch"
                                                    id="Branch" style='width:100%;'>
                                                    <option value="">Select Branch</option>
                                                    <?php
                                                    foreach($AllBranches as $Branch_value)
                                                    {
                                                        $selected = '';
                                                        if($BranchID == $Branch_value['ID']){
                                                            $selected = 'selected';
                                                        }

                                                        if($BranchID == -1 || $BranchID == $Branch_value['ID'])
                                                        {

                                                    ?>
                                                    <option <?php echo $selected; ?>
                                                        value="<?php echo  $Branch_value['ID']?>">
                                                        <?php echo  $Branch_value['BranchName']?></option>
                                                    <?php
                                                    }
                                                    }
                                                    ?>
                                                </select>
                                            </div>

                                            <div class="col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">Company Name </label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Enter Company Name" name="CompanyName"
                                                        id="CompanyName">
                                                </div>
                                            </div>

                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Type of Business <span
                                                            class="text-danger">*</span></label>
                                                    <select class="select2 form-control select2-show-search"
                                                        name="BusinessName" id="BusinessName" style='width:100%;'>
                                                        <option value="">Select Business</option>
                                                        <?php
                                                            foreach($All_Business_Types as $All_Business_Types_value)
                                                            {

                                                            ?>
                                                        <option value="<?php echo  $All_Business_Types_value['ID']?>">
                                                            <?php echo  $All_Business_Types_value['BusinessName']?>
                                                        </option>
                                                        <?php
                                                            }
                                                            ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Services <span
                                                            class="text-danger">*</span></label>
                                                    <select class="select2 form-control select2-show-search"
                                                        name="Services[]" id="Services" multiple style='width:100%;'>
                                                        <option value="">Select Services</option>
                                                        <?php
                                                            foreach($All_Services as $All_Services_value)
                                                            {

                                                            ?>
                                                        <option value="<?php echo  $All_Services_value['ID']?>">
                                                            <?php echo  $All_Services_value['ServiceName']?></option>
                                                        <?php
                                                            }
                                                            ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Budget </label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Enter Service Cost" name="ServiceCost"
                                                        id="ServiceCost">
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Website</label>
                                                    <input type="text" class="form-control" placeholder="Enter Website"
                                                        name="Website" id="Website">
                                                </div>
                                            </div>
                                            <div class="col-sm-3 col-md-3 mb-3" id="assinged_to_div"
                                                style="display:none;">
                                                <div class="form-group">
                                                    <label class="form-label">Assigned To <span
                                                            class="text-danger">*</span></label>
                                                    <select class="select2 form-control select2-show-search"
                                                        name="AssignedTo" id="AssignedTo" style='width:100%;'>
                                                        <option value="">Select User</option>

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-6 col-sm-3 mb-3">
                                                <label class="form-label">Lead Source <span
                                                        class="text-danger">*</span></label>
                                                <select class="form-control" name="LeadSource" id="LeadSource"
                                                    style='width:100%;'>
                                                    <option value="">Select Lead Source</option>
                                                    <?php

                                                        foreach($All_Lead_Sources as $Lead_Source_value)
                                                        {

                                                        ?>
                                                    <option value="<?php echo  $Lead_Source_value['SourceName']?>">
                                                        <?php echo  $Lead_Source_value['SourceName']?></option>
                                                    <?php

                                                        }
                                                        ?>
                                                </select>
                                            </div>

                                            <div class="mb-3 col-6 col-sm-3" id="">
                                                <label for="recipient-name" class="col-form-label">Lead Status <span
                                                        class="text-danger">*<span></label>
                                                <select class="form-control" name="LeadStatus" id="LeadStatus"
                                                    style='width:100%;'>
                                                    <option value="">Select Status </option>
                                                    <?php

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
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Lead Date </label>
                                                    <input type="date" class="form-control"
                                                        placeholder="Select Lead Date" name="LeadDate" id="LeadDate">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="contact_details">
                                        <div class="row">
                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Contact Person Name <span
                                                            class="text-danger">*</span></label>
                                                    <input type="tel" class="form-control" placeholder="Enter Name"
                                                        name="ContactPersonName" id="ContactPersonName">
                                                </div>
                                            </div>


                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Contact Person Email </label>
                                                    <input type="text" class="form-control" placeholder="Enter Email"
                                                        name="ContactPersonEmail" id="ContactPersonEmail">
                                                </div>
                                            </div>

                                            <div class="col-sm-6 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Contact Person Phone Number <span
                                                            class="text-danger">*</span></label>
                                                    <input type="tel" maxlength="10" onkeyup="validISNumber()"
                                                        class="form-control" placeholder="Enter Phone Number"
                                                        name="ContactPersonPhoneNumber" id="ContactPersonPhoneNumber">
                                                    <input type="hidden" id="primary_country_code"
                                                        name="primary_country_code">
                                                    <!-- <input maxlength="10" onkeyup="validISNumber()"
                                                            class="form-control" placeholder="Enter Phone Number" name="ContactPersonPhoneNumber" id="phone1" type="tel"> -->
                                                </div>
                                            </div>

                                            <div class="col-sm-3 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Contact Person Alternative No</label>
                                                    <input type="tel" maxlength="10" class="form-control"
                                                        placeholder="Enter AlternativeNo"
                                                        name="ContactPersonAlternativeNo"
                                                        id="ContactPersonAlternativeNo">
                                                    <input type="hidden" id="secondary_country_code"
                                                        name="secondary_country_code">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="address_info">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Country </label>
                                                    <select class="select2 form-control select2-show-search"
                                                        name="Country" id="Country" style='width:100%;' onchange="loadStates(this.value)">
                                                        <option value="">Select Country</option>

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-sm-12 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">State </label>

                                                    <select class="select2 form-control select2-show-search"
                                                        name="State" id="State" style='width:100%;'>
                                                        <option value="">Select State</option>

                                                    </select>
                                                </div>
                                            </div>


                                            <div class="col-sm-12 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">City </label>
                                                    <input type="text" class="form-control"
                                                        placeholder="Enter City " name="City" id="City">
                                                </div>
                                            </div>



                                            <div class="col-sm-12 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">Address </label>
                                                    <textarea class="form-control"
                                                        placeholder="Enter Address " name="Address" id="Address"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="row bg-white">

                        <div class="col-sm-6 col-md-6 mb-3">
                            <label for="recipient-name" class="col-form-label">Branch <span
                                    class="text-danger">*</span></label>
                            <select class="select2 form-control select2-show-search"
                                onchange="GetCenterUserDropDown(this.value)" name="Branch" id="Branch"
                                style='width:100%;'>
                                <option value="">Select Branch</option>
                                <?php
                                    foreach($AllBranches as $Branch_value)
                                    {
                                        $selected = '';
                                        if($BranchID == $Branch_value['ID']){
                                            $selected = 'selected';
                                        }

                                        if($BranchID == -1 || $BranchID == $Branch_value['ID'])
                                        {

                                    ?>
                                <option <?php echo $selected; ?> value="<?php echo  $Branch_value['ID']?>">
                                    <?php echo  $Branch_value['BranchName']?></option>
                                <?php
                                    }
                                    }
                                    ?>
                            </select>
                        </div>

                        <div class="col-sm-6 col-md-6">
                            <div class="form-group">
                                <label class="form-label">Company Name </label>
                                <input type="text" class="form-control" placeholder="Enter Company Name"
                                    name="CompanyName" id="CompanyName">
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Type of Business <span class="text-danger">*</span></label>
                                <select class="select2 form-control select2-show-search" name="BusinessName"
                                    id="BusinessName" style='width:100%;'>
                                    <option value="">Select Business</option>
                                    <?php
                                            foreach($All_Business_Types as $All_Business_Types_value)
                                            {

                                            ?>
                                    <option value="<?php echo  $All_Business_Types_value['ID']?>">
                                        <?php echo  $All_Business_Types_value['BusinessName']?></option>
                                    <?php
                                            }
                                            ?>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Services <span class="text-danger">*</span></label>
                                <select class="select2 form-control select2-show-search" name="Services[]" id="Services"
                                    multiple style='width:100%;'>
                                    <option value="">Select Services</option>
                                    <?php
                                            foreach($All_Services as $All_Services_value)
                                            {

                                            ?>
                                    <option value="<?php echo  $All_Services_value['ID']?>">
                                        <?php echo  $All_Services_value['ServiceName']?></option>
                                    <?php
                                            }
                                            ?>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Budget </label>
                                <input type="text" class="form-control" placeholder="Enter Service Cost"
                                    name="ServiceCost" id="ServiceCost">
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Contact Person Name <span class="text-danger">*</span></label>
                                <input type="tel" class="form-control" placeholder="Enter Name" name="ContactPersonName"
                                    id="ContactPersonName">
                            </div>
                        </div>


                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Contact Person Email </label>
                                <input type="text" class="form-control" placeholder="Enter Email"
                                    name="ContactPersonEmail" id="ContactPersonEmail">
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Contact Person Phone Number <span
                                        class="text-danger">*</span></label>
                                <input type="tel" maxlength="10" onkeyup="validISNumber()" class="form-control"
                                    placeholder="Enter Phone Number" name="ContactPersonPhoneNumber"
                                    id="ContactPersonPhoneNumber">
                                <input type="hidden" id="primary_country_code" name="primary_country_code">
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Contact Person Alternative No</label>
                                <input type="tel" maxlength="10" class="form-control" placeholder="Enter AlternativeNo"
                                    name="ContactPersonAlternativeNo" id="ContactPersonAlternativeNo">
                                <input type="hidden" id="secondary_country_code" name="secondary_country_code">
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Website</label>
                                <input type="text" class="form-control" placeholder="Enter Website" name="Website"
                                    id="Website">
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-6">
                            <div class="form-group">
                                <label class="form-label">City or Address </label>
                                <input type="text" class="form-control" placeholder="Enter City or Address" name="City"
                                    id="City">
                            </div>
                        </div>


                        <div class="col-sm-3 col-md-3 mb-3" id="assinged_to_div" style="display:none;">
                            <div class="form-group">
                                <label class="form-label">Assigned To <span class="text-danger">*</span></label>
                                <select class="select2 form-control select2-show-search" name="AssignedTo"
                                    id="AssignedTo" style='width:100%;'>
                                    <option value="">Select User</option>

                                </select>
                            </div>
                        </div>

                        <div class="col-6 col-sm-3 mb-3">
                            <label class="form-label">Lead Source <span class="text-danger">*</span></label>
                            <select class="form-control" name="LeadSource" id="LeadSource" style='width:100%;'>
                                <option value="">Select Lead Source</option>
                                <?php

                                    foreach($All_Lead_Sources as $Lead_Source_value)
                                    {

                                    ?>
                                <option value="<?php echo  $Lead_Source_value['SourceName']?>">
                                    <?php echo  $Lead_Source_value['SourceName']?></option>
                                <?php

                                    }
                                    ?>
                            </select>
                        </div>

                        <div class="mb-3 col-6 col-sm-3" id="">
                            <label for="recipient-name" class="col-form-label">Lead Status <span
                                    class="text-danger">*<span></label>
                            <select class="form-control" name="LeadStatus" id="LeadStatus" style='width:100%;'>
                                <option value="">Select Status </option>
                                <?php

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
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="col-sm-3 col-md-3">
                            <div class="form-group">
                                <label class="form-label">Lead Date </label>
                                <input type="date" class="form-control" placeholder="Select Lead Date" name="LeadDate"
                                    id="LeadDate">
                            </div>
                        </div>

                    </div> -->
                    <input type="hidden" name='form_action' id='form_action' value='add'>
                    <input type="hidden" name='form_id' id='form_id' value='-1'>
                    <div class="row pt-5 pb-5 justify-content-center">
                        <div class="col-md-4 text-center">
                            <a class="btn btn-success text-white" id="lead_form_btn" onclick="AddLead()">Submit</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- End End modal  -->
