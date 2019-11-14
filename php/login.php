<?php

function authenticate(){
	//echo "<p>username=$username</p><p>password=$password</p>";
	include_once "newDBObj.php";

	$_SESSION['timeout'] = time();


	$hashpass=md5($_POST['pwd']);
	$user=$_POST['user'];
	
	$_SESSION['user']=$user;
	echo "Welcome ".$_SESSION['user'];
	$query=$mysqli->prepare("SELECT count(User_Name),User_Social, User_Water, User_Active,User_Nature FROM user WHERE User_Name=? and password=?");

	$query->bind_param("ss",$user,$hashpass);
	$query->execute();
	$query->bind_result($result,$Social, $Water, $Active, $Nature);
	if ($query->fetch()){
		$query->close();
		if(intval($result)!=1) 
			echo "<br><div class=\"alert alert-error\"><strong>Login Failure:</strong> The username or password you have entered is incorrect!</div>";
		else{
			$query2=$mysqli->prepare("UPDATE user SET User_Last_Login_Date=curdate(), User_Last_Login_Time=curtime() where User_Name=?");
			$query2->bind_param("s",$user);
			if($query2->execute()) {
					if(isset($Social) && isset($Water) && isset($Active) && isset($Nature)){
						if($Social > 0 || $Water > 0 || $Active > 0 || $Nature > 0){
							$_SESSION['Social']=$Social;
							$_SESSION['Water']=$Water;
							$_SESSION['Active']=$Active;
							$_SESSION['Nature']=$Nature;
							echo '<script type="text/javascript">window.location.href="php/my_bot.php";</script>';
						}
						else{
							echo '<script type="text/javascript">window.location.href="php/radiotest.php";</script>';						
						}
					}
					else{
						echo '<script type="text/javascript">window.location.href="php/radiotest.php";</script>';
					}
			}
			else{
				echo "Failed to update login times in the system";
			}
		}
	}
}


?>