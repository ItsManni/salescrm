  <!--APP-SIDEBAR-->
  <?php
  $navigation = new Navigation();
  $navigation->setNavigation($_SESSION['pp_UserType']);


  ?>
  <div class="sticky">
                <div class="app-sidebar__overlay" data-bs-toggle="sidebar"></div>
                <div class="app-sidebar">
                    <div class="side-header">
                        <a class="header-brand1" href="./admin-dashboard">
                            <img src="<?= $_ProductLogo ?>" class="header-brand-img desktop-logo" alt="logo">
                            <img src="<?= $_ProductIcon ?>" class="header-brand-img toggle-logo"
                                alt="logo">
                            <img src="<?= $_ProductIcon ?>" class="header-brand-img light-logo" alt="logo">
                            <img src="<?= $_ProductLogo ?>" class="header-brand-img light-logo1" alt="logo">
                        </a>
                        <!-- LOGO -->
                    </div>
                    <div class="main-sidemenu">
                        <div class="slide-left disabled" id="slide-left"><svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191" width="24" height="24" viewBox="0 0 24 24"><path d="M13.293 6.293 7.586 12l5.707 5.707 1.414-1.414L10.414 12l4.293-4.293z" /></svg></div>
                        <ul class="side-menu">
                            <li class="sub-category">
                                <h3>Main</h3>
                            </li>
                            <?php
                            if($navigation->_Nav_Dashboard)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item has-link" id="dasboard" data-bs-toggle="slide" href="../dashboard/admin-dashboard"><i
                                            class="side-menu__icon fe fe-home"></i><span
                                            class="side-menu__label">Dashboard</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_PaymentLink)
                            {
                            ?>

                           <?php
                            }
                            if($navigation->_Nav_ManageLead)
                            {
                            ?>
                            <li class="sub-category">
                                <h3>Lead Management</h3>
                            </li>

                            <?php
                            }
                            ?>

                            <?php
                            if($navigation->_Nav_ManageLead)
                            {
                            ?>

                                <!-- <li class="slide">
                                    <a class="side-menu__item" id="nav_manage_lead" data-bs-toggle="slide" href="../manage-lead/view-all-assigned-lead"><i class="side-menu__icon fa fa-money"></i><span class="side-menu__label">Manage Leads</span></a>
                                </li>  -->

                                <li class="slide">

                                    <a class="side-menu__item" id="nav_manage_lead" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fe fe-slack"></i><span
                                            class="side-menu__label">Manage Leads</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="nav_manage_lead_li">
                                        <li class="panel sidetab-menu">
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)"></a></li>
                                                            <li><a href="../manage-lead/view-all-assigned-lead" class="slide-item" id="nav_all_lead">All Leads</a></li>
                                                            <li><a href="../manage-lead/view-all-assigned-lead" class="slide-item" id="nav_monthly_affairs">All Not Action </a></li>
                                                            <li><a href="../manage-lead/view-all-convert-lead" class="slide-item" id="nav_convert">All Converted</a></li>
                                                        </ul>
                                                </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                            <?php
                            }
                            ?>
                            <?php
                            if($navigation->_Nav_Telecaller_Leads)
                            {
                            ?>

                                <li class="slide">
                                    <a class="side-menu__item" id="nav_telecaller_leads" data-bs-toggle="slide" href="../manage-lead/view-all-telecaller-leads"><i class="side-menu__icon fa fa-money"></i><span class="side-menu__label">Telecaller Leads</span></a>
                                </li>

                            <?php
                            }
                            ?>
                            <?php
                            if($navigation->_Nav_Lead_Analytics)
                            {
                            ?>

                                <li class="slide">
                                    <a class="side-menu__item" id="nav_manage_lead" data-bs-toggle="slide" href="../manage-lead/view_lead_analytics"><i class="side-menu__icon fa fa-money"></i><span class="side-menu__label">Lead Analytics</span></a>
                                </li>

                            <?php
                            }
                            ?>

                            <?php
                            if($navigation->_Nav_Enquiries)
                            {
                            ?>
                                <li class="slide">

                                    <a class="side-menu__item" id="nav_enquiry" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fe fe-slack"></i><span
                                            class="side-menu__label">Enquiry</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="enquiry_li">
                                        <li class="panel sidetab-menu">
                                            <div class="tab-menu-heading p-0 pb-2 border-0">
                                                <div class="tabs-menu ">
                                                    <ul class="nav panel-tabs">
                                                        <li><a href="#side1" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
                                                        <li><a href="#side2" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)">Enquiry</a></li>
                                                            <li><a href="../form-enquiry/view-all-course-form-enquiry" id="course_form" class="slide-item">Course Form</a></li>
                                                            <li><a href="../form-enquiry/view-all-scholarship-enquiry" class="slide-item" id="nav_scholarship_form">Scholarship Form</a></li>
                                                            <li><a href="../form-enquiry/view-all-booklet-enquiry.php" class="slide-item" id="nav_booklet_form">Booklet Form</a></li>
                                                            <li><a href="../form-enquiry/view-all-mslv-enquiry.php" class="slide-item" id="nav_mslv_form">MSLV Form</a></li>
                                                            <li><a href="../form-enquiry/view-all-mentorship-enquiry.php" class="slide-item" id="nav_mentorship_form">Mentorship Form</a></li>
                                                            <li><a href="../form-enquiry/view-all-get-in-touch-enquiry" class="slide-item" id="nav_getintouch">Contact</a></li>
                                                            <!-- <li><a href="chat.html" class="slide-item"> Chat</a></li>
                                                            <li><a href="notify.html" class="slide-item"> Notifications</a></li>
                                                            <li><a href="sweetalert.html" class="slide-item"> Sweet alerts</a></li>
                                                            <li><a href="rangeslider.html" class="slide-item"> Range slider</a></li> -->
                                                        </ul>
                                                        <!-- <div class="menutabs-content mt-5 p-0">
                                                            <div class="Annoucement_card">
                                                                <div class="text-center">
                                                                    <div>
                                                                        <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                        <div class="bg-layer">
                                                                            <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                        </div>
                                                                        <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                    </div>
                                                                </div>
                                                                <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                    <!-- <div class="tab-pane" id="side2">
                                                        <h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                        <div class="main-chat-list tab-pane">
                                                            <div class="media border-0 px-1 new border-top-0">
                                                                <div class="main-img-user online">
                                                                    <img alt="" src="../theme-assets/images/users/5.jpg">
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Raymart Santiago</span> <span>10 min</span>
                                                                    </div>
                                                                    <p> Hey! there I'm available </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user">
                                                                    <img alt="" src="../assets/images/users/6.jpg"> <span>3</span>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Ariana Monino</span> <span>30 min</span>
                                                                    </div>
                                                                    <p>Good Morning</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Reynante Labares</span> <span>9.40 am</span>
                                                                    </div>
                                                                    <p> Nice to meet you </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Joyce Chua</span> <span>11.20 am</span>
                                                                    </div>
                                                                    <p> Hi, How are you? </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                    </div>
                                                                    <p> Hey! there I'm available </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user">
                                                                    <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                    </div>
                                                                    <p>Typing...</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                    </div>
                                                                    <p> Hey! there I'm available </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                    </div>
                                                                    <p>I have some work</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                    </div>
                                                                    <p>I have some work</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                    </div>
                                                                    <p>I have some work</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>John Pratts</span> <span>20/06/2021</span>
                                                                    </div>
                                                                    <p>I have some work</p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                    </div>
                                                                    <p> Hey! there I'm available </p>
                                                                </div>
                                                            </div>
                                                            <div class="media border-0 px-1 new border-bottom-0">
                                                                <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                                <div class="media-body">
                                                                    <div class="media-contact-name">
                                                                        <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                    </div>
                                                                    <p> Hey! there I'm available </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Admissions_Manage)
                            {
                            ?>

                            <li class="sub-category">
                                <h3>Admission Management</h3>
                            </li>


                            <?php
                            }
                            if($navigation->_Nav_Company)
                            {
                            ?>
                                <!--li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="../company/view-company.php"><i class="side-menu__icon fa fa-building"></i><span class="side-menu__label">Company</span></a>
                                </li-->


                             <?php
                            }
                            if($navigation->_Nav_Admissions)
                            {
                            ?>
                                <!-- <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="../admission/view-all-admission.php"><i class="side-menu__icon fa fa-money"></i><span class="side-menu__label">All Admission</span></a>
                                </li>  -->

                            <?php
                            }
                            if($navigation->_Nav_Admissions)
                            {
                            ?>

                                <li class="slide">

                                    <a class="side-menu__item" id="nav_admission" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fe fe-slack"></i><span
                                            class="side-menu__label">Admission</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="nav_admission_li">
                                        <li class="panel sidetab-menu">
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)"></a></li>
                                                            <?php
                                                            if($navigation->_Nav_Add_Admissions)
                                                            {
                                                            ?>
                                                            <li><a href="../admission/add-admission-form" class="slide-item" id="nav_add_admission">Add Admission Form</a></li>
                                                            <?php
                                                            }
                                                            if($navigation->_Nav_Pending_Admissions)
                                                            {
                                                            ?>
                                                            <li><a href="../admission/view-all-pending-admission" class="slide-item" id="nav_all_pending_admission">View All Pending Admission</a></li>
                                                            <?php } ?>
                                                            <li><a href="../admission/view-all-admission" class="slide-item" id="nav_all_admission">View All Admission</a></li>
                                                            <?php
                                                            if($navigation->_Nav_All_Enrollment)
                                                            {
                                                            ?>
                                                            <li><a href="../admission/view-all-admission-enrollments" class="slide-item" id="nav_all_enrollment">View All Enrollments</a></li>
                                                            <?php
                                                            }
                                                            if($navigation->_Nav_Admissions_Inside)
                                                            {
                                                            ?>
                                                            <li><a href="../admission/view-all-admission-transaction" class="slide-item" id="nav_all_transactions">View All Transactions</a></li>
                                                            <li><a href="../admission/view-all-refund" class="slide-item" id="nav_all_refund">View All Refunded</a></li>
                                                            <li><a href="../admission/view-all-drop" class="slide-item" id="nav_all_droped">View All Dropped</a></li>
                                                            <li><a href="../admission/view-all-admission-pending-payments" class="slide-item" id="nav_all_pending_payment">View Pending Payments</a></li>
                                                            <?php
                                                            }
                                                            if($navigation->_Nav_Admissions_Fee_Reminders)
                                                            {
                                                            ?>
                                                            <li><a href="../admission/view-all-fee-reminders" class="slide-item" id="nav_fee_reminders">View Fee Reminders</a></li>
                                                            <?php } ?>
                                                        </ul>
                                                </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>



                             <?php
                            }
                            if($navigation->_Nav_PaymentLink)
                            {
                            ?>

                                <li class="slide">
                                    <a class="side-menu__item" id="payment_link" data-bs-toggle="slide" href="../student-fee/add-payment-gateway"><i class="side-menu__icon fa fa-link"></i><span class="side-menu__label">Generate Payment Link</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_All_Transaction)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_all_transaction" data-bs-toggle="slide" href="../payment/view-all-payment.php"><i class="side-menu__icon fa fa-money"></i><span class="side-menu__label">Generate Link Transactions</span></a>
                                </li>


                            <?php
                            }
                            ?>

                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="../form-enquiry/view-all-course-form-enquiry"><i class="side-menu__icon fa fa-users"></i><span class="side-menu__label">All Courses Enquiry</span></a>
                            </li>

                            <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="../form-enquiry/view-all-scholarship-enquiry"><i class="side-menu__icon fe fe-users"></i><span class="side-menu__label">All Scholarship Enquiry</span></a>
                            </li>

                            <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="../form-enquiry/view-all-get-in-touch-enquiry"><i class="side-menu__icon fe fe-users"></i><span class="side-menu__label">All Contact Enquiry</span></a>
                            </li> -->

                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="../sub-admin/view-sub-admin"><i
                                        class="side-menu__icon fe fe-users"></i><span
                                        class="side-menu__label">Sub Admin</span></a>
                            </li>

                            <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="../file-manager/file-manager"><i class="side-menu__icon fe fe-folder"></i><span class="side-menu__label">File Manager</span></a>
                            </li> -->


                            <?php
                            if($navigation->_Nav_Resources)
                            {
                            ?>

                            <li class="sub-category">
                                <h3>Internal Management</h3>
                            </li>

                            <?php
                            }

                             if($navigation->_Nav_courses)
                            {
                            ?>
                                <li class="slide">

                                    <a class="side-menu__item" id="nav_course_assets" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fa fa-archive"></i><span
                                            class="side-menu__label">Courses Assets</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="nav_course_assets_li">
                                        <li class="panel sidetab-menu">
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)"></a></li>
                                                            <?php if($navigation->_Nav_Add_Courses){?>
                                                            <li><a href="../courses/view-all-courses" id="nav_course" class="slide-item">View/Add Courses</a></li>
                                                            <?php } if ($navigation->_Nav_Add_Book) {?>
                                                            <li><a href="../books/view-all-books" class="slide-item" id="nav_books">View/Add Books</a></li>
                                                            <?php } if ($navigation->_Nav_Courses_Counsellor) {?>
                                                            <li><a href="../courses/view-course-counsellor" class="slide-item" id="nav_course_counsoller">View Course Counsellor</a></li>
                                                            <?php }?>
                                                        </ul>
                                                </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>


                            <?php
                            }

                             if($navigation->_Nav_Resources)
                            {
                            ?>
                                <li class="slide">

                                    <a class="side-menu__item" id="nav_freeresource" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fe fe-slack"></i><span
                                            class="side-menu__label">Free Resources</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="nav_freeresource_li">
                                        <li class="panel sidetab-menu">
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)"></a></li>
                                                            <li><a href="../free-resources/view-current-all-pdfs" class="slide-item" id="nav_current_affairs">Current Affairs</a></li>
                                                            <li><a href="../free-resources/view-monthly-all-pdfs" class="slide-item" id="nav_monthly_affairs">Monthly Affairs</a></li>
                                                            <li><a href="../free-resources/view-all-magazine" class="slide-item" id="nav_magazine">Magazine</a></li>
                                                        </ul>
                                                </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>


                             <?php
                            }
                            if($navigation->_Nav_Website_Admissions)
                            {
                            ?>
                                <!-- <li class="slide">
                                    <a class="side-menu__item" id="nav_website_admission" data-bs-toggle="slide" href="../form-enquiry/view-all-website-admissions.php"><i class="side-menu__icon fa fa-graduation-cap"></i><span class="side-menu__label">Website Admissions</span></a>
                                </li>  -->



                            <?php
                            }
                            if($navigation->_Nav_Company_details)
                            {
                            ?>
                                <!-- <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="../company-details/view-company"><i class="side-menu__icon fa fa-building"></i><span class="side-menu__label">Company Info</span></a>
                                </li>  -->



                            <?php
                            }
                            if($navigation->_Nav_Educator)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_educator" data-bs-toggle="slide" href="../educator/view-all-educators"><i class="side-menu__icon fa fa-users"></i><span class="side-menu__label">Educators</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Educator_Essay)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_educator_essay" data-bs-toggle="slide" href="../educator-essay/view-all-educator-essay"><i class="side-menu__icon fa fa-users"></i><span class="side-menu__label">Educators Essay</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Test)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_scholarship" data-bs-toggle="slide" href="../scholarship/coming-soon"><i class="side-menu__icon fa fa-users"></i><span class="side-menu__label">Scholarship  Test</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Test_Result)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_scholarship_result" data-bs-toggle="slide" href="../scholarship-test/coming-soon"><i class="side-menu__icon fa fa-file-text"></i><span class="side-menu__label">Scholarship Result</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Book_Dispatch)
                            {
                            ?>
                                <li class="slide">

                                    <a class="side-menu__item" id="nav_book_order" data-bs-toggle="slide" href="javascript:void(0)"><i
                                            class="side-menu__icon fa fa-archive"></i><span
                                            class="side-menu__label">Books Orders</span><i
                                            class="angle fe fe-chevron-right"></i>
                                    </a>
                                    <ul class="slide-menu" id="nav_book_order_li">
                                        <li class="panel sidetab-menu">
                                            <div class="panel-body tabs-menu-body p-0 border-0">
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="side1">
                                                        <ul class="sidemenu-list">
                                                            <li class="side-menu-label1"><a href="javascript:void(0)"></a></li>
                                                            <li><a href="../books-dispatch/view-all-placed-books"  id="nav_placed_order" class="slide-item">All Placed Orders</a></li>
                                                            <li><a href="../books-dispatch/view-all-dispatched-books" id="nav_dispatch_order" class="slide-item">All Dispatch Orders</a></li>
                                                            <li><a href="../books-dispatch/view-all-delivered-books" id="nav_delivered_order" class="slide-item">All Delivered Orders</a></li>
                                                        </ul>
                                                </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Configurations)
                            {
                            ?>

                            <li class="sub-category">
                                <h3>Setting</h3>
                            </li>

                            <?php
                            }
                            if($navigation->_Nav_Invoice_no)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_invoice" data-bs-toggle="slide" href="../invoice/view-all-invoice"><i class="side-menu__icon fa fa-file-text"></i><span class="side-menu__label">Invoice No</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Users)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_user" data-bs-toggle="slide" href="../users/view-users.php"><i class="side-menu__icon fa fa-users"></i><span class="side-menu__label">Users</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Branch)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_branch" data-bs-toggle="slide" href="../branch/view-all-branch"><i class="side-menu__icon fa fa-building"></i><span class="side-menu__label">Centers / Branches</span></a>
                                </li>

                            <?php
                            }
                            if($navigation->_Nav_Configurations)
                            {
                            ?>
                                <li class="slide">
                                    <a class="side-menu__item" id="nav_configuration" data-bs-toggle="slide" href="../configuration/view-configuration"><i class="side-menu__icon fa fa-gear"></i><span class="side-menu__label">Configuration</span></a>
                                </li>

                            <?php
                            }
                            ?>


                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-package"></i><span
                                        class="side-menu__label">Bootstrap</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu mega-slide-menu">
                                    <li class="panel sidetab-menu">
                                        <div class="tab-menu-heading p-0 pb-2 border-0">
                                            <div class="tabs-menu ">
                                                <ul class="nav panel-tabs">
													<li><a href="#side5" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side6" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="panel-body tabs-menu-body p-0 border-0">
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="side5">
                                                    <ul class="sidemenu-list mega-menu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Bootstrap</a></li>
                                                        <li><a href="alerts.html" class="slide-item"> Alerts</a></li>
                                                        <li><a href="buttons.html" class="slide-item"> Buttons</a></li>
                                                        <li><a href="colors.html" class="slide-item"> Colors</a></li>
                                                        <li><a href="avatarsquare.html" class="slide-item"> Avatar Square</a></li>
                                                        <li><a href="avatar-radius.html" class="slide-item"> Avatar Radius</a></li>
                                                        <li><a href="avatar-round.html" class="slide-item"> Avatar Rounded</a></li>
                                                        <li><a href="dropdown.html" class="slide-item"> Dropdowns</a></li>
                                                        <li><a href="listgroup.html" class="slide-item"> List Group</a></li>
                                                        <li><a href="tags.html" class="slide-item"> Tags</a></li>
                                                        <li><a href="pagination.html" class="slide-item"> Pagination</a></li>
                                                        <li><a href="navigation.html" class="slide-item"> Navigation</a></li>
                                                        <li><a href="typography.html" class="slide-item"> Typography</a></li>
                                                        <li><a href="breadcrumbs.html" class="slide-item"> Breadcrumbs</a></li>
                                                        <li><a href="badge.html" class="slide-item"> Badges / Pills</a></li>
                                                        <li><a href="panels.html" class="slide-item"> Panels</a></li>
                                                        <li><a href="thumbnails.html" class="slide-item"> Thumbnails</a></li>
                                                        <li><a href="offcanvas.html" class="slide-item"> Offcanvas</a></li>
                                                        <li><a href="toast.html" class="slide-item"> toast</a></li>
                                                        <li><a href="scrollspy.html" class="slide-item"> Scrollspy</a></li>
                                                        <li><a href="mediaobject.html" class="slide-item"> Media Object</a></li>
                                                        <li><a href="accordion.html" class="slide-item"> Accordions </a></li>
                                                        <li><a href="tabs.html" class="slide-item"> Tabs</a></li>
                                                        <li><a href="modal.html" class="slide-item"> Modal</a></li>
                                                        <li><a href="tooltipandpopover.html" class="slide-item"> Tooltip and popover</a></li>
                                                        <li><a href="progress.html" class="slide-item"> Progress</a></li>
                                                        <li><a href="carousel.html" class="slide-item"> Carousels</a></li>
                                                        <li><a href="ribbons.html" class="slide-item"> Ribbons</a></li>
                                                    </ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="side6">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li> -->
                            <!-- <li>
                                <a class="side-menu__item has-link" href="landing-page.html" target="_blank"><i
                                        class="side-menu__icon fe fe-zap"></i><span
                                        class="side-menu__label">Landing Page</span><span class="badge bg-green br-5 side-badge blink-text pb-1">New</span></a>
                            </li> -->
                            <!-- <li class="sub-category">
                                <h3>Pre-build Pages</h3>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-layers"></i><span
                                        class="side-menu__label">Pages</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>

								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side9" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side10" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side9">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Pages</a></li>
                                                        <li><a href="profile.html" class="slide-item"> Profile</a></li>
                                                        <li><a href="editprofile.html" class="slide-item"> Edit Profile</a></li>
                                                        <li><a href="notify-list.html" class="slide-item"> Notifications List</a></li>
                                                        <li><a href="email-compose.html" class="slide-item"> Mail-Compose</a></li>
                                                        <li><a href="email-inbox.html" class="slide-item"> Mail-Inbox</a></li>
                                                        <li><a href="email-read.html" class="slide-item"> Mail-Read</a></li>
                                                        <li><a href="gallery.html" class="slide-item"> Gallery</a></li>
                                                        <li class="sub-slide">
                                                            <a class="sub-side-menu__item" data-bs-toggle="sub-slide" href="javascript:void(0)"><span
                                                                    class="sub-side-menu__label">Forms</span><i
                                                                    class="sub-angle fe fe-chevron-right"></i></a>
                                                            <ul class="sub-slide-menu">
                                                                <li><a href="form-elements.html" class="sub-slide-item"> Form Elements</a>
                                                                </li>
                                                                <li><a href="form-layouts.html" class="sub-slide-item"> Form Layouts</a>
                                                                </li>
                                                                <li><a href="form-advanced.html" class="sub-slide-item"> Form Advanced</a>
                                                                </li>
                                                                <li><a href="form-editor.html" class="sub-slide-item"> Form Editor</a></li>
                                                                <li><a href="form-wizard.html" class="sub-slide-item"> Form Wizard</a></li>
                                                                <li><a href="form-validation.html" class="sub-slide-item"> Form Validation</a></li>
                                                                <li><a href="form-input-spinners.html" class="sub-slide-item"> Form Input Spinners</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-slide">
                                                            <a class="sub-side-menu__item" data-bs-toggle="sub-slide" href="javascript:void(0)"><span
                                                                    class="sub-side-menu__label">Tables</span><i
                                                                    class="sub-angle fe fe-chevron-right"></i></a>
                                                            <ul class="sub-slide-menu">
                                                                <li><a href="tables.html" class="sub-slide-item">Default table</a></li>
                                                                <li><a href="datatable.html" class="sub-slide-item"> Data Tables</a></li>
                                                                <li><a href="edit-table.html" class="sub-slide-item"> Edit Tables</a></li>
                                                                <li><a href="extension-tables.html" class="sub-slide-item"> Extension Tables</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-slide">
                                                            <a class="sub-side-menu__item" data-bs-toggle="sub-slide" href="javascript:void(0)"><span
                                                                    class="sub-side-menu__label">Extension</span><i
                                                                    class="sub-angle fe fe-chevron-right"></i></a>
                                                            <ul class="sub-slide-menu">
                                                                <li><a href="about.html" class="sub-slide-item"> About Company</a></li>
                                                                <li><a href="services.html" class="sub-slide-item"> Services</a></li>
                                                                <li><a href="faq.html" class="sub-slide-item"> FAQS</a></li>
                                                                <li><a href="terms.html" class="sub-slide-item"> Terms</a></li>
                                                                <li><a href="invoice.html" class="sub-slide-item"> Invoice</a></li>
                                                                <li><a href="pricing.html" class="sub-slide-item"> Pricing Tables</a></li>
                                                                <li><a href="settings.html" class="sub-slide-item"> Settings</a></li>
                                                                <li><a href="blog.html" class="sub-slide-item"> Blog</a></li>
                                                                <li><a href="blog-details.html" class="sub-slide-item"> Blog Details</a>
                                                                </li>
                                                                <li><a href="blog-post.html" class="sub-slide-item"> Blog Post</a></li>
                                                                <li><a href="empty.html" class="sub-slide-item"> Empty Page</a></li>
                                                                <li><a href="construction.html" class="sub-slide-item"> Under
                                                                        Construction</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="switcher-1.html" class="slide-item"> Switcher</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side10">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-shopping-bag"></i><span
                                        class="side-menu__label">E-Commerce</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side13" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side14" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side13">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">E-Commerce</a></li>
                                                        <li><a href="shop.html" class="slide-item"> Shop</a></li>
                                                        <li><a href="shop-description.html" class="slide-item"> Product Details</a></li>
                                                        <li><a href="cart.html" class="slide-item"> Shopping Cart</a></li>
                                                        <li><a href="add-product.html" class="slide-item"> Add Product</a></li>
                                                        <li><a href="wishlist.html" class="slide-item"> Wishlist</a></li>
                                                        <li><a href="checkout.html" class="slide-item"> Checkout</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side14">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-folder"></i><span class="side-menu__label">File
                                        Manager</span><span class="badge bg-pink side-badge">4</span><i
                                        class="angle fe fe-chevron-right hor-angle"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side17" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side18" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side17">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">File Manager</a></li>
                                                        <li><a href="file-manager.html" class="slide-item"> File Manager</a></li>
                                                        <li><a href="filemanager-list.html" class="slide-item"> File Manager List</a></li>
                                                        <li><a href="filemanager-details.html" class="slide-item"> File Details</a></li>
                                                        <li><a href="file-attachments.html" class="slide-item"> File Attachments</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side18">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="sub-category">
                                <h3>Misc Pages</h3>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-users"></i><span
                                        class="side-menu__label">Authentication</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side21" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side22" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side21">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Authentication</a></li>
                                                        <li><a href="login.html" class="slide-item"> Login</a></li>
                                                        <li><a href="register.html" class="slide-item"> Register</a></li>
                                                        <li><a href="forgot-password.html" class="slide-item"> Forgot Password</a></li>
                                                        <li><a href="lockscreen.html" class="slide-item"> Lock screen</a></li>
                                                        <li class="sub-slide">
                                                            <a class="sub-side-menu__item" data-bs-toggle="sub-slide" href="javascript:void(0)"><span
                                                                    class="sub-side-menu__label">Error Pages</span><i
                                                                    class="sub-angle fe fe-chevron-right"></i></a>
                                                            <ul class="sub-slide-menu">
                                                                <li><a href="400.html" class="sub-slide-item"> 400</a></li>
                                                                <li><a href="401.html" class="sub-slide-item"> 401</a></li>
                                                                <li><a href="403.html" class="sub-slide-item"> 403</a></li>
                                                                <li><a href="404.html" class="sub-slide-item"> 404</a></li>
                                                                <li><a href="500.html" class="sub-slide-item"> 500</a></li>
                                                                <li><a href="503.html" class="sub-slide-item"> 503</a></li>
                                                            </ul>
                                                        </li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side22">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)">
                                    <i class="side-menu__icon fe fe-cpu"></i>
                                    <span class="side-menu__label">Submenu items</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side25" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side26" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side25">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Submenu items</a></li>
                                                        <li><a href="javascript:void(0)" class="slide-item">Submenu-1</a></li>
                                                        <li class="sub-slide">
                                                            <a class="sub-side-menu__item" data-bs-toggle="sub-slide" href="javascript:void(0)"><span
                                                                    class="sub-side-menu__label">Submenu-2</span><i
                                                                    class="sub-angle fe fe-chevron-right"></i></a>
                                                            <ul class="sub-slide-menu">
                                                                <li><a class="sub-slide-item" href="javascript:void(0)">Submenu-2.1</a></li>
                                                                <li><a class="sub-slide-item" href="javascript:void(0)">Submenu-2.2</a></li>
                                                                <li class="sub-slide2">
                                                                    <a class="sub-side-menu__item2" href="javascript:void(0)"
                                                                        data-bs-toggle="sub-slide2"><span
                                                                            class="sub-side-menu__label2">Submenu-2.3</span><i
                                                                            class="sub-angle2 fe fe-chevron-right"></i></a>
                                                                    <ul class="sub-slide-menu2">
                                                                        <li><a href="javascript:void(0)" class="sub-slide-item2">Submenu-2.3.1</a></li>
                                                                        <li><a href="javascript:void(0)" class="sub-slide-item2">Submenu-2.3.2</a></li>
                                                                        <li><a href="javascript:void(0)" class="sub-slide-item2">Submenu-2.3.3</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li><a class="sub-slide-item" href="javascript:void(0)">Submenu-2.4</a></li>
                                                                <li><a class="sub-slide-item" href="javascript:void(0)">Submenu-2.5</a></li>
                                                            </ul>
                                                        </li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side26">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="sub-category">
                                <h3>General</h3>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-map-pin"></i><span
                                        class="side-menu__label">Maps</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side29" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side30" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side29">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Maps</a></li>
                                                        <li><a href="maps1.html" class="slide-item">Leaflet Maps</a></li>
                                                        <li><a href="maps2.html" class="slide-item">Mapel Maps</a></li>
                                                        <li><a href="maps.html" class="slide-item">Vector Maps</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side30">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-bar-chart-2"></i><span
                                        class="side-menu__label">Charts</span><span
                                        class="badge bg-secondary side-badge">6</span><i
                                        class="angle fe fe-chevron-right hor-angle"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side33" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side34" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side33">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Charts</a></li>
                                                        <li><a href="chart-chartist.html" class="slide-item">Chart Js</a></li>
                                                        <li><a href="chart-flot.html" class="slide-item"> Flot Charts</a></li>
                                                        <li><a href="chart-echart.html" class="slide-item"> ECharts</a></li>
                                                        <li><a href="chart-morris.html" class="slide-item"> Morris Charts</a></li>
                                                        <li><a href="chart-nvd3.html" class="slide-item"> Nvd3 Charts</a></li>
                                                        <li><a href="charts.html" class="slide-item"> C3 Bar Charts</a></li>
                                                        <li><a href="chart-line.html" class="slide-item"> C3 Line Charts</a></li>
                                                        <li><a href="chart-donut.html" class="slide-item"> C3 Donut Charts</a></li>
                                                        <li><a href="chart-pie.html" class="slide-item"> C3 Pie charts</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../theme-assets/../assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side34">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                            <!-- <li class="slide">
                                <a class="side-menu__item" data-bs-toggle="slide" href="javascript:void(0)"><i
                                        class="side-menu__icon fe fe-wind"></i><span
                                        class="side-menu__label">Icons</span><i
                                        class="angle fe fe-chevron-right"></i>
                                </a>
								<ul class="slide-menu">
									<li class="panel sidetab-menu">
										<div class="tab-menu-heading p-0 pb-2 border-0">
											<div class="tabs-menu ">
												<ul class="nav panel-tabs">
													<li><a href="#side37" class="d-flex active" data-bs-toggle="tab"><i class="fe fe-monitor me-2"></i><p>Home</p></a></li>
													<li><a href="#side38" data-bs-toggle="tab" class="d-flex"><i class="fe fe-message-square me-2"></i><p>Chat</p></a></li>
												</ul>
											</div>
										</div>
										<div class="panel-body tabs-menu-body p-0 border-0">
											<div class="tab-content">
												<div class="tab-pane active" id="side37">
													<ul class="sidemenu-list">
                                                        <li class="side-menu-label1"><a href="javascript:void(0)">Icons</a></li>
                                                        <li><a href="icons.html" class="slide-item"> Font Awesome</a></li>
                                                        <li><a href="icons2.html" class="slide-item"> Material Design Icons</a></li>
                                                        <li><a href="icons3.html" class="slide-item"> Simple Line Icons</a></li>
                                                        <li><a href="icons4.html" class="slide-item"> Feather Icons</a></li>
                                                        <li><a href="icons5.html" class="slide-item"> Ionic Icons</a></li>
                                                        <li><a href="icons6.html" class="slide-item"> Flag Icons</a></li>
                                                        <li><a href="icons7.html" class="slide-item"> pe7 Icons</a></li>
                                                        <li><a href="icons8.html" class="slide-item"> Themify Icons</a></li>
                                                        <li><a href="icons9.html" class="slide-item">Typicons Icons</a></li>
                                                        <li><a href="icons10.html" class="slide-item">Weather Icons</a></li>
                                                        <li><a href="icons11.html" class="slide-item">Bootstrap Icons</a></li>
													</ul>
                                                    <div class="menutabs-content mt-5 p-0">
                                                        <div class="Annoucement_card">
                                                            <div class="text-center">
                                                                <div>
                                                                    <h5 class="title mt-0 mb-1 ms-2 font-weight-bold tx-12"> Go for Premium Account </h5>
                                                                    <div class="bg-layer">
                                                                        <img src="../assets/../theme-assets/images/media/37.png" alt="img" class="text-center mx-auto">
                                                                    </div>
                                                                    <p class="subtext mt-0 mb-0 ms-2 fs-13 text-center my-2"> $399.9 /Monthly</p>
                                                                </div>
                                                            </div>
                                                            <button class="btn btn-block btn-primary mt-4 fs-14"> Upgrade</button>
                                                        </div>
                                                    </div>
												</div>
												<div class="tab-pane" id="side38">
													<h5 class="mt-3 fw-600 mb-4">Recent Chats</h5>
                                                    <div class="main-chat-list tab-pane">
                                                        <div class="media border-0 px-1 new border-top-0">
                                                            <div class="main-img-user online">
                                                                <img alt="" src="../theme-assets/images/users/5.jpg">
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Raymart Santiago</span> <span>10 min</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <img alt="" src="../theme-assets/images/users/6.jpg"> <span>3</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Ariana Monino</span> <span>30 min</span>
                                                                </div>
                                                                <p>Good Morning</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user online"><img alt="" src="../theme-assets/images/users/9.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Reynante Labares</span> <span>9.40 am</span>
                                                                </div>
                                                                <p> Nice to meet you </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-danger-transparent text-danger">J</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Joyce Chua</span> <span>11.20 am</span>
                                                                </div>
                                                                <p> Hi, How are you? </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/4.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Rolando Paloso</span> <span>1.38 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user">
                                                                <div class="avatar avatar-md brround bg-primary-transparent text-primary">D</div><span>1</span>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Dexter dela Cruz</span> <span>4.08 pm</span>
                                                                </div>
                                                                <p>Typing...</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/21.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maricel Villalon</span> <span>8.09 pm</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <span class="avatar avatar-md brround bg-success-transparent text-success">M</span>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Maryjane Pechon</span> <span>1 day ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/5.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Lovely Dela Cruz</span> <span>3 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="avatar avatar-md brround bg-secondary-transparent"><i class="fe fe-user text-secondary"></i></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Daniel Padilla</span> <span>5 days ago</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/3.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>John Pratts</span> <span>20/06/2021</span>
                                                                </div>
                                                                <p>I have some work</p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/7.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Socrates Itumay</span> <span>18/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                        <div class="media border-0 px-1 new border-bottom-0">
                                                            <div class="main-img-user"><img alt="" src="../theme-assets/images/users/6.jpg"></div>
                                                            <div class="media-body">
                                                                <div class="media-contact-name">
                                                                    <span>Samuel Lerin</span> <span>29/07/2021</span>
                                                                </div>
                                                                <p> Hey! there I'm available </p>
                                                            </div>
                                                        </div>
                                                    </div>
												</div>
											</div>
										</div>
									</li>
								</ul>
                            </li> -->
                        </ul>
                        <div class="slide-right" id="slide-right"><svg xmlns="http://www.w3.org/2000/svg" fill="#7b8191"
                                width="24" height="24" viewBox="0 0 24 24">
                                <path d="M10.707 17.707 16.414 12l-5.707-5.707-1.414 1.414L13.586 12l-4.293 4.293z" />
                            </svg></div>
                    </div>
                </div>
            </div>
            <!--/APP-SIDEBAR-->