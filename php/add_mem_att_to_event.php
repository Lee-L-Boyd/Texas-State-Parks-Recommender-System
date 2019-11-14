<?php

	function addMemToEvent(){

		include_once "sql_query.php";
		include_once "check_if_mem.php";
		include_once "get_name_by_id.php";
		$alreadyAdded = false;
		$event=$_POST['event'];
		if (empty($_POST['stuID']))
			$student=$_POST['stuSelect'];
		else
			$student=$_POST['stuID'];
		if(preg_match('/^(\+{1})([0-9]{3})(={1})(.+)$/', $student)){ //regular expression tests to see if matches the pattern of a card swipe
			echo "<p>...Card Swiped...</p>";
			$student = substr($student, 5, 7);
			$student = ltrim($student, '0');
			$_POST['stuID']=$student;
			$student+=0;  //makes sure student is an integer
		}
		else{
			$student = ltrim($student, '0');
		}
		$isMem=checkIfMem($student);
		if(!$isMem){ //checks to see if student is member
			$names = explode(" ", get_name_by_id($student));
			if (empty($names[0])){
				echo "WARNING:UNABLE TO GET A FIRST NAME FROM INTERNET <br>";
				$names[0]="";
			}
			if (empty($names[3])){
				$names[3]="";
				echo "WARNING:UNABLE TO GET A LAST NAME FROM INTERNET <br>";
			}
			$UPPER_NAME=strtoupper($names[0])." ".strtoupper($names[3]);
			if(!empty($names[0]) && !empty($names[3])){
				echo "$UPPER_NAME HAS BEEN ADDED TO AITP DATABASE<br>";
				$addQuery = "INSERT INTO Member VALUES ('$student','$names[0]','$names[3]', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0)";
				executeQuery($addQuery);
			}else{
				$addQuery = "INSERT INTO Member VALUES ('$student',NULL,NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0)";
				executeQuery($addQuery);
			}

		}
		else{
			$alreadyAdded = checkIfAtt($student, $event);
		}
		$user=$_SESSION['user'];
		$query = "INSERT INTO Memb_Evnt_Atten VALUES (NULL, '$student','$event', NULL, 'N/A', '$user')";
		if(!$alreadyAdded){
			$result=executeQuery($query);
		}

		$query = "SELECT FName, LName FROM Member WHERE Member_ID = $student";

		$memNameRes = executeQuery($query);

		$fname = mysql_result($memNameRes, 0, "FName");
		$lname = mysql_result($memNameRes, 0, "LName");
		
		$name = $fname." ".$lname;
		$query = "SELECT Description FROM Event_Instance WHERE Event_Inst_ID = $event";

		$eventDescRes = executeQuery($query);

		$desc = mysql_result($eventDescRes, 0, "Description");

		if($alreadyAdded){
			echo "<br><div class=\"alert alert-info\"><strong>FYI! </strong>".$name." already listed as attended ".$desc.".</div>";
		}else if($result==1 && $isMem == true){
			echo "<br><div class=\"alert alert-success\"><strong>Success!</strong> ".$name." added to ".$desc.".</div>";
		}else if($isMem == false){
			echo "<br><div class=\"alert alert-info\"><strong>Attention!</strong> Please give member an info sheet to fill out, as they were not in the database (but have now been added)</div>";
		}else{
			echo "<script type=\"text/javascript\">alert(\"There was an issue adding the member\");</script>";
		}
	}

	function checkIfAtt($student, $event){

		include_once "sql_query.php";

		$query = "SELECT * FROM Memb_Evnt_Atten WHERE Member_ID = $student AND Event_Inst_ID = $event";

		$result = executeQuery($query);

		$num=mysql_num_rows($result);

		if($num==1){
			return true;
		}else{
			return false;
		}


	}
    //   <script type="text/javascript">
     //      window.location.href = "http://txstateaitp.org/database/inputs/add_mem_att_to_event.php";
     //   </script>

?>
