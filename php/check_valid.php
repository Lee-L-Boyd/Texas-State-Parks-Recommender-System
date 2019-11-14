<?php

function check_timeout(){

	if($_SESSION['timeout'] + 20 * 60 < time()){
		$_SESSION['user']='';
		header("Location: ../index.php");
	}else{
		$_SESSION['timeout'] = time();
	}

}

function check_user(){

	if(!isset($_SESSION['user']) || $_SESSION['user']==''){
		header("Location: ../index.php");
	}

}

?>