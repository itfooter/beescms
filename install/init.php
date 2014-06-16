<?php


if(!defined('CMS')){die('Hacking attempt');}
error_reporting(E_ALL & ~E_NOTICE);
header("Content-type: text/html; charset=utf-8"); 
define('CMS_PATH',str_replace('install','',str_replace('\\','/',dirname(__FILE__))));
define('INC_PATH',CMS_PATH.'includes/');
define('DATA_PATH',CMS_PATH.'data/');
$c_path=preg_replace('/install\/index.php/','',$_SERVER['PHP_SELF']);
define('CMS_SELF',$c_path);

$s_name=str_replace('plus','',dirname($_SERVER['SCRIPT_NAME']));
$cms_url='http://'.$_SERVER['HTTP_HOST'].$s_name;
define('CMS_URL',$cms_url);
$php_file_copy = 'beescms3.0';//防止文件覆盖
include(INC_PATH.'fun.php');
@set_magic_quotes_runtime(0);
if (!get_magic_quotes_gpc())
{
    if (isset($_REQUEST))
    {
        $_REQUEST  = addsl($_REQUEST);
    }
    $_COOKIE   = addsl($_COOKIE);
	$_POST = addsl($_POST);
	$_GET = addsl($_GET);
}
@extract($_POST);
@extract($_GET);
@extract($_COOKIE);
?>
