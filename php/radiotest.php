<?php
session_start();
include_once "check_valid.php";
check_timeout();
check_user();
include "newDBObj.php";

if(isset($_GET['Social']) && isset($_GET['Water']) && isset($_GET['Active']) && isset($_GET['Nature'])){
	$User=$_SESSION['user'];
	$Social=intval($_GET['Social']);
	$Water=intval($_GET['Water']);
	$Active=intval($_GET['Active']);
	$Nature=intval($_GET['Nature']);
	
	$_SESSION['Social']=intval($_GET['Social']);
	$_SESSION['Water']=intval($_GET['Water']);
	$_SESSION['Active']=intval($_GET['Active']);
	$_SESSION['Nature']=intval($_GET['Nature']);

	$query=$mysqli->prepare('update User set User_Social=? where User_Name=?');
	$query->bind_param("is", $Social, $User );
	$query->execute();
	$query->close();
	
	$query=$mysqli->prepare('update User set User_Water=? where User_Name=?');
	$query->bind_param("is",$Water, $User );
	$query->execute();
	$query->close();
	
	$query=$mysqli->prepare('update User set User_Active=? where User_Name=?');
	$query->bind_param("is", $Active, $User );
	$query->execute();
	$query->close();
		
	$query=$mysqli->prepare('update User set User_Nature=? where User_Name=?');
	$query->bind_param("is", $Nature, $User );
	$query->execute();
	$query->close();

	echo '<script type="text/javascript">window.location.href="my_bot.php";</script>';
} 




?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<script type='text/javascript' src='http://code.jquery.com/jquery-git.js'></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.js"></script>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<title>Create Your Profile</title>
	<link rel="stylesheet" href="style.css" />
	<style type="text/css">
		label {
			margin-right: 20px;
		}
		.myBorder{
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			border: 2px solid #444444; 
		}
		.myButton{
			  font: bold 20px Arial;
			  text-decoration: none;
			  background-color: #EEEEEE;
			  color: #333333;
			  padding: 2px 6px 2px 6px;
			  border-top: 1px solid #CCCCCC;
			  border-right: 1px solid #333333;
			  border-bottom: 1px solid #333333;
			  border-left: 1px solid #CCCCCC;
			  height:100%;
			  width=100%;
			  cursor: pointer;
			  cursor: hand; 
		}
	</style>
