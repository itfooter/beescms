<?php


define('IN_CMS','true');
include('init.php');
$action=isset($_REQUEST['action'])?fl_html(fl_value($_REQUEST['action'])):'channel';
$lang=isset($_REQUEST['lang'])?fl_html(fl_value($_REQUEST['lang'])):get_lang_main();
//清除缓存
if($action=='del_cache_file'){
	$tpl->del_cache();
	echo "<script type=\"text/javascript\">alert('清除完成');history.go(-1);</script>";
}
echo PW;
?>