
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
                        <th class="wd-15p border-bottom-0">Name</th>
                        <td class="wd-15p border-bottom-0"><?php echo $lead_details['Name']; ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Contact Details</th>
                        <td class="wd-15p border-bottom-0"><?php echo $lead_details['Email']; ?><br><?php echo $lead_details['PhoneNumber']; ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Gender</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['Gender'] != ""){
                             echo $lead_details['Gender']; 
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Course</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['Course'] != ""){
                             echo $courses_array[$lead_details['Course']]; 
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Mode</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['Mode'] != ""){
                             echo $lead_details['Mode']; 
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">State</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['State'] != ""){
                             echo $lead_details['State']; 
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
                        <th class="wd-15p border-bottom-0">Address</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['Address'] != ""){
                             echo $lead_details['Address']; 
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
                        <th class="wd-15p border-bottom-0">Created Date</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['CreatedDate'] != ""){
                             echo $lead_details['CreatedDate']; 
                         }else{
                             echo "N/A";
                         }
                        ?></td>
                    </tr>

                    <tr>
                        <th class="wd-15p border-bottom-0">Created Time</th>
                        <td class="wd-15p border-bottom-0"><?php
                         if($lead_details['CreatedTime'] != ""){
                             echo $lead_details['CreatedTime']; 
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
