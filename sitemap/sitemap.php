<?php


//if(!file_exists("../data/install.lock")||!file_exists("../data/confing.php")){header("location:../install/index.php");exit();}
define('CMS',true);
require_once('../includes/init.php');
require_once('../includes/fun.php');
require_once('../includes/lib.php');
$lang=isset($_REQUEST['lang'])?htmlspecialchars(fl_value($_REQUEST['lang'])):get_main_lang();
if(file_exists(LANG_PATH.'lang_'.$lang.'.php')){include(LANG_PATH.'lang_'.$lang.'.php');}//语言包缓存,数组$language
if(file_exists(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php')){include(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php');}//当前语言下的栏目
$_confing=get_confing($lang);
$tpl->template_dir=TP_PATH.$_confing['web_template'].'/';//模板路径
$tpl->template_lang=$lang;//语言
$tpl->template_is_cache=0;//缓存	 		
$GLOBALS['tpl']->display('sitemap');//载入缓存文

?>
