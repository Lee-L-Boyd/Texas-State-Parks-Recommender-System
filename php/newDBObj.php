<?php
	$username="root";
	$password="PASSWORD";
	$database="my_parks";
	$server="localhost";
	$mysqli = new mysqli($server, $username, $password, $database);
	if ($mysqli->connect_errno) {
		echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . 
		$mysqli->connect_error;
	}
?>