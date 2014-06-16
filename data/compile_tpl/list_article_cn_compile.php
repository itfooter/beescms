<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="<?php echo cateinfo('cate_info_seo');?>">
<meta name="keywords" content="<?php echo cateinfo('cate_key_seo');?>">
<title><?php echo cateinfo('cate_title_seo');?>_<?php echo webinfo('web_name');?></title>
<link href="<?php cmspath('template');?>/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<?php $this->display('head',1,1);?>

<?php echo cateinfo('cate_pic');?>

<div class="Description">
  <div class="left" style="padding-bottom:200px;">
    <table style="width:470px;" border="0" align="center" cellpadding="0" cellspacing="0">
        <?php 
 $fun_return=list_article();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
        <tr>
       	  	<td><?php echo date('Y-m',$v['updatetime']);?> <a href="<?php echo $v['url'];?>" <?php echo $v['target'];?> style="<?php echo $v['style'];?>"><?php echo $v['title'];?></a> </td>
            <td align="center">
            <?php if($v['thumb_pic']){?>
            <img src="<?php echo $v['thumb_pic'];?>" width="130" height="184" alt="<?php echo $v['title'];?>" title="" /><br /><br />
            <?php echo $v['title'];?>
            <?php }?>
            </td>
        </tr>

        <?php 
}
}?>
    </table>
  </div>
    <div class="right">
    	<?php $this->display('left',1,1);?>
        
    </div>
</div>

<?php $this->display('foot',1,1);?>

</body>
</html>
