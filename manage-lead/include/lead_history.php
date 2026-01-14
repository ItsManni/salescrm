<?php if($Lead_histroy_arr){?>
<div style='background:aliceblue;'>
    <ul class="notification">
        <?php
        $i = 1;
        foreach($Lead_histroy_arr as $lead_history)
        {
            if (!empty($lead_history['CreatedDate'])) {
                $formattedDate = date('j M', strtotime($lead_history['CreatedDate']));
            } else {
                $formattedDate = "N/A";
            }

            if (!empty($lead_history['CreatedTime'])) {
                $formattedTime = date('h:i A', strtotime($lead_history['CreatedTime']));
            } else {
                $formattedTime = "N/A";
            }



        ?>
        <li>
            <div class="notification-time">
                <span class="date"><?php echo $formattedDate?></span>
                <span class="time"><?php echo $formattedTime?></span>
            </div>
            <div class="notification-icon">
                <a href="javascript:void(0);"></a>
            </div>
            <div class="notification-time-date mb-2 d-block d-md-none">
                <span class="date"><?php echo $formattedDate?></span>
                <span class="time ms-2"><?php echo $formattedTime?></span>
            </div>
            <div class="notification-body">
                <div class="media mt-0">
                    <div class="main-avatar avatar-md online">
                        <span
                            class="avatar avatar-md bradius bg-info me-3"><?php echo $core->getNameFSLetter($user_array2[$lead_history['CreatedBy']]);?></span>
                    </div>
                    <div class="media-body ms-3 d-flex">
                        <div class="">
                            <p class="fs-15 text-dark fw-bold mb-0"><b>Assigned To -
                                </b><?php echo $user_array[$lead_history['AssignedTo']]?></p>
                            <p class="fs-15 text-dark"><b>Status - </b> <span class='badge bg-primary'><?php echo $lead_history['Status']?></span></p>
                            <p class="mb-0 fs-13 text-dark"><b>Remarks</b> - <?php echo $lead_history['Remark']?></p>
                        </div>
                        <div class="notify-time">
                            <p class="mb-0 text-muted fs-11">
                                <?php echo $user_array2[$lead_history['CreatedBy']];?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <?php
        }
        ?>

    </ul>
</div>

<?php }else{ ?>

    <div style="width:50%;">
        <img src="../project-assets/images/lead-history.png" alt="" style="width:100%">
    </div>
<?php } ?>