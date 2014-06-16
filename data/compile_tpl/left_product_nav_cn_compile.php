
<?php $tree=get_tpl_list_nav();?>
<hr class="line"/>
  <div class="subclass">
        <div class="title">
                <span class="chinesetitle">产品介绍</span>
                <span class="englishtitle">Product introduction</span>
        </div>
        <div class="line2"></div>
        <ul class="classlist">
            <?php 
 $fun_return=$tree;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $nav){?>
            <li class="<?php echo $nav['class'];?>"><a href="<?php echo $nav['url'];?>"><?php echo $nav['cate_name'];?></a></li>
            <?php 
}
}?>
        </ul>
     </div>