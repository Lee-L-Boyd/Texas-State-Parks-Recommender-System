<?php
session_start();
include_once "check_valid.php";
include_once "newDBObj.php";
check_timeout();
check_user();
$Social=$_SESSION['Social'];
$Water=$_SESSION['Water'];
$Active=$_SESSION['Active'];
$Nature=$_SESSION['Nature'];
$User=$_SESSION['user'];

?>
<!DOCTYPE html>
<!--THIS PAGE USES AN OPEN SOURCE PLUGIN CALLED JUMFLOT SPIDER-->
<!--THIS SOURCE CODE CAN BE FOUND AT http://jsfiddle.net/jumjum/2W5RE/-->
<!--ALSO USING JQUERY OF COURSE-->
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>My Profile</title>  
	<script type='text/javascript' src='http://code.jquery.com/jquery-git.js'></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/result-light.css">
	<script type='text/javascript' src="http://www.flotcharts.org/flot/jquery.flot.js"></script>
	<script type='text/javascript' src="http://jumjum123.github.io/JUMFlot/javascripts/JUMFlot.min.js"></script>
	<script type='text/javascript'>//<![CDATA[ 
	$(window).load(function(){
	var d1 = [ [0,<?php echo $Social; ?>], [1,<?php echo $Water; ?>], [2,<?php echo $Active; ?>], [3,<?php echo $Nature; ?>]];
	var d2 = [ [0,7], [1,7], [2,7], [3,7]];
	<?php if(isset($_GET['park'])){
		$Park_ID=$_GET['park'];
		$query=$mysqli->prepare("select Park_Name, Social2, Water2, Active2, Nature2 from park_dimensions join park on park.Park_ID=park_dimensions.Park_ID where park_dimensions.Park_ID=?");
		$query->bind_param("i",$Park_ID);
		$query->bind_result($Park_Name, $Park_Social, $Park_Water, $Park_Active, $Park_Nature);
		$query->execute();
		if($query->fetch()){
			$query->close();
			//echo "<script>window.alert('".$Park_Social."');</script>";
			echo "var d3 = [ [0,".intval($Park_Social)."], [1,".intval($Park_Water)."], [2,".intval($Park_Active)."], [3,".intval($Park_Nature)."]];";	
		}
	} ?>
	var data = [
			
			{ label: "", color:"white",data: d2,
			 spider: {show: false, lineWidth: 0} },
			 { label: "<?php echo $User ?>", color:"red",data: d1,
			 spider: {show: true, lineWidth: 10} },
<?php if(isset($_GET['park'])){
		echo "{ label: \"".$Park_Name."\", color:\"blue\",data: d3, spider: {show: true, lineWidth: 10} },";	
	} ?>			 
	];
	var options = {
		series:{ 
			editMode: 'v',editable:false,
			spider:{
				active: true,highlight: {mode: "area"},
				legs: { 
						font: "25px Arial", data: [{label: "Social"},{label: "Water"},{label: "Active"},{label: "Nature"}],
					legScaleMax: 1,legScaleMin:0.8
				}, 
				spiderSize: .4
			}
		},
		grid:{ 
			hoverable: false,clickable: false, editable:false,
			tickColor: "rgba(0,0,0,0.2)",mode: "radar"
		}
	};
	var p = $.plot($("#placeholder"),data,options);
	$("#placeholder").bind("datadrop", function(event,pos,item) {
		var r = "dragged from " + item.datapoint[1]
		r+= " to: " + pos.value.toFixed(2);
		r+= "\nPage(" + pos.pageX + " , " + pos.pageY + ")";
		alert(r);
	});
	$("#sethovermode").click(function () {setHoverMode() });
	function setHoverMode(){
		var mode;
		options.series.spider.highlight.mode = $("#hovermode").val();
		options.grid.mode = $("#spidermode").val();
		mode = $("#scalemode").val();
		options.series.spider.scaleMode = mode;
		if(mode == 'static'){
			options.series.spider.legMin = parseFloat($("#legMin").val());
			options.series.spider.legMax = parseFloat($("#legMax").val());
		}
		else{
			options.series.spider.legMin = null;
			options.series.spider.legMax = null;
		}
		options.series.spider.legs.legStartAngle = $("#legStartAngle").val();
		p = $.plot($("#placeholder"), data, options);
	}
	});//]]>  
	</script>
		<style type="text/css">
		label {
			margin-right: 20px;
		}
		.myBorder{
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			border: 2px solid #444444; 
		}
		.myButton
		{
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
		height:100%;
		width:100%;
		box-shadow: 10px 10px 5px #888888;
		border-radius:25px;
		margin-top:5px;

		
	}
	.park{
	font: 18px Arial;
	}
	.clickToCompare{
	float:left;
	width:20%;
	height:100%;
	float:left;
	margin-top:15%;
	margin-left:50px;
	padding:3px;
	}
	#placeholder{
	width:700px;
	height:700px;
	float:left;
	background:white;
	z-index:100;

	}
	.flot-overlay{
		height:350px;
		width:350px;
	}
	.container{
	width:100%;
	height:100%;
	
	}
	.legendLabel{
	font:20px Arial;}
	.legendColorBox div{
	padding:0px !important
	}

	</style>
</head>
<body>
  <form id="myForm" style="display:none">
	<Select name="spidermode" id="spidermode">
		<Option value = "radar" selected>Radar</Option>
		<Option value = "spider">Spider</Option>
	</Select>
	<Select name="hovermode" id="hovermode">
		<Option value = "area" selected>Area</Option>
	    <Option value = "line">Lines</Option>
		<Option value = "point">Points</Option>
	</Select>
	<Select name="scalemode" id="scalemode">
		<Option value = "leg">scale by leg</Option>
		<Option value = "all" selected>scale by all values</Option>
		<Option value = "static">taken from textfields</Option>
	</Select>
	<Input type="Text" name="legMin" id="legMin" value="20">
	<Input type="Text" name="legMax" id="legMax" value="200">
	<Select name="legStartAngle" id="legStartAngle">
		<Option value="0" selected>0</Option>
		<Option value="90">90</Option>
		<Option value="180">180</Option>
		<Option value="270">270</Option>
	</Select>
	<Input type="Button" id="sethovermode" value="Set mode">
</form>
<div class="container">
	<div id="placeholder"></div>
		<div class='clickToCompare'>
		<select class='park' id="parks" name="parks" data-placeholder="Select a park to compare yourself to">
			<option class="mypark" value="0" select="selected">Select a park to compare yourself to</option>
			<?php 
			$query=$mysqli->prepare("select Park_Name,park.Park_ID, ($Social*park_dimensions.Social2+$Water*park_dimensions.Water2+$Active*park_dimensions.Active2+$Nature*park_dimensions.Nature2)/SQRT((POW(park_dimensions.Social2,2)+POW(park_dimensions.Water2,2)+POW(park_dimensions.Active2,2)+POW(park_dimensions.Nature2,2))*SQRT(POW($Social,2)+POW($Water,2)+POW($Active,2)+POW($Nature,2))) as weight from park_dimensions join park on park.Park_ID=park_dimensions.Park_ID order by weight desc");
			$query->execute();
			$query->bind_result($Park_Name, $Park_ID, $weight);
			while($query->fetch()){
				echo "<option class=\"park\" value=\"".$Park_ID."\">".$Park_Name."</option>";
			}
			?>
		</select>
		<div id="compare" class="myButton" onclick="var d=document.getElementById('parks').value;if(d!=0){window.location.href='create_profile.php?park='+d}else{alert('You must select a park');}">Click to Compare</div>
	</div>
</div>
  