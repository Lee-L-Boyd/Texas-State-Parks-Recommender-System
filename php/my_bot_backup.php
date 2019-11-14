<html>
<body>
<?php
require 'simple_html_dom.php';
$endOfPage=0;
$counter=0;
$Parks=array(array());
$meaningfulWords=array(array("social", 0), array("family",  0), array("play",  0), array("swing",  0), array("child",  0), array("party",  0), array("cook",  0), array("bbq",  0), array("pet",  0), array("barbecue",  0), array("picnic",  0), array("grill",  0), array("kid",  0), array("dogs",  0), array("animal",  0), array("cabin",  0), array("bathroom",  0), array("handicap",  0), array("restroom",  0), array("beer",  0), array("smoke",  0), array("free",  0), array("isolate",  0), array("peace",  0), array("quiet",  0), array("anti",  0), array("drink",  0), array("beach",  0), array("boat",  0), array("water",  0), array("sun",  0), array("fish",  0), array("wading",  0), array("wade",  0), array("pool",  0), array("river",  0), array("stream",  0), array("tube",  0), array("floa",  0), array("sprinkler",  0), array("hot",  0), array("bikini",  0), array("wet",  0), array("ski",  0), array("dive",  0), array("swim",  0), array("active",  0), array("walk",  0), array("exercise",  0), array("climb",  0), array("adventur",  0), array("athletic",  0), array("soccer",  0), array("softball",  0), array("basketball",  0), array("baseball",  0), array("softball",  0), array("sports",  0), array("volleyball",  0), array("jog",  0), array("bik",  0), array("backpack",  0), array("exciting",  0), array("explor",  0), array("hik",  0), array("trail",  0), array("look",  0), array("nature",  0), array("relax",  0), array("camp",  0), array("fire",  0), array("wildlife",  0), array("cave",  0), array("sight",  0), array("watch",  0), array("view",  0), array("plant",  0), array("explor",  0), array("stargaze",  0), array("star",  0), array("pictur",  0), array("photo",  0), array("astronomy",  0), array("outside",  0), array("bird", 0));
//var_dump($meaningfulWords);
echo "<br/><br/>";
set_time_limit(0);

topPark(6,10,10,6);


?>
</body>
</html>
<?php

