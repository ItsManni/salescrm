<!-- start add modal  -->
<?php
@session_start();
require_once('../../include/autoloader.inc.php');
$dbh = new Dbh();
$core = new Core();
$conn = $dbh->_connectodb();
$ManageLead = new ManageLead($conn);
$LeadID = -1;
if(isset($_POST['LeadID'])){
    $LeadID= $_POST['LeadID'];
}
$lead_details = $ManageLead->GetLeadsDetailsByID($LeadID);
$Lead_remarks_arr = $ManageLead->GetAllLeadRemarks($conn, $LeadID);

$where = " where 1";
    $user_array_temp = $core->_getTableRecords($conn,'user_details',$where);
    $user_array = array();
    $user_array2 = array();
    foreach($user_array_temp as $user)
    {
        $UserID = $user['ID'];
        $User_email = $user['Email'];
        $user_array[$UserID] = $user['Name'];
        $user_array2[$User_email] = $user['Name'];
    }

    $where = " where 1";
    $lead_status_array_temp = $core->_getTableRecords($conn,'lead_status',$where);
    $lead_status_array = array();
    foreach($lead_status_array_temp as $lead_status)
    {
        $StatusID = $lead_status['ID'];
        $lead_status_array[$StatusID] = $lead_status['Status'];
    }

    $where = " where 1";
    $type_of_business_array_temp = $core->_getTableRecords($conn,'type_of_business',$where);
    $type_of_business_array = array();
    foreach($type_of_business_array_temp as $type_of_business)
    {
        $BusinessID = $type_of_business['ID'];
        $type_of_business_array[$BusinessID] = $type_of_business['BusinessName'];
    }

    $where = " where 1";
    $services_array_temp = $core->_getTableRecords($conn,'services',$where);
    $services_array = array();
    foreach($services_array_temp as $services)
    {
        $ServiceID = $services['ID'];
        $services_array[$ServiceID] = $services['ServiceName'];
    }

    $where = " where 1";
    $branch_array_temp = $core->_getTableRecords($conn,'branch',$where);
    $branch_array = array();
    foreach($branch_array_temp as $user)
    {
        $Branch_ID = $user['ID'];
        $branch_array[$Branch_ID] = $user['BranchName'];
    }
