<?php session_start(); 
	
	include_once "php/login.php";
?>

<html>
	<head>
		<title>My Texas State Parks</title>
		<link href="bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="/css/park.css" rel="stylesheet" media="screen">
<style>
	.Button{
		font: 30px Arial;
		font-style:bold;
		font-style:italic;
		text-decoration: italic;
		background-color: #ffff99;
		color: #333333;
		padding: 2px 6px 2px 6px;
		border-top: 1px solid #CCCCCC;
		border-right: 1px solid #333333;
		border-bottom: 1px solid #333333;
		border-left: 1px solid #CCCCCC;
		cursor: pointer; 
		cursor: hand; 
		box-shadow: 10px 10px 5px #888888;
		border-radius:25px;
		margin-top:5px;		
	}
	

	
	
	
	.Park_Description{
	width:500px;;
	height:500px;
	background-color:red;
	position: absolute; 
	top: 0; left: 0;
	}
	body {
	padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */

	}
	.top_image{
		padding-right:14px;
		padding-bottom:14px;
	}
	.image_container{
		text-align:center;

	}
	.well{
	font:30px arial;
			font: 30px Arial;
		font-style:bold;
		font-style:italic;
		text-decoration: italic;
		padding: 2px 6px 2px 6px;
		border-top: 1px solid #CCCCCC;
		border-right: 1px solid #333333;
		border-bottom: 1px solid #333333;
		border-left: 1px solid #CCCCCC;
		box-shadow: 10px 10px 5px #888888;
		border-radius:25px;
		margin-top:5px;		
		padding:14px;
		
	}
	.well input{
	font:30px arial;
	width:70%;
	height:60px;
	}
	.btn{
	
		font: 30px Arial;
		font-style:bold;
		font-style:italic;
		text-decoration: italic;
		padding: 2px 6px 2px 6px;
		border-top: 1px solid #CCCCCC;
		border-right: 1px solid #333333;
		border-bottom: 1px solid #333333;
		border-left: 1px solid #CCCCCC;
		box-shadow: 10px 10px 5px #888888;
		border-radius:25px;
		margin-top:5px;		
	
	}
</style>
	</head>


	<body>

		<!-- navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top">
      		<div class="navbar-inner">
        		<div class="container">
          			<ul class="nav">
            			<li>
              				<a class="brand" href="#">My Texas State Parks Login</a>
            			</li>
            			<li class="active"><a href="#"></a></li>
            			<li><a href="about.html"></a></li>
            			<li><a href="contact.html"></a></li>
            		</ul>
        		</div>
      		</div>
   		</div>

		<!-- main container -->
		<div class="container" style="padding:10px;border-radius:25px;">
			<div class="image_container">
			<img class="top_image well" src="images/sky2.jpg" style="width:100px; height:100px;margin-left:2px;">
			<img class="top_image well"  src="images/bench2.jpg" style="width:100px; height:100px;">
			<img class="top_image well"  src="images/swan2.jpg" style="width:100px; height:100px;">
			<img class="top_image well"  src="images/canyon2.jpg" style="width:100px; height:100px;">
			<img class="top_image well"  src="images/sailboat2.jpg" style="width:100px; height:100px;">
			<img class="top_image well" src="images/georgetown2.jpg" style="width:100px; height:100px;">
			<img class="top_image well"  src="images/flower2.jpg" style="width:100px; height:100px;">
			</div>


			<form class="well" action="index.php?login=yes" method="POST">
				<span class="help-inline">Username: </span>
				<input type="text" name="user"><br>
				<span class="help-inline">Password: </span>
				<input type="password" name="pwd"><br>
				<button type="submit" class="btn">Login</button>
			<?php

				if (isset($_GET['login']) || isset($_GET['logout'])){
					$login=isset($_GET['login']);
					$logout=isset($_GET['logout']);
					//$user=isset($_POST['user']);
					//$pass=isset($_POST['pwd']);
					if($login=='yes'){

						//temp fix to prevent sql injection, removes everything from username except lower and uppercase letters
						$user = preg_replace('/\PL/u', '', $_POST['user']);

						authenticate();

					}

					if($logout=='yes'){
						
						$_SESSION['user']= '';
						
					}
				}	

			?>
			</form>
			<p class="button" onclick="window.location.href = 'php/add_account.php';">I don't have an account.  Sign me up!</p>


		</div>

		<script src="http://code.jquery.com/jquery.js"></script>
		<script src="bootstrap/bootstrap/js/bootstrap.min.js"></script>

		
		

	</body>
</html>