function topPark($S, $W, $A, $N){
	include "newDBObj.php";
	$Park_ID=1;
	$topScores=array(array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''),array('Park_ID'=>0,'Score'=>0,'website'=>''));
	while ($Park_ID<582){
		$query=$mysqli->prepare("select Park_Dimensions.Social2, Park_Dimensions.Water2, Park_Dimensions.Active2, Park_Dimensions.Nature2, Park_Name, Website from Park_Dimensions join Park on Park.Park_ID=Park_Dimensions.Park_ID where Park_Dimensions.Park_ID=$Park_ID");
		$query->execute();
		$query->bind_result($pS,$pW,$pA,$pN,$Park_Name, $Website);
		$Parks[$Park_ID-1]=$Park_Name;
		if ($query->fetch()){
			$query->close();
			if(((pow($pS,2)+pow($pW,2)+pow($pA,2)+pow($pN,2))*(pow($S,2)+pow($W,2)+pow($A,2)+pow($N,2)))!=0){
				$weight=($S*$pS+$W*$pW+$A*$pA+$N*$pN)/sqrt((pow($pS,2)+pow($pW,2)+pow($pA,2)+pow($pN,2))*sqrt(pow($S,2)+pow($W,2)+pow($A,2)+pow($N,2)));
				$alreadyPlaced=0;
				$x=0;
				while ($x<10){
					if ($weight > $topScores[$x]['Score']){
						$topScores[$x]['Park_ID']=$Park_ID;
						$topScores[$x]['Score']=$weight;
						$topScores[$x]['website']=$Website;
						$x=19;
					}
					$x++;
				}
			}
		}
		
		$Park_ID++;
	}
	echo "1.) <a href=\"".$topScores[0]['website']."\">".$Parks[$topScores[0]['Park_ID']]."</a><br>";// (ParkNo".$topScores[0]['Park_ID'].") and the score is: ".$topScores[0]['Score']."<br>";
	echo "2.) <a href=\"".$topScores[1]['website']."\">".$Parks[$topScores[1]['Park_ID']]."</a><br>";// (ParkNo".$topScores[1]['Park_ID'].") and the score is: ".$topScores[1]['Score']."<br>";
	echo "3.) <a href=\"".$topScores[2]['website']."\">".$Parks[$topScores[2]['Park_ID']]."</a><br>";// (ParkNo".$topScores[2]['Park_ID'].") and the score is: ".$topScores[2]['Score']."<br>";
	echo "4.) <a href=\"".$topScores[3]['website']."\">".$Parks[$topScores[3]['Park_ID']]."</a><br>";// (ParkNo".$topScores[3]['Park_ID'].") and the score is: ".$topScores[3]['Score']."<br>";
	echo "5.) <a href=\"".$topScores[4]['website']."\">".$Parks[$topScores[4]['Park_ID']]."</a><br>";// (ParkNo".$topScores[4]['Park_ID'].") and the score is: ".$topScores[4]['Score']."<br>";
	echo "6.) <a href=\"".$topScores[5]['website']."\">".$Parks[$topScores[5]['Park_ID']]."</a><br>";// (ParkNo".$topScores[5]['Park_ID'].") and the score is: ".$topScores[5]['Score']."<br>";
	echo "7.) <a href=\"".$topScores[6]['website']."\">".$Parks[$topScores[6]['Park_ID']]."</a><br>";// (ParkNo".$topScores[6]['Park_ID'].") and the score is: ".$topScores[6]['Score']."<br>";
	echo "8.) <a href=\"".$topScores[7]['website']."\">".$Parks[$topScores[7]['Park_ID']]."</a><br>";// (ParkNo".$topScores[7]['Park_ID'].") and the score is: ".$topScores[7]['Score']."<br>";
	echo "9.) <a href=\"".$topScores[8]['website']."\">".$Parks[$topScores[8]['Park_ID']]."</a><br>";// (ParkNo".$topScores[8]['Park_ID'].") and the score is: ".$topScores[8]['Score']."<br>";
	echo "10.) <a href=\"".$topScores[9]['website']."\">".$Parks[$topScores[9]['Park_ID']]."</a><br>";// (ParkNo".$topScores[9]['Park_ID'].") and the score is: ".$topScores[9]['Score']."<br>";
}
function curl_setup_regularhttp($ch, $url){
	curl_setopt($ch, CURLOPT_HEADER, FALSE); 
	curl_setopt($ch, CURLOPT_VERBOSE, true);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_FORBID_REUSE, 0);
	curl_setopt($ch, CURLOPT_FRESH_CONNECT, 0);
	curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
	curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36");
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); 
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt"); 
    curl_setopt($ch, CURLOPT_URL, $url); 
	return $ch;
}
function curl_grab_page($site,$data,$proxy,$proxystatus){ 
    $ch = curl_init(); 
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data); 
	curl_setopt($ch, CURLOPT_VERBOSE, true);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_FORBID_REUSE, 0);
	curl_setopt($ch, CURLOPT_FRESH_CONNECT, 0);
	curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
	curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36");
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true); 
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    if ($proxystatus == 'on') { 
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, true); 
        curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, TRUE); 
        curl_setopt($ch, CURLOPT_PROXY, $proxy); 
    } 
    curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt"); 
    curl_setopt($ch, CURLOPT_URL, $site); 
	curl_setopt($ch, CURLOPT_POST, TRUE); 
    ob_start();      // prevent any output 
	echo curl_error($ch);
    return curl_exec ($ch); // execute the curl command 
	
	ob_end_clean();  // stop preventing output 
    curl_close ($ch); 
} 
?>

<!-- old code from when this code chopped up website using regular expressions

$ch=curl_init("http://www.wildtexas.com/parks/results.php");
curl_setup_regularhttp($ch);


