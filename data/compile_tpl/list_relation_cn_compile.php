<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关联公司_<?php echo webinfo('web_name');?></title>
<link href="<?php cmspath('template');?>/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<?php $this->display('head',1,1);?>

<?php echo cateinfo('cate_pic');?>

<div class="Description">
  <div class="left" style="padding-bottom:200px;">
    <table style="width:470px;" border="0" align="center" cellpadding="0" cellspacing="0">
        <?php 
 $fun_return=get_link();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
        <tr>
       	  	<td><a href="<?php echo $v['link_url'];?>">点此进入>> <?php echo $v['link_name'];?></a> </td>
            <td align="center"><img src="upfile/ISO140012004.jpg" width="130" height="184" alt="ISO14001:2004" title="" /><br /><br />
            <?php echo $v['link_name'];?></td>
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
