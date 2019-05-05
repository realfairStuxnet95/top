<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <ul>
            	<li class="menu-title">Navigation</li>

                <li class="has_sub">
                    <a href="index" class="waves-effect"><i class="mdi mdi-view-dashboard"></i><span> Dashboard </span> </a>
                </li>
                <?php 
                if(USER_TYPE==1){
                    ?>
                    <li class="has_sub">
                        <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span>Manage Courses </span> <span class="menu-arrow"></span></a>
                        <ul class="list-unstyled">
                            <li><a href="?request=create_course">Create new Course</a></li>
                            <li><a href="?request=course_listing">Courses Listing</a></li>
                        </ul>
                    </li>
                    <li class="has_sub">
                        <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-users"></i> <span>Manage Clients </span> <span class="menu-arrow"></span></a>
                        <ul class="list-unstyled">
                            <li><a href="?create_course">Create new Client</a></li>
                            <li><a href="?list_courses">Clients Listing</a></li>
                        </ul>
                    </li>
                    <li class="has_sub">
                        <a href="?manage_teachers" class="waves-effect"><i class="fa fa-user-plus"></i><span> Manage Teachers </span> </a>
                    </li>
                    <li class="has_sub">
                        <a href="logoff" class="waves-effect"><i class="fa fa-sign-out"></i><span> Sign Out</span> </a>
                    </li>
                    <?php
                }elseif(USER_TYPE==2){
                    ?>
                    <li class="has_sub">
                        <a href="?request=assigned_courses" class="waves-effect"><i class="fa fa-file-word-o"></i><span> Assigned Courses</span> </a>
                    </li>
                    <li class="has_sub">
                        <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span>Course Credits </span> <span class="menu-arrow"></span></a>
                        <ul class="list-unstyled">
                            <li><a href="?request=add_course_credit">Create new Credit</a></li>
                            <li><a href="?request=list_credits">Credit Listing</a></li>
                        </ul>
                    </li>
                    <li class="has_sub">
                        <a href="?request=manage_quiz" class="waves-effect"><i class="fa fa-comments-o"></i><span> Manage Quiz</span> </a>
                    </li>
                    <?php
                }
                ?>
            </ul>
        </div>
        <!-- Sidebar -->
        <div class="clearfix"></div>

        <div class="help-box">
            <h5 class="text-muted m-t-0">For Help ?</h5>
            <p class=""><span class="text-custom">Email:</span> <br/> topupgradeltd@gmail.com</p>
            <p class="m-b-0"><span class="text-custom">Call:</span> <br/> (+250) 789044439</p>
        </div>

    </div>
    <!-- Sidebar -left -->

</div>