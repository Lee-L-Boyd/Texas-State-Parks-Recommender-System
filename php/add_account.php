	<head>
		<title>My Texas State Parks</title>
		<link href="bootstrap/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style>
	.Button{
		margin-top:20px;
		display: inline-block;
		font: 25px Arial;
		font-style:bold;
		font-style:italic;
		text-decoration: italic;
		background-color: #ffff99;
		color: #333333;
		padding: 2px 10px 10px 10px;
		border-top: 1px solid #CCCCCC;
		border-right: 1px solid #333333;
		border-bottom: 1px solid #333333;
		border-left: 1px solid #CCCCCC;
		cursor: pointer; 
		cursor: hand; 
		width:35%;
		height:50px;
		box-shadow: 10px 10px 5px #888888;
		border-bottom-right-radius:25px;
		border-bottom-left-radius:25px;
	}
	.Button_Top{
		margin-top:20px;
		margin-left:700px;
		display: inline-block;
		font: 25px Arial;
		font-style:bold;
		font-style:italic;
		text-decoration: italic;
		background-color: #ffff99;
		color: #333333;
		border-top: 1px solid #CCCCCC;
		border-right: 1px solid #333333;
		border-bottom: 1px solid #333333;
		border-left: 1px solid #CCCCCC;
		cursor: pointer; 
		cursor: hand; 
		width:35%;
		height:50px;
		border-bottom-right-radius:25px;
		border-bottom-left-radius:25px;
		height:350px;
		padding-top:30px;
		padding-left:15px;
		
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
	font:16px Arial;
	background-image:url('../images/spring.jpg');
	background-repeat:no-repeat;
	}
	.topTen{
	font:20px Arial;
	}
</style>
	</head>
<body>
<?php
include "newDBObj.php";
session_start();
if (isset($_POST['L_Name']) && isset($_POST['F_Name']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['vpassword']) && isset($_POST['email']) ){
	if($_POST['password']==$_POST['vpassword']){
		$password=md5($_POST['password']);
		$username=$_POST['username'];
		$F_Name=$_POST['F_Name'];
		$L_Name=$_POST['L_Name'];
		$email=$_POST['email'];
		$query=$mysqli->prepare("select count(*) from user where User_Name=?");
		$query->bind_param("s",$username);
		$query->bind_result($result);
		$query->execute();
		if($query->fetch()){
			$query->close();
		}
		echo intval($result);
		if (intval($result)>0){
			echo "<script>window.alert('That username is taken, please try again with another username');</script>";
		}
		else{
			$query=$mysqli->prepare("insert into user values('',?,?,?,?,now(),now(),?,0,0,0,0)");
			$query->bind_param("sssss",$username,$F_Name,$L_Name,$password,$email);
			$query->execute();
			if($query->affected_rows == 1){
				$_SESSION['timeout'] = time();
				$_SESSION['user']=$username;
				echo "<script>window.location.href=\"radiotest.php\";</script>";
			}
			$query->close();
		}
		
	}
	else{
		echo "<script>window.alert('Password must be the same in both instances');</script>";
	}
}
else{
		if (isset($_POST['submitting']))
			echo "<script>window.alert('Please fill out all fields before submitting');</script>";
}

?>
<div class="Button_Top">
<form action='add_account.php' method='POST'>

<input type="text" name="F_Name">
<label for username>First Name</label>
<br>

<input type="text" name="L_Name">
<label for username>Last Name</label>
<br>

<input type="email" name="email">
<label for email>E-mail</label>
<br>

<input type="text" name="username">
<label for username>Username</label>
<br>

<input type="password" name="password">
<label for password>Password</label>
<br>

<input type="password" name="vpassword">
<label for vpassword>Verify Password</label>
<br>

<input type="hidden" name="submitting" value='true'>
<br>

<input class="Button"  type="submit">
</form>
</div>
</body>
</html>