//$subject = curl_exec($ch);
//echo $subject;
//$pattern = '/[<a href=\"]{1}.+[\">]{1}(.+)[<\/a>]{1}/';
//preg_match($pattern, $subject, $myMatch);
//$url=preg_match_all('/href=.*(www\.(.+?)\.(com|us|org|gov)(?!\/(fishboat|huntwild)).{0,100}?)\"/', $subject, $myMatch);
//$url=preg_match_all('/<href=\"(.*?)\">/', $subject, $myMatch);
	//foreach ($myMatch as $myMatch2){

/*	
foreach ($myMatch[1] as $myMatch3){
	if($x>0){
		foreach ($myWebSites as $myWebSite){
			if($myMatch3==$myWebSite){
				$uniqueCounter=$myWebPlaceholder;
			}
			else{
				$myWebPlaceholder++;
			}
		}
		$myWebPlaceholder=0;
	}
	if($uniqueCounter<0){
		$myWebSites[$x]=$myMatch3;
		$myWebSitesCounter[$x]=1;
		//echo "$myMatch3 count:";
		//echo "$myWebSitesCounter[$x]</br>";
		$x++;
	}
	else{
		$myWebSitesCounter[$uniqueCounter]=$myWebSitesCounter[$uniqueCounter]+1;
		//echo "$myMatch3 count:$myWebSitesCounter[$uniqueCounter]</br>";
	}
	$uniqueCounter=-1;
}
$uniqueCounter=0;
foreach($myWebSites as $myWebsite){
	echo"$myWebsite count:$myWebSitesCounter[$uniqueCounter]</br>";
	$uniqueCounter++;
	//if ($uniqueCounter<50){
		$parkAttributes=getAttributes($myWebsite);
		if (!is_null($parkAttributes[1])){
			foreach($parkAttributes[1] as $parkAttribute)
				echo("<p style=\"margin-left:10px;\">".$parkAttribute."</p>");
		}
	//}
}
$uniqueCounter=-1;

*/

function getAttributes($myWebsite){
	set_time_limit(0);
	$ch=curl_init($myWebsite);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER,1); 
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		'Accept-Language: en-us'
	));
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);	
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
	curl_setopt($ch, CURLOPT_TIMEOUT_MS, 2000);
	$attribute = curl_exec($ch);
	$trueness=preg_match_all('/.*<title>(.*)<\/title>.*/',$attribute,$title);
	return $title;

}

