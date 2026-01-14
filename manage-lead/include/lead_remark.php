<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
    <div class="card">
        <div class="main-content-app pt-0" style="height:60vh">
            <div class="main-content-body main-content-body-chat h-100">
                <div class="main-chat-header pt-3 d-block d-sm-flex">
                    <!-- <div class="main-img-user online"><img alt="avatar" src="../project-assets/images/avtar.png"></div> -->

                    <nav class="nav">
                    </nav>
                </div>
                <!-- main-chat-header -->
                <div class="main-chat-body flex-2" id="ChatBody" style="overflow-y:scroll;">
                    <div class="content-inner">
                        <?php
                        $i = 1;
                        foreach($Lead_remarks_arr as $Student_remark)
                        {
                            $remark_createdDateTime = 'N/A';

                            if (!empty($Student_remark['CreatedDate']) && !empty($Student_remark['CreatedTime'])) {
                                $createdDateTime = date(
                                    'd M Y h:i A',
                                    strtotime($Student_remark['CreatedDate'] . ' ' . $Student_remark['CreatedTime'])
                                );

                                $remark_createdDateTime = $createdDateTime;
                            }
                        ?>
                            <div class="media chat-left">

                                <div class="media-body">
                                    <div class="main-msg-wrapper">
                                         <?php echo $Student_remark['Remark']; ?>
                                    </div>
                                    <div>
                                        <span><?php echo $remark_createdDateTime; ?> <b style="color:#c7900f;">Re-marked by : </b> <?php
                                            echo isset($user_array2[$Student_remark['CreatedBy']])
                                                ? $user_array2[$Student_remark['CreatedBy']]
                                                : 'N/A';
                                            ?></span> <a href="javascript:void(0)"><i class="icon ion-android-more-horizontal"></i></a>
                                    </div>
                                </div>
                            </div>
                        <?php
                        $i++;
                        }
                        ?>



                    </div>
                </div>
                <form id="lead_remark_form" onsubmit="return false;">
                <div class="main-chat-footer">

                        <input class="form-control" name="lead_remark" id="leadremark_input" placeholder="Type your remark here..." type="text">
                        <a class="nav-link" data-bs-toggle="tooltip" href="javascript:void(0)" title="Attach a File"></a>
                        <button onclick="AddLeadRemark()" class="btn btn-icon  btn-primary">Add Remark</button>
                        <nav class="nav">
                        </nav>
                        <input type="hidden" name="LeadID" value="<?php echo $LeadID ?>">


                </div>
                </form>
            </div>
        </div>
    </div>
</div>
