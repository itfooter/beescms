
<div class="top">
    <div class="tip">
  	<div class="logo"><a href="<?php cmspath('index');?>"><img src="<?php cmspath('template');?>/images/logo1.png" /></a></div>
    <div class="lauage">
    	<a href="<?php cmspath('index');?>"><img src="<?php cmspath('template');?>/images/logo2.jpg" /></a><br />
        <a href="<?php cmspath('index');?>">中文版</a>
        
        <a style="margin-left:10px;" href="/index.php?lang=en"><img src="<?php cmspath('template');?>/images/btn_eng.png" /></a>
        <a href="/index.php?lang=jp"><img src="<?php cmspath('template');?>/images/btn_jp.png" /></a>
    </div>
  </div>
  <div class="dh">
    <ul>
        <a href="<?php cmspath('index');?>"><li style="background:none">首页</li></a>
        <?php 
 $fun_return=nav_middle();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $nav_child){?>
        <a href="<?php echo $nav_child['url'];?>"><li><?php echo $nav_child['cate_name'];?></li></a>
        <?php 
}
}?>
    </ul>
	</div>
</div>