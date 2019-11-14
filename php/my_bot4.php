<html>
<body>
<?php
require 'simple_html_dom.php';
$endOfPage=0;
$counter=0;
$Parks=array(array());
$meaningfulWords=array(array("social", 0), array("family",  0), array("play",  0), array("swing",  0), array("child",  0), array("party",  0), array("cook",  0), array("bbq",  0), array("pet",  0), array("barbecue",  0), array("picnic",  0), array("grill",  0), array("kid",  0), array("dogs",  0), array("animal",  0), array("cabin",  0), array("bathroom",  0), array("handicap",  0), array("restroom",  0), array("beer",  0), array("smoke",  0), array("pet-free",  0), array("isolate",  0), array("peace",  0), array("quiet",  0), array("anti-socializing",  0), array("drink",  0), array("beach",  0), array("boat",  0), array("water",  0), array("sun",  0), array("fish",  0), array("wading",  0), array("wade",  0), array("pool",  0), array("river",  0), array("stream",  0), array("tube",  0), array("float",  0), array("sprinkler",  0), array("hot",  0), array("bikini",  0), array("wet",  0), array("ski",  0), array("dive",  0), array("swim",  0), array("active",  0), array("walk",  0), array("exercise",  0), array("climb",  0), array("adventur",  0), array("athletic",  0), array("soccer",  0), array("softball",  0), array("basketball",  0), array("baseball",  0), array("softball",  0), array("sports",  0), array("volleyball",  0), array("jog",  0), array("bik",  0), array("backpack",  0), array("exciting",  0), array("explor",  0), array("hik",  0), array("trail",  0), array("look",  0), array("nature",  0), array("relax",  0), array("camp",  0), array("fire",  0), array("wildlife",  0), array("cave",  0), array("sight",  0), array("watch",  0), array("view",  0), array("plant",  0), array("explor",  0), array("stargaze",  0), array("star",  0), array("pictur",  0), array("photo",  0), array("astronomy",  0), array("outside",  0), array("bird", 0));
var_dump($meaningfulWords);
echo "<br/><br/>";

set_time_limit(0);
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
foreach ($Parks as $myPark){

	if(in_array($counter,array(33, 316, 403))) {
		echo $counter."<br>";
		//if(($counter%10)==3){
			$html = new simple_html_dom();
			//echo $myPark[0]." ".$myPark[1]."<br>";
			$ch=curl_init();
			$ch=curl_setup_regularhttp($ch, $myPark[1]);
			$result=curl_exec($ch);
			$html->load($result);
			$myDoc=strtolower($html->plaintext);
			$html->clear();
			unset($html);
			$totalDocumentWordCount=str_word_count($myDoc,0);
			if ($totalDocumentWordCount < 50){
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
			}
			/*
			else{
				foreach($meaningfulWords as $meaningfulWord){
					$meaningfulWord[1]=substr_count($myDoc,$meaningfulWord[0]);
					echo "Weight for ".$meaningfulWord[0].'='.$meaningfulWord[1].'/'.$totalDocumentWordCount."<br>";
				}
				echo getMyDimensions();
			}*/
	//	}
			curl_close($ch);
			unset($ch);
	}		
	$counter++;
	//echo str_word_count($html->plaintext);
}
echo $totalCamp;


?>
</body>
</html>
<?php
function getMyDimensions(){
	
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
?>