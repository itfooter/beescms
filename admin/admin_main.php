<?php


define('IN_CMS','true');
include('init.php');
if(file_exists(DATA_PATH."cache_channel/cache_channel_all.php")){include(DATA_PATH."cache_channel/cache_channel_all.php");}
if(file_exists(DATA_PATH."cache_form/form.php")){include(DATA_PATH."cache_form/form.php");}
include('template/admin_main.html');
echo PW;
?>