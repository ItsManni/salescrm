<?php 

$inputTimestamp = strtotime($Essay_Question_Details['CreatedDate']);

// Format the date as "07-Sep-2023"
$formattedDate = date("d-M-Y", $inputTimestamp);

$inputTime = new DateTime($Essay_Question_Details['CreatedTime']);

// Format the time as "12:11 PM"
$formattedTime = $inputTime->format("h:i A");


?>
<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                <div class="card">
                                    <div class="main-content-app pt-0" style="height:100vh">
                                        <div class="main-content-body main-content-body-chat h-100">
                                            <div class="main-chat-header pt-3 d-block d-sm-flex">
                                                <!-- <div class="main-img-user online"><img alt="avatar" src="../project-assets/images/avtar.png"></div> -->
                                                <div class="main-chat-msg-name mt-2">
                                                    <h6><?php echo $Essay_Question_Details['Question'];?></h6>
                                                    <span class="dot-label bg-success"></span><small class="me-3"><b style="color:#c7900f;">Question by :</b> <?php echo $educator_array[$Essay_Question_Details['Educator']];?> <b style="color:#c7900f;">Date/Time : </b><?php echo $formattedDate ?> <?php echo $formattedTime ?></small>
                                                    <br>
                                                    <span class="dot-label bg-success"></span><small class="me-3"><b style="color:#c7900f;">Total Answer Commented :</b> <?php echo count($Question_Comment_Details) ?> </small>
                                                </div>
                                                <nav class="nav">
                                                   <!--  <div class="">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="Search ...">
                                                            <span class="input-group-text btn bg-white text-muted border-start-0"><i class="fe fe-search"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="dropdown">
                                                        <a class="nav-link" href="javascript:void(0)" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fe fe-more-horizontal"></i></a>
                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item" href="javascript:void(0)"><i class="fe fe-phone-call me-1"></i> Phone Call</a>
                                                            <a class="dropdown-item" href="javascript:void(0)"><i class="fe fe-video me-1"></i> Video Call</a>
                                                            <a class="dropdown-item" href="javascript:void(0)"><i class="fe fe-user-plus me-1"></i> Add Contact</a>
                                                            <a class="dropdown-item" href="javascript:void(0)"><i class="fe fe-trash-2 me-1"></i> Delete</a>
                                                        </div>
                                                    </div> -->
                                                </nav>
                                            </div>
                                            <!-- main-chat-header -->
                                            <div class="main-chat-body flex-2" id="ChatBody" style="overflow-y:scroll;">
                                                <div class="content-inner">
                                                    <?php
                                                    $i = 1;
                                                    foreach($Question_Comment_Details as $Question_Comment)
                                                    {
                                                        
                                                    ?>
                                                        <div class="media chat-left">
                                                       
                                                            <div class="media-body">
                                                                <div class="main-msg-wrapper">
                                                                     <?php echo $Question_Comment['Comment']; ?>
                                                                </div>
                                                                <div>
                                                                    <span><?php echo $Question_Comment['CreatedTime']; ?> <b style="color:#c7900f;">Comment by : </b> <?php echo $Question_Comment['Username']; ?></span> <a href="javascript:void(0)"><i class="icon ion-android-more-horizontal"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <?php
                                                    $i++;
                                                    }
                                                    ?> 
                                                </div>
                                            </div>
                                            <form id="comment_form" onsubmit="return false;">
                                            <div class="main-chat-footer">
                                                
                                                    <input class="form-control" name="comment" id="comment" placeholder="Type your comment here..." type="text">
                                                    <a class="nav-link" data-bs-toggle="tooltip" href="javascript:void(0)" title="Attach a File"><i class="fe fe-paperclip"></i></a>
                                                    <button onclick="AddQuestionComment()" class="btn btn-icon  btn-primary brround"><i class="fa fa-paper-plane-o"></i></button>
                                                    <nav class="nav">
                                                    </nav>
                                                    <input type="hidden" name="question_id" value="<?php echo $QuestionID ?>">
                                                    <input type="hidden" name="username" value="<?php echo $_SESSION['pp_email'] ?>">
                                                
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>