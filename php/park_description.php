<html>
<head>
<style>
.Park {
  font: bold 11px Arial;
  text-decoration: none;
  background-color: #EEEEEE;
  color: #333333;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}
.Park_Description{
width:500px;;
height:500px;
background-color:red;
position: absolute; 
top: 0; left: 0;
}
</style>
</head>
<body>
<div id="Park_Description" style="display:none;">
<p>
<p id="myLabel">test</p>
<form action="park_description.php" method="get">

<input id="textbox" name="textbox" maxlength="500" height="500" type="text">
<input id="whichPark" name="whichPark" style="display:none">Place Description here press button when done
<input type="submit">
</form></p></div>
<?php
include "newDBObj.php";
if(isset($_GET['whichPark'])){
	$whichPark=$_GET['whichPark'];
	$description=$_GET['textbox'];
	echo "<script>window.alert('$whichPark');</script>";
	$query=$mysqli->prepare("update park set Park_Description=? where Park_Name=?");
	$query->bind_param("ss",$description,$whichPark);
	$query->execute();
		//echo "<script>window.alert('Successfully added a description for $whichPark');</script>";
	
	
}

$query=$mysqli->prepare("select Park_Name, Website from park where Park_Description is null");
$query->execute();
$query->bind_result($Park_Name,$Website);
while($query->fetch()){
	echo "<div class=\"Park\" id=\"$Park_Name\" onclick=\"myID=this.id;getDescription()\">".$Park_Name."</div><br>";
	echo "<a href=\"$Website\" target=\"_blank\">$Park_Name</a>";
}
$query->close();
?>

<script>
var myID;
function getDescription() {
	document.getElementById('textbox').style.height="200px";
	document.getElementById('textbox').style.width="700px";
    document.getElementById("Park_Description").style.display = "block";
	document.getElementById('textbox').focus();
	document.getElementById('myLabel').innerHTML=myID;
	document.getElementById('whichPark').value=myID;
	document.getElementById('whichPark').value=myWebsite;
	//window.alert('test');
}
</script>
</body>
</html>