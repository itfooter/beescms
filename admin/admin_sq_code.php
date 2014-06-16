<?php


define('IN_CMS','true');
include('init.php');
$lang=isset($_REQUEST['lang'])?fl_html(fl_value($_REQUEST['lang'])):get_lang_main();

$sq_code = $_POST['sq_code'];
if(empty($sq_code)){msg('请填写授权码!');}
//写入文件
$s="<?php\n\$sq_code=\"".$sq_code."\";\n?>";
$file=DATA_PATH.'sq_code.php';
creat_inc($file,$s);
msg('提交完成');
?>
