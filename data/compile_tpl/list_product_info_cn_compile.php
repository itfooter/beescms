<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品介绍</title>
<link href="<?php cmspath('template');?>/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<?php $this->display('head',1,1);?>

<?php echo cateinfo('cate_pic');?>

<div class="materials">
	<div class="left">
    
   	  <?php $this->display('left_product_nav',1,1);?>
      
  	  <?php $this->display('left',1,1);?>
       
    </div>
    <div class="right">
    	<div class="BreadCrumbs"><?php position(); ?></div>
      <div class="rightcontent">
      
      <?php echo cateinfo('cate_content');?>
      
      <ul class="piclist">
      	<!--<a href="<?php echo $v['url'];?>" <?php echo $v['target'];?>>-->
        <?php 
 $fun_return=list_article();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
       	<li><img src="<?php echo $v['thumb_pic'];?>" border="0" title="<?php echo $v['title'];?>" /></li>
       <?php 
}
}?> 
       
    </ul>
</div>
    </div>
</div>

<?php $this->display('foot',1,1);?>

</body>
</html>
