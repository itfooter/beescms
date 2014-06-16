<?php


define('IN_CMS','true');
include('init.php');
if(empty($_SESSION['login_in'])||empty($_SESSION['admin'])){msg("请先登录",'login.php');}
$sql="select*from ".DB_PRE."admin where admin_name='{$_SESSION['admin']}'";
$rel=$mysql->fetch_asc($sql);
include('template/admin_top.html');
?>