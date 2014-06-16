<?php



if(!file_exists("../data/install.lock")||!file_exists("../data/confing.php")){header("location:../install/index.php");exit();}
header('location:login.php');
?>