</head>
<?php
?>
<body>
	<div class="myBorder">
		<h1 style="margin:0; margin-top:10px; padding:0; padding-left:25px; padding-bottom:10px; font-family:sans-serif;">-Create Your profile-</h1>
		<form action="radiotest.php" method="GET">
			<div style="background:#444; color:#fafafa; padding:10px;">
				<h3>When I got to parks, I like to socialize.  (Family, friends, pets)</h3>
				<table>
					<tr>
						<td>
							<input type="radio" name="Social" id="radio1" class="css-checkbox" value="1" />
							<label for="radio1" class="css-label">Ew, no.</label>
						</td>
						<td>
							<input type="radio" name="Social" id="radio2" class="css-checkbox" value="2" />
							<label for="radio2" class="css-label">It doesn't nauseate me.</label>
						</td>
						<td>
							<input type="radio" name="Social" id="radio3" class="css-checkbox" "value="3"/>
							<label for="radio3" class="css-label">I don't care either way.</label>
						</td>
						<td>
							<input type="radio" name="Social" id="radio4" class="css-checkbox" value="4" />
							<label for="radio4" class="css-label">Yeah I like that.</label>
						</td>
						<td>
							<input type="radio" name="Social" id="radio5" class="css-checkbox" value="5"/>
							<label for="radio5" class="css-label">I want to hug em and kiss em and squeeze em!  Let me at em!!</label>
						</td>
					</tr>
				</table>
			</div>
			<div style="background:#fafafa; color:#222; padding:10px;">
				<h3>When I go to parks, I want for water because I like swimming, fishing, boating, playing in sprinklers, scuba diving, noodling, etc.</h3>
				<table>
					<tr>
						<td>
							<input type="radio" name="Water" id="radio6" class="css-checkbox" value="1"/>
							<label for="radio6" class="css-label">Terrified of water!</label>
						</td>
						<td>
							<input type="radio" name="Water" id="radio7" class="css-checkbox" value="2" />
							<label for="radio7" class="css-label">It's something that I tolerate.</label>
						</td>
						<td>
							<input type="radio" name="Water" id="radio8" class="css-checkbox" value="3" />
							<label for="radio8" class="css-label">I don't really think about that.</label>
						</td>
						<td>
							<input type="radio" name="Water" id="radio9" class="css-checkbox" value="4" />
							<label for="radio9" class="css-label">I'd like to stick my foot in.</label>
						</td>
						<td>
							<input type="radio" name="Water" id="radio10" class="css-checkbox"  value="5" />
							<label for="radio10" class="css-label">CANNONBALL!!!!</label>
						</td>
					</tr>
				</table>
			</div>
			<div style="background:#444; color:#fafafa; padding:10px;">
				<h3>I go to parks to be active, play sports, rock climb, mountain bike, hike, etc. </h3>
				<table>
					<tr>
						<td>
							<input type="radio" name="Active" id="radio11" class="css-checkbox" value="1" />
							<label for="radio11" class="css-label">Whoa, whoa, I feel light headed.</label>
						</td>
						<td>
							<input type="radio" name="Active" id="radio12" class="css-checkbox" value="2" />
							<label for="radio12" class="css-label">It sounds uncomfortable.</label>
						</td>
						<td>
							<input type="radio" name="Active" id="radio13" class="css-checkbox" value="3" />
							<label for="radio13" class="css-label">If it came up.</label>
						</td>
						<td>
							<input type="radio" name="Active" id="radio14" class="css-checkbox" value="4" />
							<label for="radio14" class="css-label">I'd burn some calories, sure.</label>
						</td>
						<td>
							<input type="radio" name="Active" id="radio15" class="css-checkbox" value="5" />
							<label for="radio15" class="css-label">Let's go!</label>
						</td>
					</tr>
				</table>
			</div>
			<div style="background:#fafafa; color:#222; padding:10px;">
				<h3>I go to parks for nature: birding, stargazing, seeing wildlife, examining plants, taking photos, etc. </h3>
				<table>
					<tr>
						<td>
							<input type="radio" name="Nature" id="radio16" class="css-checkbox" value="1"/>
							<label for="radio16" class="css-label">Like rolling around in feces.</label>
						</td>
						<td>
							<input type="radio" name="Nature" id="radio17" class="css-checkbox" value="2" />
							<label for="radio17" class="css-label">Insects are pretty gross.</label>
						</td>
						<td>
							<input type="radio" name="Nature" id="radio18" class="css-checkbox" value="3" />
							<label for="radio18" class="css-label">Wouldn't notice.</label>
						</td>
						<td>
							<input type="radio" name="Nature" id="radio19" class="css-checkbox" value="4" />
							<label for="radio19" class="css-label">Sometimes I am awed by nature.</label>
						</td>
						<td>
							<input type="radio" name="Nature" id="radio20" class="css-checkbox" value="5" />
							<label for="radio20" class="css-label">Tree + Hug = Love</label>
						</td>
					</tr>
				</table>
			</div>
				<div style="background:#444; color:#fafafa; padding:10px;">
				<h3>When I go to parks, I want solitude, just me, my tent, and the world.</h3>
				<table>
					<tr>
						<td>
							<input type="radio" name="Nature2" id="radio21" class="css-checkbox" value="1"/>
							<label for="radio21" class="css-label">I would go insane!</label>
						</td>
						<td>
							<input type="radio" name="Nature2" id="radio22" class="css-checkbox" value="2" />
							<label for="radio22" class="css-label">No tents, thanks.</label>
						</td>
						<td>
							<input type="radio" name="Nature2" id="radio23" class="css-checkbox" value="3" />
							<label for="radio23" class="css-label">I don't really notice either way.</label>
						</td>
						<td>
							<input type="radio" name="Nature2" id="radio24" class="css-checkbox" value="4" />
							<label for="radio24" class="css-label">It's a nice change of pace.</label>
						</td>
						<td>
							<input type="radio" name="Nature2" id="radio25" class="css-checkbox" value="5" />
							<label for="radio25" class="css-label">Leave me alone!</label>
						</td>
					</tr>
				</table>
			</div>
			<div style="background:#fafafa; color:#222; padding:10px; height:100%; width:100%;">
				<span class="myButton" onclick="submitMyProfile();">I'm finished, find me some parks!</span>
			</div>
		</form>
	</div>
