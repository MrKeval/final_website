<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <div class="profile-sidebar">
            <!-- <div class="profile-userpic"> -->
                <!-- <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt=""> -->
            <!-- </div> -->
            <div class="profile-usertitle">
                <?php
$uid=$_SESSION['detsuid'];
$ret=mysqli_query($con,"select user_name from user_master where user_id='$uid'");
$row=mysqli_fetch_array($ret);
$name=$row['user_name'];

?>
                <div class="profile-usertitle-name"><?php echo $name; ?></div>
                <!-- <div class="profile-usertitle-status"><span class="indicator label-success"></span></div> -->
            </div>
            <div class="clear"></div>
        </div>
        <div class="divider"></div>
        
        <ul class="nav menu">
            <li class="active"><a href="dashboard.php"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
            
            
           
            <!-- <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
                <em class="fa fa-navicon">&nbsp;</em>Expenses & Income <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-1">
                    <li><a  href="add-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                    </a></li>
                    <li><a  href="add-income.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Income
                    </a></li>
                    <li><a  href="add-category.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Category
                    </a></li>
                    <li><a  href="manage-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                    </a></li>
                    <li><a  href="manage-income.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Income
                    </a></li>
                    <li><a  href="manage-category.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Category
                    </a></li>
                    
                </ul>

            </li> -->
            
            <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
                <em class="fa fa-navicon">&nbsp;</em> Income <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-1">
                    
                    <li><a  href="add-income.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Income
                    </a></li>
                    
                    <li><a  href="manage-income.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Income
                    </a></li>
                    
                </ul>

            </li>
           
            <li class="parent "><a data-toggle="collapse" href="#sub-item-2">
                <em class="fa fa-navicon">&nbsp;</em>Expenses <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-2">
                    <li><a class="" href="add-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Expenses
                    </a></li>
                    <li><a class="" href="manage-expense.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Expenses
                    </a></li>
                    
                </ul>
            
            
            <li class="parent "><a data-toggle="collapse" href="#sub-item-3">
                <em class="fa fa-navicon">&nbsp;</em>Catagory <span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-3">
                    <li><a class="" href="add-category.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Catgory
                    </a></li>
                    <li><a class="" href="manage-category.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Catagory
                    </a></li>
                    
                </ul>

            <li class="parent "><a data-toggle="collapse" href="#sub-item-4">
                <em class="fa fa-navicon">&nbsp;</em>Budget <span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-4">
                    <li><a class="" href="add-budget.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Add Budget
                    </a></li>
                    <li><a class="" href="manage-budget.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Manage Budget
                    </a></li>
                    
                </ul>

            </li>


            <li class="parent "><a data-toggle="collapse" href="#sub-item-7">
                <em class="fa fa-navicon">&nbsp;</em>Expense Report <span data-toggle="collapse" href="#sub-item-7" class="icon pull-right"><em class="fa fa-plus"></em></span>
                </a>
                <ul class="children collapse" id="sub-item-7">
                    <li><a class="" href="expense-datewise-reports.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Daywise Expenses
                    </a></li>
                    <li><a class="" href="expense-monthwise-reports.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Monthwise Expenses
                    </a></li>
                    <li><a class="" href="expense-yearwise-reports.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Yearwise Expenses
                    </a></li>
                    <li><a class="" href="expense-categorywise-reports.php">
                        <span class="fa fa-arrow-right">&nbsp;</span> Category Expenses
                    </a></li>
                    
                </ul>
            </li>


            
            <li><a href="user-profile.php"><em class="fa fa-user">&nbsp;</em> Profile</a></li>
             <li><a href="change-password.php"><em class="fa fa-clone">&nbsp;</em> Change Password</a></li>
<li><a href="logout.php"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>

        </ul>
    </div>