<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?php if(webinfo('web_index_name')){?><?php echo webinfo('web_index_name');?><?php }else{?><?php echo webinfo('web_name');?><?php }?></title>
<link href="<?php cmspath('template');?>/style.css" rel="stylesheet" type="text/css">
</head>

<body>

<?php $this->display('head',1,1);?>

<div class="center">
	<?php echo flash_ad('');?>       
    <div class="centertext">
    	<?php $index_cate=get_tpl_cate_list($where='is_index=1',$pic='yes',$order_type='',$order='',$limit='0,2',$lang='');?>
        <?php 
 $fun_return=$index_cate;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
    	<div class="centerli">
        	<h3><a href="<?php echo $v['cate_url'];?>"><?php echo $v['cate_name'];?></a></h3>
           <a href="<?php echo $v['cate_url'];?>"><img class="centerliimg" src="<?php echo $v['cate_pic2'];?>" /></a>
           <a href="<?php echo $v['cate_url'];?>"><img style="margin:0 77px;" src="<?php cmspath('template');?>/images/btn_moer.png" /></a>
       </div>
       <?php 
}
}?>
       
       <div class="centerli" style="background:none">
        	<a href="/down/down.php?id=31"><img src="<?php cmspath('template');?>/images/download.jpg" /></a>
           <a href="/contact.html"><img src="<?php cmspath('template');?>/images/conterUS.jpg" /></a>
       </div>
    </div>
</div>
<?php $this->display('foot',1,1);?>
</body>
</html>