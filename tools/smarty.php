<?php

$pwd = getcwd();
require_once($pwd . '/../libs/Smarty.class.php');
$smarty = new Smarty();

$ua = strtolower($_SERVER['HTTP_USER_AGENT']);
if (stripos($ua, 'android') !== false or 
    stripos($ua, 'mobile') !== false or stripos($ua, 'iPhone')) {
        $smarty->assign("mobile", true);
}

$smarty->setTemplateDir($pwd . '/templates/');
$smarty->setCompileDir($pwd . '/../smarty/templates_c/');
$smarty->setConfigDir($pwd . '/../smarty/configs/');
$smarty->setCacheDir($pwd . '/../smarty/cache/');

?>
