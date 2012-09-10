<?php
$cr = base64_decode($_REQUEST['cr']);

$req_dump = print_r($_REQUEST, TRUE);
$fp = fopen('/tmp/request.log', 'a');
fwrite($fp, $req_dump);
fclose($fp);
?>
