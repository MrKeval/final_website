<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['detsuid'] == 0)) {
	header('location:logout.php');
} else {

    
	if (isset($_POST['update'])) 
	{
		
		$cate_id=$_POST['category'];
		$start_date=$_POST['start_date'];
		$end_date=$_POST['end_date'];
		$amount=$_POST['amount'];

        $query = mysqli_query($con, "update budget_master set amount ='$amount',start_date='$start_date',cate_id ='$cate_id',end_date='$end_date' where budget_id = '$_GET[updateid]';");;
        if ($query) {
            echo "<script>alert('Budet has been updated');</script>";
            echo "<script>window.location.href='manage-budget.php'</script>";
        } else {
            echo "<script>alert('Something went wrong. Please try again');</script>";
        }
		
	}
    ?>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Daily Expense Tracker || Add Expense</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<?php include_once('includes/header.php');?>
	<?php include_once('includes/sidebar.php');?>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Budget</li>
			</ol>
		</div><!--/.row-->
		
		
				
		
		<div class="row">
			<div class="col-lg-12">
			
				
				
				<div class="panel panel-default">
					<div class="panel-heading">Update Budget</div>
					<div class="panel-body">
						<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
						<div class="col-md-12">
                        <?php    
        
                        if(isset($_GET['updateid']))
                        {
	                        $rowid=intval($_GET['updateid']);
	                        
                             $userid=$_SESSION['detsuid'];

							 $ret=mysqli_query($con,"SELECT budget_master.start_date, budget_master.amount,budget_master.end_date,category_master.cate_name
                             FROM budget_master,category_master
                             WHERE  budget_master.cate_id =category_master.cate_id
                             AND budget_master.budget_id = '$rowid';");

                        while ($row=mysqli_fetch_array($ret)) {
                        ?>
							<form role="form" method="post" action="">

							

							<div class="form-group">
									<label>Satart Date</label>
									<input class="form-control" type="date" value="<?php  echo $row['start_date'];?>" name="start_date" required="true">
								</div>

								<div class="form-group">
									<label>Amount</label>
									<input class="form-control" type="number" value="<?php  echo $row['amount'];?>"  required="true" name="amount">
								</div>
								
								<div class="form-group">
									<label>End Date</label>
									<input class="form-control" type="date" value="<?php  echo $row['end_date'];?>" name="end_date" required="true">
								</div>

														
														
								<div class="form-group">
								<label>Your selected Category</label>
								<?php  echo $row['cate_id'];?><?php  echo $row['cate_name'];?>
								<br>
								<label>Now select Category</label>
								<select name="category">
								<!-- <option value="<?php  echo $row['cate_id'];?>"><?php  echo $row['cate_name'];?></optio> -->
								<?php
									 $q1=mysqli_query($con, "select cate_id,cate_name from category_master");
									  while($row = mysqli_fetch_assoc($q1)){

									  $c_id = $row['cate_id'];
									$c_name = $row['cate_name'];
								?>

								  <option value="<?php echo $c_id; ?>"><?php echo $c_name; ?></optio>
								  <?php } ?>
								</select>
							</div>

							<!-- <div class="form-group">
								<label>Payment Mode</label>
								<select name="pay_mode">
								<option value="</option>
								<option value="Cash">Cash</option>
								<option value="Online">Online</option>
								</select> -->
							</div>
								<?php }}?>								
								<div class="form-group has-success">
									<button type="submit" class="btn btn-primary" name="update">Update Budget</button>
								</div>
								
								
							</form>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			<?php include_once('includes/footer.php');?>
		</div><!-- /.row -->
	</div><!--/.main-->
	
<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	
</body>
</html>
<?php }?>