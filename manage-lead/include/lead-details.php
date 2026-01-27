
<div class="row justify-content-end mt-4 mb-3">
    <div class="pr-3 text-end">
        <!-- <span onclick="OpenModal_StudentEditDetails()" class="btn btn-success cursor-pointer">Edit Details</span> -->

    </div>
</div>

<span class="font-weight-bold mt-2 mb-2 d-block" style="color: #e1a300;
    font-weight: 600;">Lead General Details:</span>

<div class="card">
    <div class="card-body p-0">
        <div class="table-responsive">
            <table class="table table-bordered text-nowrap border-bottom"
                id="all_student_detals">
                <tbody>
                    <tr>
                        <th class="wd-15p border-bottom-0">Lead ID</th>
                        <td class="wd-15p border-bottom-0"><?php echo $_LeadName ?><?php echo $lead_details['ID']; ?></td>
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
                        <td class="wd-15p border-bottom-0"><?php echo $type_of_business_array[$lead_details['TypeofBusiness']]; ?></td>
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
</div>