/*
	curl_close($ch);
	*/
	
	
	
	
	--------------------Below code was used in as an automated google search to find websites for parks whose websites were not working, ended up just doing it manually, as there were only 50 Parks without working sites---------------------------
	
	
	
				/*if ($totalDocumentWordCount < 50){
				$html = new simple_html_dom();
				echo $myPark[0]." ".$myPark[1]."-NOT A WEBSITE <br>";
				$data=str_replace(' ','+',$myPark[0]);
				$data="cmd=process_search&language=english&enginecount=2&pl=&abp=1&cdm=&ff=&theme=&flag_ac=0&cat=web&query=".$myPark[0]."+tx&x=29&y=8";
				$result=curl_grab_page("https://ixquick.com/do/metasearch.pl?",$data,'','off');
				$html->load($result);
				$nextHrefIsAResult=0;
				foreach($html->find('a') as $element) {
					echo $element->parentNode;
					$siteName=$element->text();
					if($nextHrefIsAResult==2){
						$myParkWebSite=$element->href;
						$test=substr($myParkWebSite,24, 3);
						echo $myParkName."<br>".$myParkWebSite."<br><br>";
						$nextHrefIsAResult=3;
					}
					elseif(substr_count($siteName,"webcrawler")>=1 && $nextHrefIsAResult!=3){
						$nextHrefIsAResult++;
					}
					
				}
				$html->clear();
				unset($html);
			}*/
			/*
			
			
			
			
			
			--------------------------------The below code was used to fill an array with all park names and websites before it was sent to the database---------------------------------
			
/*
$x=0;
$uniqueCounter=-1;
$myWebPlaceholder=0;
$html=file_get_html('http://www.wildtexas.com/parks/results.php');
foreach($html->find('a') as $element) {
	$myParkName=$element->text();
	$myParkWebSite=$element->href;
	if(null!=$myParkName && strlen($myParkName)>1 && $myParkName!="to top" && $myParkName!="Make Reservations" && $myParkName!="Search Again" && $endOfPage!=1){
		$test=substr($myParkWebSite,0, 1);
		if($test=="/"){
			$myParkWebSite="http://www.wildtexas.com".$myParkWebSite;
		}
		$Parks[$counter][0]=$myParkName;
		$Parks[$counter][1]=$myParkWebSite;
		$counter++;
		if ($myParkName=="Zilker Nature Preserve"){//otherwise end of page stop collecting
			echo $counter." Results!";
			$endOfPage=1;
		}
	}
}
$counter=0;
$totalCamp=0;
$howMany=0;
*/



			
			
			------------The below code was used to fill the total words for each website of each park (it was inside of a for loop that goes through each park)---------------
			
			/*
					$query=$mysqli->prepare("select word_count, Park_Name, Website from park where Park_ID=$counter");
		$query->execute();
		$query->bind_result($result,$result2,$result3);
		if ($query->fetch()){
			$query->close();
			if(intval($result)==0){
				echo $result2.", ".$result3.", ".intval($result).', '.$counter.", ".$howMany++."<br>";
				$html = new simple_html_dom();
				//echo $myPark[0]." ".$myPark[1]."<br>";
				$ch=curl_init();
				$ch=curl_setup_regularhttp($ch, $result3);
				$result=curl_exec($ch);
				$html->load($result);
				$myDoc=strtolower($html->plaintext);
				$html->clear();
				unset($html);
				$totalDocumentWordCount=str_word_count($myDoc,0);
				$query=$mysqli->prepare("update park set word_count = $totalDocumentWordCount where $counter=Park_ID");
				$query->execute();
				$query->close();
				curl_close($ch);
				unset($ch);
			}
		}
		
		
		
		
		
		
-----------------Below code was used to fill the values for each keyword---------------------
$id=1;
include_once "newDBObj.php";
while($id < 582){
	$query=$mysqli->prepare("SELECT Website FROM Park WHERE Park_ID=$id");
	$query->execute();
	$query->bind_result($result);
	if ($query->fetch()){
		$query->close();
		$html = new simple_html_dom();
		$ch=curl_init();
		$ch=curl_setup_regularhttp($ch, $result);
		$result=curl_exec($ch);
		$html->load($result);
		$myDoc=strtolower($html->plaintext);
		echo $myDoc;
		$html->clear();
		unset($html);
		foreach($meaningfulWords as $meaningfulWord){
			echo $meaningfulWord[0].'<br>';
			$meaningfulWord[1]=substr_count($myDoc,$meaningfulWord[0]);
			echo "Weight for ".$meaningfulWord[0].'='.$meaningfulWord[1]."<br>";
			$query=$mysqli->prepare("update Park set $meaningfulWord[0]=$meaningfulWord[1] where Park_ID=?");
			$query->bind_param("i",$id);
			$query->execute();
			//$query->bind_result($result);
			$query->close();
		}
	}	
	$id++;
}		


-----------------------below code was used to reduce the dimensions of parks to SWAN------------------
$id=1;
$attributes=array('Social'=>0, 'Water'=>0,'Active'=>0, 'Nature'=>0);
while($id < 582){
//while($id < 50){
	$wordCounter=0;
	foreach($meaningfulWords as $meaningfulWord){
		//echo $id.", ".$meaningfulWord[0].', ';
		$query=$mysqli->prepare("
			SELECT round(
				log(
					1.0 * (
						581/(
							SELECT count(
								$meaningfulWord[0]
							) FROM park WHERE $meaningfulWord[0]>0
						)
					)
				)*1+log(
					$meaningfulWord[0]
				)
			) AS TfIdf FROM park WHERE(
				1.0 * $meaningfulWord[0]/word_count
			) > 0 and park_ID='$id'
		");	
		$query->execute();
		$query->bind_result($result);
		$query->fetch();
		$meaningfulWord[1]=intval($result);
		//echo $wordCounter. ', '. $meaningfulWord[0].'<br>';
		if($wordCounter <=20){
			echo "Adding ".$meaningfulWord[1]." points to Social for this word ".$meaningfulWord[0]."<br>";
			$attributes['Social']+=$meaningfulWord[1];
		}
		elseif($wordCounter<=25){
			echo "Removing ".$meaningfulWord[1]." points from Social for this word ".$meaningfulWord[0]."<br>";
			$attributes['Social']-=$meaningfulWord[1];
		}
		elseif($wordCounter<=28){
			echo "Adding ".$meaningfulWord[1]." points to Social and Water for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Social']+=$meaningfulWord[1];
			$attributes['Water']+=$meaningfulWord[1];
		}
		elseif($wordCounter<=42){
			echo "Adding ".$meaningfulWord[1]." points to Water for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Water']+=$meaningfulWord[1];
		}
		elseif($wordCounter<=45){
			echo "Adding ".$meaningfulWord[1]." points to Water and Active for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Water']+=$meaningfulWord[1];
			$attributes['Active']+=$meaningfulWord[1];
		}
		elseif($wordCounter<=62){
			echo "Adding ".$meaningfulWord[1]." points to Active for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Active']+=$meaningfulWord[1];
		}
		elseif($wordCounter<=48){
			echo "Adding ".$meaningfulWord[1]." points to Active and Nature for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Active']+=$meaningfulWord[1];
			$attributes['Nature']+=$meaningfulWord[1];
		}
		elseif($wordCounter==49){
			echo "Subtracting ".$meaningfulWord[1]." points from Active for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Active']-=$meaningfulWord[1];
		}
		else{
			echo "Adding ".$meaningfulWord[1]." points from Nature for this word: ".$meaningfulWord[0]."<br>";
			$attributes['Nature']+=$meaningfulWord[1];
		}
		$query->close();
		$wordCounter++;
	}
	$id1=$id;
	echo "The Social score for ".$id." is ".$attributes['Social'].'<br>';
	echo "The Water score for ".$id." is ".$attributes['Water'].'<br>';
	echo "The Active score for ".$id." is ".$attributes['Active'].'<br>';
	echo "The Nature score for ".$id." is ".$attributes['Nature'].'<br>';
	$query=$mysqli->prepare("INSERT INTO park_dimensions values(?,?,?,?,?,?)");
	$query->bind_param("iiiiii",$id1,$id,$attributes['Social'],$attributes['Water'],$attributes['Active'],$attributes['Nature']);
	$query->execute();
	$attributes['Social']=0;
	$attributes['Water']=0;
	$attributes['Active']=0;
	$attributes['Nature']=0;
	
	$id++;
}

-----------------------The Below function was written to normalize the lengths of each dimension, but it turned out that that is unnecessary since am using cosine similarity
function normalizeSWAN(){
	include "newDBObj.php";
	$query=$mysqli->prepare("select MAX(Social),MAX(Water),MAX(Active),MAX(Nature) from Park_Dimensions");
	$query->execute();
	$query->bind_result($SocialMax,$WaterMax,$ActiveMax,$NatureMax);

	if ($query->fetch()){
			$query->close();
				echo "The max Social dimension is ". $SocialMax." <br>";
				echo "The max Water dimension is ". $WaterMax." <br>";
				echo "The max Active dimension is ". $ActiveMax." <br>";
				echo "The max Nature dimension is ". $NatureMax." <br>";
	}
	$query=$mysqli->prepare("update Park_Dimensions set Social2=(100.0*(Social/LOG10($SocialMax)))");
	$query->execute();
	$query->close();
	$query=$mysqli->prepare("update Park_Dimensions set Water2=(100.0*(Water/LOG10($WaterMax)))");
	$query->execute();
	$query->close();
	$query=$mysqli->prepare("update Park_Dimensions set Active2=(100.0*(Active/LOG10($ActiveMax)))");
	$query->execute();
	$query->close();
	$query=$mysqli->prepare("update Park_Dimensions set Nature2=(100.0*(Nature/LOG10($NatureMax)))");
	$query->execute();
	$query->close();
}



		*/

		?>