?>
<div class="card-body">
    <div class="panel panel-primary">
        <div class="tab-menu-heading tab-menu-heading-boxed">
            <div class="tabs-menu-boxed">
                <!-- Tabs -->
                <ul class="nav panel-tabs">
                    <li><a href="#lead_basic_info" class="active" data-bs-toggle="tab">Basic Info</a>
                    </li>
                    <li><a href="#lead_all_remarks" data-bs-toggle="tab">All Remarks</a></li>
                </ul>
            </div>
        </div>
        <div class="panel-body tabs-menu-body">
            <div class="tab-content">
                <div class="tab-pane active" id="lead_basic_info">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="all_student_detals">
                            <tbody>
                                <tr>
                                    <th class="wd-15p border-bottom-0">Lead ID</th>
                                    <td class="wd-15p border-bottom-0">
                                        DD-<?php echo $lead_details['ID']; ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Center/Branch</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                                if($lead_details['BranchID'] != -1){
                                                                    echo $branch_array[$lead_details['BranchID']];
                                                                }else{
                                                                    echo "N/A";
                                                                }

                                                            ?></td>
                                </tr>


                                <tr>
                                    <th class="wd-15p border-bottom-0">CompanyName</th>
                                    <td class="wd-15p border-bottom-0"><?php echo $lead_details['CompanyName']; ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Type of Business</th>
                                    <td class="wd-15p border-bottom-0">
                                        <?php echo $type_of_business_array[$lead_details['TypeofBusiness']]; ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Services</th>
                                    <td class="wd-15p border-bottom-0">
                                        <?php
                                                                if (!empty($lead_details['Services'])) {

                                                                    $serviceNames = [];
                                                                    $serviceIDs = explode(',', $lead_details['Services']); // "4,3,1" → [4,3,1]

                                                                    foreach ($serviceIDs as $sid) {
                                                                        if (isset($services_array[$sid])) {
                                                                            $serviceNames[] = $services_array[$sid];
                                                                        }
                                                                    }

                                                                    echo implode(', ', $serviceNames);

                                                                } else {
                                                                    echo "N/A";
                                                                }
                                                                ?>
                                    </td>

                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Service Cost</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['ServiceCost'] != ""){
                                                                echo $lead_details['ServiceCost'];
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Contact Person Name</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['ContactPersonName'] != ""){
                                                                echo $lead_details['ContactPersonName'];
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Contact Person Email</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['ContactPersonEmail'] != ""){
                                                                echo '<a href="mailto:' . $lead_details['ContactPersonEmail'] . '">'
                                                                . $lead_details['ContactPersonEmail'] . '</a>';
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>



                                <tr>
                                    <th class="wd-15p border-bottom-0">Contact Person Phone Number</th>
                                    <td class="wd-15p border-bottom-0">
                                        <?php
                                                                if (!empty($lead_details['ContactPersonPhoneNumber'])) {
                                                                    $dialCode = !empty($lead_details['PrimaryDialCode']) ? $lead_details['PrimaryDialCode'] : '';
                                                                    $phoneNumber = $lead_details['ContactPersonPhoneNumber'];

                                                                    // Combine dial code and number
                                                                    $fullNumber = $dialCode . $phoneNumber;

                                                                    // Display as a clickable phone link
                                                                    echo '<a href="tel:' . htmlspecialchars($fullNumber) . '">'
                                                                        . htmlspecialchars($dialCode . '-' . $phoneNumber)
                                                                        . '</a>';
                                                                } else {
                                                                    echo "N/A";
                                                                }
                                                                ?>
                                    </td>
                                </tr>


                                <tr>
                                    <th class="wd-15p border-bottom-0">Contact Person Alternative No</th>
                                    <td class="wd-15p border-bottom-0">
                                        <?php
                                                                if (!empty($lead_details['ContactPersonAlternativeNo'])) {
                                                                    $secondaryDial = !empty($lead_details['SecondaryDialCode']) ? $lead_details['SecondaryDialCode'] : '';
                                                                    $altNumber = $lead_details['ContactPersonAlternativeNo'];

                                                                    // Combine dial code and number for the link
                                                                    $fullAltNumber = $secondaryDial . $altNumber;

                                                                    // Display as a clickable phone link
                                                                    echo '<a href="tel:' . htmlspecialchars($fullAltNumber) . '">'
                                                                        . htmlspecialchars($secondaryDial . '-' . $altNumber)
                                                                        . '</a>';
                                                                } else {
                                                                    echo "N/A";
                                                                }
                                                                ?>
                                    </td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Website</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['Website'] != ""){
                                                                echo '<a href="' . $lead_details['Website'] . '" target="_blank">' . $lead_details['Website'] . '</a>';
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">City</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['City'] != ""){
                                                                echo $lead_details['City'];
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>


                                <tr>
                                    <th class="wd-15p border-bottom-0">Assigned To</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['AssignedTo'] != -1){
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
                                                            if($lead_details['Status'] != ""){
                                                                echo $lead_details['Status'];
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>



                                <tr>
                                    <th class="wd-15p border-bottom-0">Lead Source</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                                            if($lead_details['LeadSource'] != ""){
                                                                echo $lead_details['LeadSource'];
                                                            }else{
                                                                echo "N/A";
                                                            }
                                                            ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Lead Date</th>
                                    <td class="wd-15p border-bottom-0"><?php
                                    if($lead_details['LeadDate'] != ""){
                                        echo $lead_details['LeadDate'];
                                    }else{
                                        echo "N/A";
                                    }
                                    ?></td>
                                </tr>

                                <tr>
                                    <th class="wd-15p border-bottom-0">Lead Update Date & Time</th>
                                    <td class="wd-15p border-bottom-0">
                                        <?php
                                        if (!empty($lead_details['CreatedDate']) && !empty($lead_details['CreatedTime'])) {
                                            echo $lead_details['CreatedDate'] . ' ' . $lead_details['CreatedTime'];
                                        } elseif (!empty($lead_details['CreatedDate'])) {
                                            echo $lead_details['CreatedDate'];
                                        } else {
                                            echo "N/A";
                                        }
                                        ?>
                                    </td>
                                </tr>

                            </tbody>

                        </table>
                    </div>
                </div>
                <div class="tab-pane" id="lead_all_remarks">
                    <div class="content-inner">
                        <?php
                        if (!empty($Lead_remarks_arr)) {
                            $i = 1;
                            foreach ($Lead_remarks_arr as $Student_remark) {

                                // Format date & time
                                $remark_createdDateTime = 'N/A';
                                if (!empty($Student_remark['CreatedDate']) && !empty($Student_remark['CreatedTime'])) {
                                    $remark_createdDateTime = date(
                                        'd M Y h:i A',
                                        strtotime($Student_remark['CreatedDate'] . ' ' . $Student_remark['CreatedTime'])
                                    );
                                }
                        ?>
                            <div class="media chat-left">
                                <div class="media-body">
                                    <div class="main-msg-wrapper">
                                        <?php echo nl2br(htmlspecialchars($Student_remark['Remark'])); ?>
                                    </div>

                                    <div class="text-muted small mt-1">
                                        <?php echo $remark_createdDateTime; ?>
                                        <b style="color:#c7900f;"> Re-marked by : </b>
                                        <?php
                                            echo isset($user_array2[$Student_remark['CreatedBy']])
                                                ? htmlspecialchars($user_array2[$Student_remark['CreatedBy']])
                                                : 'N/A';
                                        ?>
                                        <a href="javascript:void(0)" class="float-end">
                                            <i class="icon ion-android-more-horizontal"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php
                                $i++;
                            }
                        } else {
                        ?>
                            <div class="alert alert-info text-center">
                                No remarks available for this lead.
                            </div>
                        <?php } ?>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End End modal  -->