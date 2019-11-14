<html><body><?php
/* EDIT EMAIL AND PASSWORD */
$EMAIL      = "lllbbblll@hushmail.com";
$PASSWORD   = "myPassword1";
$cookie_file = 'cookie.txt';
$cookie='';
function cURL($url, $header=NULL, $cookie, $p=NULL)
{

	$ch = curl_init();
    curl_setopt($ch, CURLOPT_HEADER, 1);
	curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie.txt');
	//curl_setopt($ch, CURLOPT_COOKIEFILE, 'cookie.txt');
    curl_setopt($ch, CURLOPT_NOBODY, 0);
    curl_setopt($ch, CURLOPT_HEADER, FALSE); 
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_COOKIE, $cookie);
    curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	//curl_setopt($ch, CURLOPT_COOKIE,$cookie1.'; '.$cookie2); 
    if ($p) {
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $p);
    }
    $result = curl_exec($ch);
    if ($result) {
        return $result;
    } else {
        return curl_error($ch);
    }
    curl_close($ch);
}
$a = cURL("https://login.facebook.com/login.php?login_attempt=1",true,null,"email=$EMAIL&pass=$PASSWORD");

preg_match('%Set-Cookie: ([^;]+);%',$a,$b);
for ($i=0;$i<count($b);$i++){
	echo "<p>".$b[$i]."</p></br>";
}
echo $b[1] ;
$c = cURL("https://login.facebook.com/login.php?login_attempt=1",true,$b[1],"email=$EMAIL&pass=$PASSWORD");
echo $c;
preg_match_all('%Set-Cookie: ([^;]+);%',$c,$d);
for($i=0;$i<count($d[0]);$i++){
	echo "out"."</br>";
    $cookie.=$d[0][$i]."; ";
}
/*
NOW TO JUST OPEN ANOTHER URL EDIT THE FIRST ARGUMENT OF THE FOLLOWING FUNCTION.
TO SEND SOME DATA EDIT THE LAST ARGUMENT.
*/
echo cURL("https://www.facebook.com/search/480347641986194/likers/105426616157521/likers/intersect",null,$cookie,null);
?>
</body></html>