

<?php
//$data=curl_prelogin('https://www.facebook.com/search/480347641986194/likers/105426616157521/likers/intersect');
curl_login('https://www.facebook.com/login.php?login_attempt=1', 'lsd=AVoib1jY&display=&enable_profile_selector=&legacy_return=1&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=170223_9ibp&lgnjs=1397606537&email=lllbbblll%40hushmail.com&pass=myPassword1&persistent=1&default_persistent=1', '', 'off');
$test = curl_grab_page('https://www.facebook.com/search/480347641986194/likers/105426616157521/likers/intersect','','off');
preg_match('%<a href=\"([^\"]+)%',$test,$b);
echo $test;
echo $b[1];
$test = curl_grab_page($b[1],'','off');
//echo $test;
function curl_prelogin($url){
	$prelogin = curl_init(); 
	
}
function curl_login($url,$data,$proxy,$proxystatus){ 
    $fp = fopen("cookie.txt", "w"); 
    fclose($fp); 
    $login = curl_init(); 
    curl_setopt($login, CURLOPT_POSTFIELDS, $data); 
    curl_setopt($login, CURLOPT_COOKIEJAR, "cookie.txt"); 
    curl_setopt($login, CURLOPT_COOKIEFILE, "cookie.txt"); 
    curl_setopt($login, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36"); 
    curl_setopt($login, CURLOPT_TIMEOUT, 40); 
    curl_setopt($login, CURLOPT_RETURNTRANSFER, TRUE); 
    if ($proxystatus == 'on') { 
        curl_setopt($login, CURLOPT_SSL_VERIFYHOST, FALSE); 
        curl_setopt($login, CURLOPT_HTTPPROXYTUNNEL, TRUE); 
        curl_setopt($login, CURLOPT_PROXY, $proxy); 
    } 
	curl_setopt($login, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($login, CURLOPT_URL, $url); 
    curl_setopt($login, CURLOPT_HEADER, TRUE); 
    curl_setopt($login, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); 
    curl_setopt($login, CURLOPT_FOLLOWLOCATION, TRUE); 
    curl_setopt($login, CURLOPT_POST, TRUE); 
    
    ob_start();      // prevent any output 
    return curl_exec ($login); // execute the curl command 
    ob_end_clean();  // stop preventing output 
    curl_close ($login); 
    unset($login);     
}                

function curl_grab_page($site,$proxy,$proxystatus){ 
    $ch = curl_init(); 
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
    ob_start();      // prevent any output 
	echo curl_error($ch);
    return curl_exec ($ch); // execute the curl command 
	
	ob_end_clean();  // stop preventing output 
    curl_close ($ch); 
} 
?>