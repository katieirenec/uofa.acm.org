<?php

$pwd = getcwd();
require_once($pwd . '/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir($pwd . '/templates/');
$smarty->setCompileDir($pwd . '/smarty/templates_c/');
$smarty->setConfigDir($pwd . '/smarty/configs/');
$smarty->setCacheDir($pwd . '/smarty/cache/');

?>
