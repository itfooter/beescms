<?php


//if(!file_exists("../data/install.lock")||!file_exists("../data/confing.php")){header("location:../install/index.php");exit();}
define('CMS',true);
require_once('../includes/init.php');
require_once('../includes/fun.php');
require_once('../includes/lib.php');//载入模板调用函数，不载入该文件不能使用函数
$id=intval($_GET['id']);
$cate_info=get_cate_info($id,$category);

$channel_info=get_cate_info($cate_info['cate_channel'],$channel);//获得内容模型信息
if(empty($cate_info)){header('location:../index.php');}
$lang=$cate_info['lang'];
if(file_exists(LANG_PATH.'lang_'.$lang.'.php')){include(LANG_PATH.'lang_'.$lang.'.php');}//语言包缓存,数组$language
if(file_exists(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php')){include(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php');}//当前语言下的栏目

$_confing=get_confing($lang);//配置信息
$cat_id=$cate_info['id'];//栏目id
$cateid=$cat_id;
$parent_id=get_cate_last_parent($cat_id);//获取最终顶级栏目

$tpl->template_dir=TP_PATH.$_confing['web_template'].'/';
$tpl->template_lang=$lang;

if($_confing['is_cache']){
	$tpl->template_is_cache=1;//缓存
	$tpl->template_time=$_confing['cache_time']?$_confing['cache_time']:30;//开启缓存但不存在缓存时间使用30秒
}else{
	$tpl->template_is_cache=0;
}

if(!$cate_info['cate_pic1'])
{
	$topcate =get_cate_info($parent_id,$category);
	$cate_pic = $topcate ? $topcate['cate_pic1'] : '';
}
else
{
	$cate_pic = $cate_info['cate_pic1'];
}
$cate_info['cate_pic'] = $cate_pic ? '<div class="banner" style="background-image:url(/upload/'.$cate_pic.');"></div>' : '<div class="banner"  style="height:0;"></div>';

//获取第一个关键词作为相关内容调用
$key_arr = empty($cate_info['cate_key_seo'])?'':explode(',',$cate_info['cate_key_seo']);
$relave_key = $key_arr[0];
//开始列表
	$child=get_child_id($cat_id);
	$list_cate=empty($child)?$cat_id:$cat_id.$child;//所有栏目包含子栏目
	if( empty($cate_info['cate_content']) && $cate_info['cate_parent'] ==0 )
	{
		$tmp = explode(',',$list_cate);
		$tmpcateid = end($tmp);
		if($tmpcateid && count($tmp) > 1)
		{
			$tmpcate = get_cate_info($tmpcateid,$category);
			$channel_info=get_cate_info($tmpcate['cate_channel'],$GLOBALS['channel']);//获得内容模型信息
			$list_php=$channel_info['list_php'];

			$path=CMS_URL;
			if($tmpcate['cate_tpl']==2){
				$url=$tmpcate['cate_url'];
			}else{
				$url=($tmpcate['cate_html']&&$_confing['web_html'][0])?$path.$tmpcate['cate_fold_name'].'.html':$path.$list_php.'?id='.$tmpcate['id'];
				if($tmpcate['cate_tpl']==3){
					$url=($tmpcate['cate_html']&&$_confing['web_html'][0])?$path.$tmpcate['cate_fold_name'].'.html':$path.$list_php.'?id='.$tmpcate['id'];
				}
			}
			header("Location: ".$url);
		}
	}
	$r_count=$GLOBALS['mysql']->fetch_rows("select id from ".DB_PRE."maintb where category in (".$list_cate.")");//总的数量
	$page_size=empty($cate_info['list_num'])?'20':$cate_info['list_num'];//显示数目
	$page_count=ceil($r_count/$page_size);//总页数
	$tpl_rel=explode('.',$cate_info['cate_tpl_list']);
	
	$tpl->display($tpl_rel[0]);//载入缓存文件

?>
