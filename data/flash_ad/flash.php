<div class="bannerhome">
    <div class="flexslider">
    <ul class="slides">
    	<?php
		if(!empty($rel)){
			foreach($rel as $key=>$v){
				//$v['pic_url']
		?>
		<li style="background:url(<?php echo CMS_SELF.'upload/'.$v['pic'];?>) 50% 0 no-repeat;"></li>
		<?php
        }
        	}
        ?>
        
        
    </ul>
    </div>
        <script type="text/javascript" src="/template/js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="/template/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('.flexslider').flexslider({
                    directionNav: true,
                    pauseOnAction: false
                });
            });
        </script>
</div>