</body>
<script type='text/javascript'>
	var Social;
	var Water;
	var Active;
	var Nature;
	var Nature2;
jQuery(document).ready(function(){
	$('input:radio[name="Social"]').change(function(){
        if ($(this).is(':checked') && $(this).val() == '1') {
            Social=1;
        }
		else{
			if ($(this).is(':checked') && $(this).val() == '2') {
				Social=2;
			}
			else{
				if ($(this).is(':checked') && $(this).val() == '3') {
					Social=3;
				}
				else{
					if ($(this).is(':checked') && $(this).val() == '4') {
						Social=4;
					}
					else{
						if ($(this).is(':checked') && $(this).val() == '5') {
							Social=5;
						}
					}
				}
			}
		}
	});
	$('input:radio[name="Water"]').change(function(){
		if ($(this).is(':checked') && $(this).val() == '1') {
			Water=1;
		}
		else{
			if ($(this).is(':checked') && $(this).val() == '2') {
				Water=2;
			}
			else{
				if ($(this).is(':checked') && $(this).val() == '3') {
					Water=3;
				}
				else{
					if ($(this).is(':checked') && $(this).val() == '4') {
						Water=4;
					}
					else{
						if ($(this).is(':checked') && $(this).val() == '5') {
							Water=5;
						}
					}
				}
			}
		}
	});
	$('input:radio[name="Active"]').change(function(){
		if ($(this).is(':checked') && $(this).val() == '1') {
			Active=1;
		}
		else{
			if ($(this).is(':checked') && $(this).val() == '2') {
				Active=2;
			}
			else{
				if ($(this).is(':checked') && $(this).val() == '3') {
					Active=3;
				}
				else{
					if ($(this).is(':checked') && $(this).val() == '4') {
						Active=4;
					}
					else{
						if ($(this).is(':checked') && $(this).val() == '5') {
							Active=5;
						}
					}
				}
			}
		}
	});
	$('input:radio[name="Nature"]').change(function(){
		if ($(this).is(':checked') && $(this).val() == '1') {
			Nature=1;
		}
		else{
			if ($(this).is(':checked') && $(this).val() == '2') {
				Nature=2;
			}
			else{
				if ($(this).is(':checked') && $(this).val() == '3') {
					Nature=3;
				}
				else{
					if ($(this).is(':checked') && $(this).val() == '4') {
						Nature=4;
					}
					else{
						if ($(this).is(':checked') && $(this).val() == '5') {
							Nature=5;
						}
					}
				}
			}
		}
	});
	$('input:radio[name="Nature2"]').change(function(){
		if ($(this).is(':checked') && $(this).val() == '1') {
			Nature2=1;
		}
		else{
			if ($(this).is(':checked') && $(this).val() == '2') {
				Nature2=2;
			}
			else{
				if ($(this).is(':checked') && $(this).val() == '3') {
					Nature2=3;
				}
				else{
					if ($(this).is(':checked') && $(this).val() == '4') {
						Nature2=4;
					}
					else{
						if ($(this).is(':checked') && $(this).val() == '5') {
							Nature2=5;
						}
					}
				}
			}
		}
	});
});
function submitMyProfile(){
	if (!Social || !Water || !Active || !Nature || !Nature2){
		alert('Please fill out all questions before submitting');
	}
	else{
		if(Social > 3){
			Social=2*Social-3;
		}
		if(Water > 3){
			Water=Water*2-3;
		}
		if(Active > 3){
			Active=Active*2-3;
		}
		if(Nature > 3){
			Nature=Nature*2-3;
		}
		if(Nature2 > 3){
			Nature2=Nature2*2-3;
		}
			
	
	
		Nature=(Nature+Nature2)/2;
		Nature=Math.round(Nature);
		var myLocation= "radiotest.php?user=<?php echo $_SESSION['user'] ?>&Social="+Social.toString()+"&Water="+Water.toString()+"&Active="+Active.toString()+"&Nature="+Nature.toString();
		location.replace(myLocation);
	}
}
</script>
</html>