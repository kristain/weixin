<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> <?php echo ($f_siteTitle); ?> <?php echo ($f_siteName); ?></title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>" />
<meta name="description" content="<?php echo ($f_metaDes); ?>" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<script>var SITEURL='';</script>
<link rel="stylesheet" type="text/css" href="<?php echo Common;?>/default_user_com.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); ?>/tpl/User/default/common/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
</head>
<body id="nv_member" class="pg_CURMODULE">
	
<div id="wp" class="wp">
	<?php if($usertplid == 0): ?><link href="<?php echo ($staticPath); echo ltrim(RES,'.');?>/css/style.css?id=103" rel="stylesheet" type="text/css" />
	<?php else: ?>
		<link href="<?php echo ($staticPath); echo ltrim(RES,'.');?>/css/style-<?php echo ($usertplid); ?>.css?id=103" rel="stylesheet" type="text/css" /><?php endif; ?>
<link rel="stylesheet" type="text/css" href="<?php echo ($staticPath); echo ltrim(RES,'.');?>/css/style_2_common.css?BPm" />
<style>
a.a_upload,a.a_choose{border:1px solid #3d810c;box-shadow:0 1px #CCCCCC;-moz-box-shadow:0 1px #CCCCCC;-webkit-box-shadow:0 1px #CCCCCC;cursor:pointer;display:inline-block;text-align:center;vertical-align:bottom;overflow:visible;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;vertical-align:middle;background-color:#f1f1f1;background-image: -webkit-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -moz-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -ms-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); color:#000;border:1px solid #AAA;padding:2px 8px 2px 8px;text-shadow: 0 1px #FFFFFF;font-size: 14px;line-height: 1.5;
}

.pages{padding:3px;margin:3px;text-align:center;}
.pages a{border:#eee 1px solid;padding:2px 5px;margin:2px;color:#036cb4;text-decoration:none;}
.pages a:hover{border:#999 1px solid;color:#666;}
.pages a:active{border:#999 1px solid;color:#666;}
.pages .current{border:#036cb4 1px solid;padding:2px 5px;font-weight:bold;margin:2px;color:#fff;background-color:#036cb4;}
.pages .disabled{border:#eee 1px solid;padding:2px 5px;margin:2px;color:#ddd;}
</style>
 <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
 <?php if(session('isQcloud') == true): ?><link type="text/css" rel="stylesheet" href="http://qzonestyle.gtimg.cn/qcloud/app/open/v1/css/wxcloud.min.css" />


<style>
.px {
	background:#fff;

	border-color:#c9c9c9;

}


input[type=radio] {

	border-radius:55px;

	border: none;

}
.btnGreen {
	border:1px solid #FFFFFF;
	box-shadow:0 1px 1px #0A8DE4;
	-moz-box-shadow:0 1px 1px #0A8DE4;
	-webkit-box-shadow:0 1px 1px #0A8DE4;
	padding:5px 20px;
	cursor:pointer;
	display:inline-block;
	text-align:center;
	vertical-align:bottom;
	overflow:visible;
	border-radius:3px;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
*zoom:1;
	background-color:#5ba607;
	background-image:linear-gradient(bottom, #107BAD  3%, #18C2D1 97%, #18C2D1 100%);
	background-image:-moz-linear-gradient(bottom, #107BAD  3%, #0A8DE40 97%, #18C2D1 100%);
	background-image:-webkit-linear-gradient(bottom, #107BAD  3%,#0A8DE4 97%, #18C2D1 100%);
	color:#fff; font-size:14px; line-height: 1.5;
}
.btnGreen:hover {
	background-color:#5ba607;
	background-image:linear-gradient(bottom, #2F8BC9 3%, #2F8BC9 97%, #6AA2D6  100%);
	background-image:-moz-linear-gradient(bottom, #2F8BC9 3%, #2F8BC9 97%, #6AA2D6  100%);
	background-image:-webkit-linear-gradient(bottom, #2F8BC9 3%, #2F8BC9 97%, #6AA2D6  100%);
	color:#fff
}
.btnGreen:active {
	background-color:#5ba607;
	background-image:linear-gradient(bottom, #69b310 3%, #3d810c 97%, #fff 100%);
	background-image:-moz-linear-gradient(bottom, #69b310 3%, #3d810c 97%, #fff 100%);
	background-image:-webkit-linear-gradient(bottom, #69b310 3%, #3d810c 97%, #fff 100%);
	color:#fff
}

.btnGreen{border:1px solid #3d810c;box-shadow:0 1px 1px #aaa;-moz-box-shadow:0 1px 1px #aaa;-webkit-box-shadow:0 1px 1px #aaa;padding:5px 20px;cursor:pointer;display:inline-block;text-align:center;vertical-align:bottom;overflow:visible;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;*zoom:1;background-color:#5ba607;background-image:linear-gradient(bottom,#4d910c 3%,#69b310 97%,#fff 100%);background-image:-moz-linear-gradient(bottom,#4d910c 3%,#69b310 97%,#fff 100%);background-image:-webkit-linear-gradient(bottom,#4d910c 3%,#69b310 97%,#fff 100%);color:#fff;font-size:14px;line-height:1.5;}.btnGreen:hover{background-color:#5ba607;background-image:linear-gradient(bottom,#3d810c 3%,#69b310 97%,#fff 100%);background-image:-moz-linear-gradient(bottom,#3d810c 3%,#69b310 97%,#fff 100%);background-image:-webkit-linear-gradient(bottom,#3d810c 3%,#69b310 97%,#fff 100%);color:#fff}.btnGreen:active{background-color:#5ba607;background-image:linear-gradient(bottom,#69b310 3%,#3d810c 97%,#fff 100%);background-image:-moz-linear-gradient(bottom,#69b310 3%,#3d810c 97%,#fff 100%);background-image:-webkit-linear-gradient(bottom,#69b310 3%,#3d810c 97%,#fff 100%);color:#fff}

</style><?php endif; ?>
<?php
if (!isset($_SESSION['isQcloud'])){ ?>
<div class="topbg">
<div class="top">
<div class="toplink">
<style>
<?php if($usertplid == 1): ?>.topbg{background:url(<?php echo ($staticPath); ?>/tpl/static/newskin/images/top.gif) repeat-x; height:101px; /*box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;*/}
.top {
    margin: 0px auto; width: 988px; height: 101px;
}

.top .toplink{ height:30px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {width: 990px; color: #333; height:70px; font-size:16px;}
.top h1{ font-size:25px;float:left; width:230px; margin:0; padding:0; margin-top:6px; }
.top .navr {WIDTH:750px; float:right; overflow:hidden;}
.top .navr ul{ width:850px;}
.navr li {text-align:center; float: left; height:70px; font-size:1em; width:103px; margin-right:5px;}
.navr li a {width:103px; line-height:70px; float: left; height:100%; color: #333; font-size: 1em; text-decoration:none;}
.navr li a:hover { background:#ebf3e4;}
.navr li.menuon {background:#ebf3e4; display:block; width:103px;}
.navr li.menuon a{color:#333;}
.navr li.menuon a:hover{color:#333;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}
<?php else: ?>

.topbg{BACKGROUND-IMAGE: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/top.png);BACKGROUND-REPEAT: repeat-x; height:124px; box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;}
.top {
	MARGIN: 0px auto; WIDTH: 988px; HEIGHT: 124px;
}

.top .toplink{ height:27px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {WIDTH: 990px;COLOR: #333; height:70px;  FONT-SIZE:16px; PADDING-TOP:25px}
.top h1{ font-size:25px; margin-top:20px; float:left; width:230px; margin:0; padding:0;}
.top .navr {WIDTH:750px; float:right; overflow:hidden; margin-top:10px;}
.top .navr ul{ width:850px;}
.navr LI {TEXT-ALIGN:center;FLOAT: left;HEIGHT:32px;FONT-SIZE:1em;width:103px; margin-right:5px;}
.navr LI A {width:103px;TEXT-ALIGN:center; LINE-HEIGHT:30px; FLOAT: left;HEIGHT:32px;COLOR: #333; FONT-SIZE: 1em;TEXT-DECORATION: none
}
.navr LI A:hover {BACKGROUND: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/navhover.gif) center no-repeat;color:#009900;}
.navr LI.menuon {BACKGROUND: url(<?php echo ($staticPath); echo ltrim(RES,'.');?>/images/navon.gif) center no-repeat; display:block;width:103px;HEIGHT:32px;}
.navr LI.menuon a{color:#FFF;}
.navr LI.menuon a:hover{BACKGROUND: url(img/navon.gif) center no-repeat;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}<?php endif; ?>
</style>
<div class="welcome">欢迎使用多用户微信营销服务平台!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">注册</a>
			<?php else: ?>
			你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>（uid:<?php echo (session('uid')); ?>）
			<a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>	
	</div>
</div>
    <div class="logo">
        <div style="float:left"></div>
            <h1><a href="/" title="多用户微信营销服务平台"><img src="<?php echo ($f_logo); ?>" /></a></h1>
            <div class="navr">
        <ul id="topMenu">           
            <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/">首页</a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/common');?>">微信导航</a></li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li>
            
            </ul>
        </div>
        </div>
    </div>
</div>
<div id="aaa"></div>
<?php
} ?>

  <!--中间内容-->

  <div class="contentmanage"<?php if (isset($_SESSION['isQcloud'])){?> style="width:100%"<?php }?>>
  <?php
if (!isset($_SESSION['isQcloud'])){ ?>
    <div class="developer">
       <div class="appTitle normalTitle2">
        <div class="vipuser">


<div class="logo">
<a href="<?php echo U('Function/welcome',array('token'=>$token));?>"><img src="<?php echo ($wecha["headerpic"]); ?>" width="100" height="100" /></a>
</div>

<div id="nickname">
<strong><a href="<?php echo U('Function/welcome',array('token'=>$token));?>"><?php echo ($wecha["wxname"]); ?></a></strong><a href="#" target="_blank" class="vipimg vip-icon<?php echo $userinfo['taxisid']-1; ?>" title=""></a></div>
<div id="weixinid">微信号:<?php echo ($wecha["weixin"]); ?></div>
</div>

        <div class="accountInfo">
<table class="vipInfo" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td><strong>VIP有效期：</strong><?php echo (date("Y-m-d",$thisUser["viptime"])); ?></td>
<td><strong>图文自定义：</strong><?php echo ($thisUser["diynum"]); ?>/<?php echo ($userinfo["diynum"]); ?></td>
<td><strong>活动创建数：</strong><?php echo ($thisUser["activitynum"]); ?>/<?php echo ($userinfo["activitynum"]); ?></td>
<td><strong>请求数：</strong><?php echo ($thisUser["connectnum"]); ?>/<?php echo ($userinfo["connectnum"]); ?></td>
</tr>
<tr>
<td><strong>请求数剩余：</strong><?php echo ($userinfo['connectnum']-$_SESSION['connectnum']); ?></td>
<td><strong>已使用：</strong><?php echo $_SESSION['diynum']; ?></td>
<td><strong>当月赠送请求数：</strong><?php echo ($userinfo["connectnum"]); ?></td>
<td><strong>当月剩余请求数：</strong><?php echo $userinfo['connectnum']-$_SESSION['connectnum']; ?></td>
</tr>

</table>
    </div>
        <div class="clr"></div>
      </div>
      <!--左侧功能菜单-->


<style type="text/css">
#sideBar{
border-right: 0px solid #D3D3D3 !important;
float: left;
padding: 0 0 10px 0;
width: 170px;
background: #fff;
}
.tableContent {
background: none repeat scroll 0 0 #f5f6f7;
padding: 0;
}
.tableContent .content {
border-left: 1px solid #D7DDE6 !important;
}
ul#menu, ul#menu ul {
  list-style-type:none;
  margin: 0;
  padding: 0;
  background: #fff;
}

ul#menu a {
  display: block;
  text-decoration: none;
}

ul#menu li {
  margin: 1px;
}
ul#menu li ul li{
  margin: 1px 0;
}
ul#menu li a {
  background: #EBEEF1;
  color: #464D6A;
  padding: 0.5em;
}
ul#menu li .nav-header{
font-size:14px;
border-bottom: 1px solid #D7DDE6;
}
ul#menu li .nav-header:hover {
  background: #DDE4EB;
}

ul#menu li ul li a {
  background: #FCFCFC;
  color: #8288A4;
  padding-left: 20px;
}
ul#menu li ul li:last-child {
    border-bottom: 1px solid #D7DDE6;
}
ul#menu li ul li a:hover {
  background: #fff;
  border-left: 5px #4A98E0 solid;

}
ul#menu li.selected a{
  background: #fff;
  border-left: 5px #4A98E0 solid;
  padding-left: 15px;
  color: #4A98E0;
}
.code { border: 1px solid #ccc; list-style-type: decimal-leading-zero; padding: 5px; margin: 0; }
.code code { display: block; padding: 3px; margin-bottom: 0; }
.code li { background: #ddd; border: 1px solid #ccc; margin: 0 0 2px 2.2em; }
.indent1 { padding-left: 1em; }
.indent2 { padding-left: 2em; }
.tableContent .content{min-height: 1328px;}

a.nav-header{background:url(/tpl/static/images/arrow_click.png) center right no-repeat;cursor:pointer}
a.nav-header-current{background:url(/tpl/static/images/arrow_unclick.png) center right no-repeat;}
</style>
<?php
} ?>
      <div class="tableContent">
        <?php
if (!isset($_SESSION['isQcloud'])){ ?>
        <!--左侧功能菜单-->
 <div  class="sideBar" id="sideBar">
<div class="catalogList">
<ul id="menu">
<?php
$menus=array( array( 'name'=>'基础设置', 'iconName'=>'base', 'display'=>0, 'subs'=>array( array('name'=>'功能管理','link'=>U('Function/index',array('token'=>$token,'id'=>session('wxid'))),'new'=>0,'selectedCondition'=>array('m'=>'Function','a'=>'index')), array('name'=>'关注时回复与帮助','link'=>U('Areply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Areply')), array('name'=>'微信－文本回复','link'=>U('Text/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Text')), array('name'=>'微信－图文回复','link'=>U('Img/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Img','a'=>'index')), array('name'=>'微信－多图文回复','link'=>U('Img/multi',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Img','a'=>'multi')), array('name'=>'微信－语音回复','link'=>U('Voiceresponse/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Voiceresponse')), array('name'=>'微信－群发消息','link'=>U('Message/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Message')), array('name'=>'微信－模板消息','link'=>U('TemplateMsg/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'TemplateMsg')), array('name'=>'自定义LBS回复','link'=>U('Company/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Company')), array('name'=>'自定义菜单','link'=>U('Diymen/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Diymen')), array('name'=>'微信用户信息授权','link'=>U('Auth/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Auth')), array('name'=>'回答不上来的配置','link'=>U('Other/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Other')), array('name'=>'在线客服配置','link'=>U('Kefu/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Kefu')), )), array( 'name'=>'微网站', 'iconName'=>'site', 'display'=>0, 'subs'=>array( array('name'=>'首页回复配置','link'=>U('Home/set',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Home','g'=>'User','a'=>'set')), array('name'=>'分类管理','link'=>U('Classify/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Classify')), array('name'=>'模板管理','link'=>U('Tmpls/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Tmpls')), array('name'=>'文章管理','link'=>U('Essay/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Essay')), array('name'=>'首页幻灯片','link'=>U('Flash/index',array('token'=>$token,'tip'=>1)),'new'=>0,'selectedCondition'=>array('m'=>'Flash','tip'=>1)), array('name'=>'轮播背景图','link'=>U('Flash/index',array('token'=>$token,'tip'=>2)),'new'=>1,'selectedCondition'=>array('m'=>'Flash','tip'=>2)), array('name'=>'底部导航菜单','link'=>U('Catemenu/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Catemenu')), array('name'=>'版权设置','link'=>U('Home/plugmenu',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Home','g'=>'User','a'=>'plugmenu')), array('name'=>'微名片','link'=>U('Vcard/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Vcard')), array('name'=>'微街景','link'=>U('Jiejing/index',array('token'=>$token)),'test'=>1,'selectedCondition'=>array('m'=>'Jiejing')), )), array( 'name'=>'最新功能', 'iconName'=>'interact', 'display'=>0, 'subs'=>array( array('name'=>'分享助力','link'=>U('Helping/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Helping')), array('name'=>'人气冲榜','link'=>U('Popularity/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Popularity')), array('name'=>'活动报名','link'=>U('Baoming/index',array('token'=>$token,'id'=>session('wxid'))),'new'=>1,'selectedCondition'=>array('m'=>'Baoming')), array('name'=>'微商盟','link'=>U('Fenlei/index',array('token'=>$token,'id'=>session('wxid'))),'new'=>1,'selectedCondition'=>array('m'=>'Fenlei')), array('name'=>'微招聘','link'=>U('Zhaopin/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Zhaopin')), array('name'=>'微房产','link'=>U('Fangchan/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Fangchan')), array('name'=>'音乐贺卡','link'=>U('Musiccar/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Musiccar')), array('name'=>'转发有礼','link'=>U('Hforward/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hforward')), array('name'=>'分享达人','link'=>U('Sharetalent/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Sharetalent')), )), array( 'iconName'=>'interact', 'name'=>'轻APP场景', 'display'=>0, 'subs'=>array( array('name'=>'微众场景','link'=>U('Scenes/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Scenes')), array('name'=>'应用场景','link'=>U('Live/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Live')), )), array( 'iconName'=>'zhida', 'name'=>'百度直达号', 'display'=>0, 'subs'=>array( array('name'=>'对接配置','link'=>U('Zhida/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Zhida','a'=>'index')), )), array( 'name'=>'微互动', 'iconName'=>'interact', 'display'=>0, 'subs'=>array( array('name'=>'留言板','link'=>U('Reply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Reply')), array('name'=>'微论坛','link'=>U('Forum/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Forum')), array('name'=>'3G图集(相册)','link'=>U('Photo/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Photo')), array('name'=>'3G微投票','link'=>U('Vote/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Vote')), array('name'=>'微预约','link'=>U('Custom/record',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Custom')), array('name'=>'微调研','link'=>U('Research/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Research')), array('name'=>'祝福贺卡','link'=>U('Greeting_card/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Greeting_card')), array('name'=>'分享管理','link'=>U('Share/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Share')), array('name'=>'邀请函','link'=>U('Invite/add',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Invite')), array('name'=>'微邀请','link'=>U('Invites/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Invites')), array('name'=>'公众小秘书','link'=>U('Paper/index',array('token'=>$token)),'test'=>1,'selectedCondition'=>array('m'=>'Paper')), )), array( 'name'=>'行业应用', 'iconName'=>'business', 'display'=>0, 'subs'=>array( array('name'=>'通用订单','link'=>U('Host/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Host')), array('name'=>'万能表单','link'=>U('Selfform/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Selfform')), array('name'=>'微餐饮（无线打印）','link'=>U('Repast/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Repast')), array('name'=>'360°全景','link'=>U('Panorama/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Panorama')), array('name'=>'微婚庆（喜帖）','link'=>U('Wedding/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wedding')), array('name'=>'微汽车','link'=>U('Car/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Car')), array('name'=>'楼盘房产','link'=>U('Estate/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Estate')), array('name'=>'微教育','link'=>U('School/index',array('token'=>$token,'type'=>'semester')),'new'=>1,'selectedCondition'=>array('m'=>'School')), array('name'=>'微医疗','link'=>U('Medical/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Medical'),'test'=>0), array('name'=>'酒店宾馆','link'=>U('Hotels/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hotels')), array('name'=>'微美容','link'=>U('Business/index',array('token'=>$token,'type'=>'beauty')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'beauty'),'test'=>0), array('name'=>'微健身','link'=>U('Business/index',array('token'=>$token,'type'=>'fitness')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'fitness'),'test'=>0,'show'=>1), array('name'=>'微政务','link'=>U('Business/index',array('token'=>$token,'type'=>'gover')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'gover'),'test'=>0,'show'=>1), array('name'=>'微食品','link'=>U('Business/index',array('token'=>$token,'type'=>'food')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'food'),'test'=>0), array('name'=>'微旅游','link'=>U('Business/index',array('token'=>$token,'type'=>'travel')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'travel'),'test'=>0), array('name'=>'微花店','link'=>U('Business/index',array('token'=>$token,'type'=>'flower')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'flower'),'test'=>0), array('name'=>'微物业','link'=>U('Business/index',array('token'=>$token,'type'=>'property')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'property'),'test'=>0), array('name'=>'微KTV','link'=>U('Business/index',array('token'=>$token,'type'=>'ktv')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'ktv'),'test'=>0), array('name'=>'微酒吧','link'=>U('Business/index',array('token'=>$token,'type'=>'bar')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'bar'),'test'=>0), array('name'=>'微装修','link'=>U('Business/index',array('token'=>$token,'type'=>'fitment')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'fitment'),'test'=>0), array('name'=>'微婚庆','link'=>U('Business/index',array('token'=>$token,'type'=>'wedding')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'wedding'),'test'=>0), array('name'=>'微宠物','link'=>U('Business/index',array('token'=>$token,'type'=>'affections')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'affections'),'test'=>0), array('name'=>'微家政','link'=>U('Business/index',array('token'=>$token,'type'=>'housekeeper')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'housekeeper'),'test'=>0), array('name'=>'微租赁','link'=>U('Business/index',array('token'=>$token,'type'=>'lease')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'lease'),'test'=>0), )), array( 'name'=>'微现场', 'iconName'=>'scene', 'display'=>0, 'subs'=>array( array('name'=>'微信签到','link'=>U('Signin/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Signin')), array('name'=>'摇一摇','link'=>U('Shake/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Shake')), array('name'=>'微信墙','link'=>U('Wall/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Wall')), array('name'=>'照片墙','link'=>U('Zhaopianwall/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Zhaopianwall')), array('name'=>'现场活动','link'=>U('Scene/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Scene')), )), array( 'name'=>'电商系统', 'iconName'=>'store', 'display'=>0, 'subs'=>array( array('name'=>'在线支付设置','link'=>U('Alipay_config/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Alipay_config')), array('name'=>'平台支付对帐','link'=>U('Platform/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Platform')), array('name'=>'微信团购系统','link'=>U('Groupon/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Groupon')), array('name'=>'微信商城系统','link'=>U('Store/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Store')), array('name'=>'商城分佣管理','link'=>U('Store/twitter',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Store','a'=>'twitter')), array('name'=>'微商圈','link'=>U('Market/index',array('token'=>$token)),'test'=>0,'selectedCondition'=>array('m'=>'Market')), )), array( 'name'=>'微游戏', 'iconName'=>'game', 'display'=>0, 'subs'=>array( array('name'=>'信息设置','link'=>U('Game/config',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Game','a'=>'config')), array('name'=>'我的游戏','link'=>U('Game/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Game','a'=>'index')), array('name'=>'游戏库','link'=>U('Game/gameLibrary',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Game','a'=>'gameLibrary')), array('name'=>'2048虐心版','link'=>U('Gamet/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Gamet')), array('name'=>'Flappy 2048','link'=>U('Gamett/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Gamett')), array('name'=>'吃粽子大赛','link'=>U('Czz/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Czz')), )), array( 'name'=>'微粉丝管理CRM', 'iconName'=>'crm', 'display'=>0, 'subs'=>array( array('name'=>'粉丝管理','link'=>U('Wechat_group/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'index')), array('name'=>'分组管理','link'=>U('Wechat_group/groups',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'groups')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior')), )), array( 'name'=>'微硬件', 'iconName'=>'hardware', 'display'=>0, 'subs'=>array( array('name'=>'印美丽打印机','link'=>U('Yml/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Yml','a'=>'set')), array('name'=>'RippleOS设置','link'=>U('RippleOS/set',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'RippleOS','a'=>'set')), array('name'=>'微信wifi介绍','link'=>U('Hardware/wifi',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hardware','a'=>'wifi')), array('name'=>'无线打印机','link'=>U('Hardware/orderprint',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hardware','a'=>'orderprint')), array('name'=>'照片打印机','link'=>U('Hardware/photoprint',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hardware','a'=>'photoprint')), )), array( 'name'=>'微渠道', 'iconName'=>'ditch', 'display'=>0, 'subs'=>array( array('name'=>'渠道二维码','link'=>U('Recognition/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Recognition')), array('name'=>'DIY宣传页','link'=>U('Adma/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Adma')), )), array( 'name'=>'微客服', 'iconName'=>'service', 'display'=>0, 'subs'=>array( array('name'=>'人工客服','link'=>U('ServiceUser/wechatService',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'ServiceUser')), )), array( 'name'=>'微活动', 'iconName'=>'active', 'display'=>0, 'subs'=>array( array('name'=>'幸运大转盘','link'=>U('Lottery/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Lottery')), array('name'=>'优惠券','link'=>U('Coupon/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Coupon')), array('name'=>'刮刮卡','link'=>U('Guajiang/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Guajiang')), array('name'=>'幸运水果机','link'=>U('LuckyFruit/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'LuckyFruit')), array('name'=>'砸金蛋','link'=>U('GoldenEgg/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'GoldenEgg')), array('name'=>'走鹊桥','link'=>U('AppleGame/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'AppleGame')), array('name'=>'摁死小情侣','link'=>U('Lovers/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Lovers')), array('name'=>'中秋吃月饼','link'=>U('Autumn/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Autumn')), array('name'=>'拆礼盒','link'=>U('Autumns/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Autumns')), array('name'=>'一战到底','link'=>U('Problem/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Problem')), array('name'=>'微信红包','link'=>U('Red_packet/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Red_packet')), array('name'=>'惩罚台','link'=>U('Punish/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Punish')), )), array( 'name'=>'会员卡', 'iconName'=>'card', 'display'=>0, 'subs'=>array( array('name'=>'会员卡','link'=>U('Member_card/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card'),'exceptCondition'=>array('a'=>'replyInfoSet,focus,custom,center')), array('name'=>'会员中心','link'=>U('Member_card/center',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'center')), array('name'=>'回复设置','link'=>U('Member_card/replyInfoSet',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'replyInfoSet')), array('name'=>'幻灯片广告','link'=>U('Member_card/focus',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'focus')), array('name'=>'自定义输入项','link'=>U('Member_card/custom',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'custom')), )), array( 'name'=>'数据魔方', 'iconName'=>'datacube', 'display'=>0, 'subs'=>array( array('name'=>'请求数详情','link'=>U('Requerydata/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Requerydata')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior','a'=>'statistics')), )), array( 'name'=>'二次开发', 'iconName'=>'secondary', 'display'=>0, 'subs'=>array( array('name'=>'融合第三方','link'=>U('Api/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Api')), )), ); if ($_GET['token']=='yicms'){ array_push($menus,array( 'name'=>'电脑网站', 'iconName'=>'crm', 'display'=>0, 'subs'=>array( array('name'=>'基本设置','link'=>U('Web/set',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'set')), array('name'=>'选择模板','link'=>U('Web/choose_tpl',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'choose_tpl')), array('name'=>'导航菜单','link'=>U('Web/nav',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'nav')), array('name'=>'图集','link'=>U('Web/flash',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'flash')), array('name'=>'文章','link'=>U('Web/news',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'news')), array('name'=>'产品','link'=>U('Web/product',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'product')), array('name'=>'下载','link'=>U('Web/down',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'down')), array('name'=>'自定义页面','link'=>U('Web/page',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Web','a'=>'page')), ))); } ?>
<?php
 foreach ($menus as $mk => $mv){ foreach ($mv['subs'] as $mvk => $mvv){ if(in_array($mvv['selectedCondition']['m'],$not_exist)){ if($mvv['selectedCondition']['m'] == 'Home'){ unset($menus[$mk]); }else{ unset($menus[$mk]['subs'][$mvk]); } }elseif($mvv['selectedCondition']['m'] == 'Business'){ if($mvv['selectedCondition']['type'] == 'wedding') $mvv['selectedCondition']['type'] = 'buswedd'; if(in_array(ucfirst($mvv['selectedCondition']['type']),$not_exist)){ unset($menus[$mk]['subs'][$mvk]); } } if($menus[$mk]['subs'] == NULL){ unset($menus[$mk]); } } } $i=0; $parms=$_SERVER['QUERY_STRING']; $parms1=explode('&',$parms); $parmsArr=array(); if ($parms1){ foreach ($parms1 as $p){ $parms2=explode('=',$p); $parmsArr[$parms2[0]]=$parms2[1]; } } $subMenus=array(); $t=0; $currentMenuID=0; $currentParentMenuID=0; foreach ($menus as $m){ $loopContinue=1; if ($m['subs']){ $st=0; foreach ($m['subs'] as $s){ $includeArr=1; if ($s['selectedCondition']){ foreach ($s['selectedCondition'] as $condition){ if (!in_array($condition,$parmsArr)){ $includeArr=0; break; } } } if ($includeArr){ if ($s['exceptCondition']){ foreach ($s['exceptCondition'] as $epkey=>$eptCondition){ if ($epkey=='a'){ $parm_a_values=explode(',',$eptCondition); if ($parm_a_values){ if (in_array($parmsArr['a'],$parm_a_values)){ $includeArr=0; break; } } }else { if (in_array($eptCondition,$parmsArr)){ $includeArr=0; break; } } } } } if ($includeArr){ $currentMenuID=$st; $currentParentMenuID=$t; $loopContinue=0; break; } $st++; } if ($loopContinue==0){ break; } } $t++; } foreach ($menus as $m){ $displayStr=''; if ($currentParentMenuID!=0||0!=$currentMenuID){ $m['display']=0; } if (!$m['display']){ $displayStr=' style="display:none"'; } if ($currentParentMenuID==$i){ $displayStr=''; } $aClassStr=''; if ($displayStr){ $aClassStr=' nav-header-current'; } if($i == 0){ echo '<a class="nav-header'.$aClassStr.'" style="border-top:none !important;"><b class="'.$m['iconName'].'"></b>'.$m['name'].'</a><ul class="ckit"'.$displayStr.'>'; }else{ echo '<a class="nav-header'.$aClassStr.'"><b class="'.$m['iconName'].'"></b>'.$m['name'].'</a><ul class="ckit"'.$displayStr.'>'; } if ($m['subs']){ $j=0; foreach ($m['subs'] as $s){ $selectedClassStr='subCatalogList'; if ($currentParentMenuID==$i&&$j==$currentMenuID){ $selectedClassStr='selected'; } $newStr=''; if ($s['test']){ $newStr.='<span class="test"></span>'; }else { if ($s['new']){ $newStr.='<span class="new"></span>'; } } if ($s['name']!='微信墙'&&$s['name']!='摇一摇'&&$s['name']!='现场活动'){ echo '<li class="'.$selectedClassStr.'"> <a href="'.$s['link'].'">'.$s['name'].'</a>'.$newStr.'</li>'; }else { switch ($s['name']){ case '微信墙': case '摇一摇': case '现场活动': if (file_exists($_SERVER['DOCUMENT_ROOT'].'/PigCms/Lib/Action/User/WallAction.class.php')&&file_exists($_SERVER['DOCUMENT_ROOT'].'/PigCms/Lib/Action/User/ShakeAction.class.php')){ echo '<li class="'.$selectedClassStr.'"> <a href="'.$s['link'].'">'.$s['name'].'</a>'.$newStr.'</li>'; } break; } } if ($s['name']=='模板管理'&&is_dir($_SERVER['DOCUMENT_ROOT'].'/cms')&&!strpos($_SERVER['HTTP_HOST'],'pigcms')){ echo '<li class="subCatalogList"> <a href="/cms/manage/index.php">高级模板</a><span class="new"></span></li>'; } if ($s['name']=='底部导航菜单'){ echo '<li class="subCatalogList"> <a href="index.php?g=User&m=Demo&a=index&token='.$token.'&url=index.php%3Fg%3DWap%26m%3DIndex%26a%3Dindex%26token%3D'.$token.'%26wecha_id%3D%7Bwechat_id%7D" target="_blank">预览网站<span class="new"></span></a></li>'; } $j++; } } echo '</ul>'; $i++; } ?>

<div style="clear:both"></div>
</ul>
</div>
</div>
<?php
} ?>
<script type="text/javascript">

	$(document).ready(function(){
		$(".nav-header").mouseover(function(){
			$(this).addClass('navHover');
		}).mouseout(function(){
			$(this).removeClass('navHover');
		}).click(function(){
			$(this).toggleClass('nav-header-current');
			$(this).next('.ckit').slideToggle();
		})
	});

</script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default">
</script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<script src="/tpl/User/default/common/js/panel.js"></script>
<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
<script src="/tpl/User/default/common/js/map/thickbox-compressed.js"></script>
<script src="/tpl/User/default/common/js/map/jquery-1.4.3.min.js">
<link href="/tpl/User/default/common/js/map/thickbox.css" media="screen" rel="stylesheet" type="text/css" />
</script>
<script>
function selectall(name) {
	var checkItems=$('.cbitem');
	if ($("#check_box").attr('checked')==false) {
		$.each(checkItems, function(i,val){
			val.checked=false;
		});
	} else {
		$.each(checkItems, function(i,val){
			val.checked=true;
		});
	}
}
function setlatlng(panoid){
	art.dialog.data('panoid', panoid);
	// 此时 iframeA.html 页面可以使用 art.dialog.data('test') 获取到数据，如：
	// document.getElementById('aInput').value = art.dialog.data('test');
	art.dialog.open('<?php echo U('Map/pano',array('token'=>$token,'id'=>$id));?>',{lock:false,title:'复制pano',width:600,height:400,yesText:'关闭',background: '#000',opacity: 0.87});
}
</script>

<div class="content" <?php if(session('isQcloud') == true): ?>style="float:center;"<?php endif; ?>>
<!--活动开始-->
<div class="cLineB">
  <h4>街景导航设置 </h4>
 </div>
    <div class="msgWrap bgfc">
	  <form class="form" method="post" action=""   >
      <input type="hidden" name="id" value="<?php echo ($Jiejing["id"]); ?>"/>
		<table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%">
			<tbody>
				<tr>
				  <th valign="top"><span class="red">*</span>关键词：</th>
				  <td>
					<input type="text" name="keyword" value="<?php echo ($Jiejing["keyword"]); ?>"class="px" style="width:550px;"></td>
				</tr>
				<tr>
				  <th valign="top"><span class="red">*</span>回复标题：</th>

					<td><input type="text" name="title" value="<?php echo ($Jiejing["title"]); ?>" class="px" style="width:550px;"></td>

				</tr>

				<tr>
				  <th valign="top"><span class="red">*</span>封面图片：</th>
                        <td><input type="text" name="picurl" id="picurl" value="<?php echo ($Jiejing["picurl"]); ?>" class="px" style="width:550px;"> <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('picurl',700,420,'<?php echo ($token); ?>')" class="a_upload">上传</a>   <a href="###" onclick="viewImg('picurl')">预览</a>  &nbsp; 大小为720x400</td>						
                </tr>
                <tr>
				  <th valign="top"><span class="red">*</span>内容介绍：</th>
                    <td><textarea  class="px" id="text" name="text"  style="width:550px; height:100px" ><?php echo ($Jiejing["text"]); ?></textarea>&nbsp;&nbsp;最多填写120个字</td>
				</tr>
                <tr>				
				  <th valign="top"><span class="red">*</span>Pano：</th>
					<td><input type="text" name="pano" id="info2" value="<?php echo ($Jiejing["pano"]); ?>" class="px" style="width:200px;"><a href="###" onclick="setlatlng($('#longitude').val(),$('#latitude').val())" class="">&nbsp;&nbsp;在地图中查看</a>&nbsp;&nbsp;<span style="color:red">保存后可以在下面实时预览街景</span>
					</td>
				</tr>
				<tr>
					<th></th>
					<td><input type="hidden"  name="token" ivalue="<?php echo ($token); ?>" class="px" style="width:550px;">
					<button type="submit" name="button" class="btnGreen">保存</button> &nbsp;&nbsp;<a href="javascript:history.go(-1);" class="btnGray vm">取消</a>				
					</td>
				</tr>
			</tbody>
		</table>
	</form>
    <div style="text-align: left;
width: 145px;
font-size: 14px;
font-weight: bold;
line-height: 1.5;
padding: 8px 0;">实景预览:</div>
   <div class="soso-box">
	<!-- soso街景容器 -->
	<div id="pano_container" class="soso-pano-box"></div>
	<div class="soso-map-box">
		<!-- soso地图容器 -->
		<div class="soso-map" id="map_container"></div>
		<div class="soso-map-control">
			<h4>查询路线：</h4>
			<ul class="soso-sea-input">
				<li>起点 <input type="text" id="J_soso_start" value="西单地铁站" /></li>
				<li>终点 <input type="text" id="J_soso_end" value="颐和园路口东" readonly /></li>
			</ul>
			<div class="soso-search-btn">
				<input type="button" id="J_sea_bus" value="公交" />
				<input type="button" id="J_sea_drive" value="驾车" />
			</div>
			<h4>搜附近：</h4>
			<div class="soso-near-hotdot" id="J_soso_hotdot">
				<a href="javascript:" title="交通" data-name="交通">交通</a>
				<a href="javascript:" title="学校" data-name="学校">学校</a>
				<a href="javascript:" title="购物" data-name="购物">购物</a>
				<a href="javascript:" title="医院" data-name="医院">医院</a>
				<a href="javascript:" title="生活" data-name="生活">生活</a>
				<a href="javascript:" title="娱乐" data-name="娱乐">娱乐</a>
				<a href="javascript:" title="餐饮" data-name="餐饮">餐饮</a>
				<a href="javascript:" title="酒店" data-name="酒店">酒店</a>
			</div>
			<div class="seach-res-panel" id="J_soso_panel">
				<a href="javascript:" class="" id="J_soso_return" title="返回">返回</a> 
				<!-- 检索结果面板 -->
				<div id="J_soso_panel_cont"></div>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
	/* 重置浏览器，可以删除 */
	body{font:12px/1.5 Microsoft Yahei,tahoma,arial,\5b8b\4f53;color:#000}
	button,input{font:12px/1.5 Microsoft Yahei,tahoma,arial,\5b8b\4f53}
	html,body,h1,h2,h3,h4,h5,h6,hr,p,ul,ol,li,form,button,input,textarea,th,td{margin:0;padding:0}
	img{border:0}
	ol,ul{list-style:none}
	.soso-box{width:100%;overflow:hidden;}
	.soso-pano-box{height:550px;}
	.soso-map-box{position:relative;}
	.soso-map{height:300px;margin:0 182px 0 0}
	.soso-map-control{position:absolute;top:0;right:0;width:170px;height:288px;padding:5px;background:#fff;border:solid 1px #ccc;overflow:hidden;font-size:14px}
	.soso-map-control h4{font-size:16px}
	.soso-sea-input li{margin:3px 0 6px 0}
	.soso-sea-input li input{width:124px;padding:2px 3px}
	.soso-search-btn{margin:0 0 10px 30px}
	.soso-search-btn input{margin:0 5px 0 0;padding:0 4px;border:1px solid #aaa;background:#eee;cursor:pointer;}
	.soso-near-hotdot{margin:0 -20px 0 0}
	.soso-near-hotdot a{display:inline-block;margin:0 13px 5px 13px}
	.seach-res-panel{display:none;position:absolute;z-index:2;left:0;top:0;width:180px;height:288px;background:#fff;overflow:auto;}
	/* 结果面板 */
	.drive-title{margin:3px 0;padding:2px 4px;font-size:13px;line-height:20px;text-align: left;color: #8A8989;background-color: #EDF4FB;}
	.drive-list li{padding: 10px 5px; color:#969696;font-size: 13px;border-bottom: dashed 1px #DCDEE0;cursor:pointer;}
	.drive-list li span{color: #538DBE;padding:0 4px;}
	.drive-list li p{margin:5px 0 0 0; color:#969696;font-size: 13px;}
	.drive-list li p.bus-title{margin:0;line-height: 20px;text-align: left;color: #0059B2;}
	.soso-sea-index{float: left;display:inline;width:20px;height: 20px;line-height:20px;overflow: hidden;text-align: center;}
	.soso-sea-title{overflow: hidden;padding:0 5px;zoom:1;}
	.soso-sea-t{font-size:14px;color:#0059B3;}
	.drive-list li .soso-sea-title p{font-size:12px;margin:2px 0 0 0;}
	.soso-page{padding: 10px 0;text-align:center;}
	.soso-page span{padding:2px;font-size: 12px;cursor:pointer;}
	.soso-page span.cur{margin:0 5px;padding:3px;font-weight: bold;border-bottom: 2px solid #999999;}
</style>

<!--以下引入SOSO地图API，调用参数中的key，请在实际使用时替换成自己的key-->
<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&libraries=place,convertor&key=d84d6d83e0e51e481e50454ccbe8986b"></script>
<!--以下引入SOSO地图街景与地图连动插件-->
<script src="http://open.map.qq.com/plugin/v2/PanoramaOverview/PanoramaOverview-min.js"></script>
<!--以下引入 搜索结果面板 插件 -->
<script type="text/javascript">
"use strict";
var _sosomaps = function(){
	var map = "";
	var pano = "";
	var panoLabels = [];
	var latlng = "";//初始默认坐标
	var panoServer = new soso.maps.PanoramaService();//街景检索对象
	var pano_id = "";//场景ID
	var pano_heading = "";//偏航角
	var pano_label = [];
	var latlngs = [];
	var pois = ""; /* 搜索附近POI结果 */
	var location = ""; 
	var ispano = 1; /* 判断是否存在街景 */
	var searKeyword = "";
	var _option = {};
	//通过ID获取DOM
	function $id(id){return document.getElementById(id);}
	//实例化自动完成
    var ap = new soso.maps.place.Autocomplete($id('J_soso_start'));
	/*
	 * 初始化 sosomaps.init(39.882326, 116.326088);
	 * @param lat 纬度
	 * @param lng 经度
	 * @param option 设置对象 
	   {
		 type : 坐标类型，默认空为soso地图标准坐标 1:gps经纬度，2:搜狗经纬度，3:百度经纬度，4:mapbar经纬度，5:google经纬度，6:搜狗墨卡托
		 pano : 街景初始化点
		 heading : 街景初始化朝向
		 pitch : 街景初始化俯仰角
		 zoom : 街景初始化缩放
		 auto : 是否开启自动旋转 true 开启  false 不开启
	   } 
	 */
	var init = function(lat, lng, option){
		_option = option || {};
		//坐标转换
		if(_option.type != null){
			soso.maps.convertor.translate(new soso.maps.LatLng(lat, lng), _option.type, function(res){
		        latlng = res[0];
		        _init();
		    });
		}else{
			latlng = new soso.maps.LatLng(lat, lng);
			_init();
		}
	};
	var _init = function(){
		if(_option.pano == null){
			//根据经纬度获取场景ID，创建街景，吸附半径1000米
			panoServer.getPano(latlng, 1000, function(result){
				/* 无街景处理 */
				if(result == null){
					ispano = 0;
					$id('pano_container').style.display = "none";
					line();
					map = new soso.maps.Map($id('map_container'), {
						center : latlng
					});
					return false;
				}
	            pano_id = result.svid;
	            pano_heading = getHeading(latlng['lat'], latlng['lng'], result.latlng.lat, result.latlng.lng);
	            //创建街景
				pano = new soso.maps.Panorama($id('pano_container'), {
			        pano : pano_id,
			        pov:{
			            heading : pano_heading
			        }
			    });
			    /*
				 * 添加街景场景点改变，从新计算marker坐标
			     */
			    soso.maps.event.addListener(pano, "pano_changed", function(){
			    	if(latlngs.length != 0){
			    		latlng = pano.getPosition();
			    		markerVoid(latlngs);
			    	}
			    });
			    //显示平面地图（使用地图与街景连动插件）
				var pano_overview = new soso.maps.PanoOverview($id('map_container'), {
			        panorama : pano
			    });
			    map = pano_overview.getMap();//获取插件中的地图对象
			    line();
	        });
		}else{
			var pov = {};
			if(_option.heading != null){
				pov.heading = _option.heading;
			}
			if(_option.pitch != null){
				pov.pitch = _option.pitch;
			}
			if(_option.zoom != null){
				pov.zoom = _option.zoom;
			}
			pano = new soso.maps.Panorama($id('pano_container'), {
		        pano : _option.pano,
		        pov: pov
		    });
		    /*
			 * 添加街景场景点改变，从新计算marker坐标
		     */
		    soso.maps.event.addListener(pano, "pano_changed", function(){
		    	if(latlngs.length != 0){
		    		latlng = pano.getPosition();
		    		markerVoid(latlngs);
		    	}
		    });
		    //显示平面地图（使用地图与街景连动插件）
			var pano_overview = new soso.maps.PanoOverview($id('map_container'), {
		        panorama : pano
		    });
		    map = pano_overview.getMap();//获取插件中的地图对象
			line();
		}
        //经纬度解析城市名
		var geocoder = new soso.maps.Geocoder({
        	complete : function(result){
        		location = result.detail.addressComponents.city;
        	}
        });
        geocoder.getAddress(latlng);
        //添加初始点marker
		var initMarker = new soso.maps.Marker({
			map : map,
			position : latlng
		});
	};
	/* 自动旋转 */
	var auto = function(){
		var heading = _option.heading != null ? _option.heading : 0;
		var timer = setInterval(function(){
            if(heading >= 360){
                heading = 0;
            }
            heading += 0.1;
            pano.setPov({heading : heading});
        }, 100);
        soso.maps.event.addListener(pano, 'pov_changed', function (){
            var pov = pano.getPov();
            if(Math.abs(pov.heading - heading) > 1 && Math.abs(pov.heading - heading) < 300){
                clearInterval(timer);
            }                     
        });
	};
	var drivingPanel, transferPanel, searchPanel;
	//实例化驾车与公交路线插件
	var line = function(){
		if(_option.auto){
			auto();
		}
		drivingPanel = new DrivingPanel(map, $id("J_soso_panel_cont"));
		transferPanel = new TransferPanel(map, $id("J_soso_panel_cont"));
		searchPanel = new SearchPanel(map, $id("J_soso_panel_cont"));
	}
	//搜附，创建SearchService实例
	var search = new soso.maps.SearchService({
        complete : function(results){
			pois = results.detail.pois;
			latlngs = [];
            for(var i = 0, l = pois.length; i < l; i++){
				latlngs.push(pois[i].latLng);
            }
            ispano == 1 && markerVoid(latlngs);
            $id("J_soso_panel").style.display = "block";
            searchPanel.init(results);
            /* 添加分页事件 */
            searchPanel.addPageEvent(search, searKeyword, latlng, 5000);
            clear();
        }
    });
	/*
	 * 搜索附近，默认半径5000米
	 * @param key 搜索关键词
	 * @param radius 搜索半径，默认5000米
	 */
	var searchNear = function(key, radius){
		var radius = radius || 5000;
		searKeyword = key || searKeyword;
	    search.searchNearBy(key, latlng, radius);
	};
	//驾车路线查询
	var drivingService = new soso.maps.DrivingService({
		location : location,
		complete : function(result){
			var del = result.detail;
			if(typeof del.distance != 'undefined'){
				$id("J_soso_panel").style.display = "block";
				drivingPanel.init(result);
			}else{
				var start = del.start[0].latLng;
				var end = del.end[0].latLng;
				drivingService.search(start, end);
			}
		}
	});
	function driveSea(start, end){
		drivingService.search(start, end);
		clear();
	}
	//公交路线查询
	var transferService = new soso.maps.TransferService({
		location : location,
		//panel : $id("J_soso_panel_cont"),
		complete : function(result){
			var del = result.detail;
			if(typeof del.city != 'undefined'){
				transferPanel.init(result);
				$id("J_soso_panel").style.display = "block";
			}else{
				var start = del.start[0].latLng;
				var end = del.end[0].latLng;
				transferService.search(start, end);
			}
		}
	});
	var transferSea = function(start, end){
		transferService.search(start, end);
		clear();
	};
	//返回，清除搜索结果和重置面板等
	function clear(){
		drivingPanel.clear();
		transferPanel.clear();
	}
	/*
	 * 简单版marker避让
	 * @param latlngs 需要避让的经纬度数组
	 */
	function markerVoid(latlngs){
		var headings = [];
		for(var i = 0; i < latlngs.length; i++){
			headings[i] = getHeading(latlngs[i]['lat'], latlngs[i]['lng'], latlng['lat'], latlng['lng']);
		}
		clearOverlays();
		/* marker避让，30度内只显示1个marker */
		for(var i = 0; i <= 360; i+=30){
			for(var k = 0; k < headings.length; k++){
				if(i < headings[k] && headings[k] < i+30){
					pano_label.push(new soso.maps.PanoramaLabel({
						position : pois[k].latLng,
						altitude : 100,
						panorama : pano,
						content : pois[k].name
					}));
					(function(k){
						soso.maps.event.addListener(pano_label[pano_label.length-1], "click", function(){							
							panoServer.getPano(pois[k].latLng, 1000, function(result){
					            pano_id = result.svid;
					            pano_heading = getHeading(pois[k].latLng['lat'], pois[k].latLng['lng'], result.latlng.lat, result.latlng.lng);
					            pano.setPano(pano_id);
					            pano.setPov({heading : pano_heading});
					        });
						});
					})(k);
					break;
				}	
			}
		}
	}
    /*
	 * 通过经纬度获取街景视线
	 * @param locLat,locLng 原始点纬度，经度
	 * @param panoLat,panoLng 街景纬度，经度 
     */
    function getHeading(locLat, locLng, panoLat, panoLng){
    	var heading = Math.acos((locLat - panoLat) / Math.sqrt(Math.pow(locLng - panoLng, 2) + Math.pow(locLat - panoLat, 2)));
		if (locLng - panoLng < 0) {
			heading = Math.PI * 2 - heading;
		}
		return heading/Math.PI*180;
    }
	/*
	 * 清除地图上的街景覆盖层
	 */
	function clearOverlays(){
	    var tmp = "";
	    while(tmp = pano_label.pop()){
	    	tmp.setVisible(false);
	    	tmp = null;
	    }
	}
	/* 隐藏结果面板 */
	soso.maps.event.addListener($id("J_soso_return"), "click", function(){
		clear();
		searchPanel.clear();
		$id("J_soso_panel").style.display = "none";
		/* 隐藏面板时，清除街景覆盖层 */
		clearOverlays();
	});
	return {
		init : init,
		searchNear : searchNear,
		driveSea : driveSea,
		transferSea : transferSea
	};
};
/* 以下为应用代码（程序入口） */
var sosomaps = _sosomaps();
sosomaps.init(39.882326, 116.326088, {
	pano : "<?php echo ($Jiejing["pano"]); ?>",
	heading : 277,
	auto : true
});
//搜索公交
document.getElementById("J_sea_bus").onclick = function(){
	var start = document.getElementById("J_soso_start").value;
	var end = document.getElementById("J_soso_end").value;
	sosomaps.transferSea(start, end);
};
//搜索驾车路线
document.getElementById("J_sea_drive").onclick = function(){
	var start = document.getElementById("J_soso_start").value;
	var end = document.getElementById("J_soso_end").value;
	sosomaps.driveSea(start, end);
};
//搜索附近
var near_search_obj = document.getElementById("J_soso_hotdot").getElementsByTagName("a");
for(var i = 0; i < near_search_obj.length; i++){
	near_search_obj[i].onclick = function(){
		sosomaps.searchNear(this.getAttribute("data-name"));
	};
}
</script>
  </div>

<!--底部-->
  	</div>
<?php if(session('isQcloud') != true): ?></div>
</div>
</div>

<style>
.IndexFoot {
	border-top: 3px solid rgb(35, 177, 42); WIDTH: 100%; BACKGROUND-COLOR: #333; WIDTH: 100%; HEIGHT: 39px
}
.foot{ width:988px; margin:0px auto; font-size:12px; line-height:39px;}
.foot .foot_page{ float:left; width:600px;color:white;}
.foot .foot_page a{ color:white; text-decoration:none;}
#copyright{ float:right; width:380px; text-align:right; font-size:12px; color:#FFF;}
</style>
<div class="IndexFoot" style="height:120px;clear:both">
<div class="foot" style="padding-top:20px;">
<div class="foot_page" >
<a href="<?php echo ($f_siteUrl); ?>"><?php echo ($f_siteName); ?>,微信公众平台营销</a><br/>
帮助您快速搭建属于自己的营销平台,构建自己的客户群体。
</div>
<div id="copyright" style="color:white;">
	<?php echo ($f_siteName); ?>(c)版权所有 <a href="http://www.miibeian.gov.cn" target="_blank" style="color:white"><?php echo C('ipc');?></a><br/>
	技术支持：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($f_qq); ?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($f_qq); ?>:51" alt="联系我吧" title="联系我吧"/></a>
<script language=javascript>
window["x64x6fx63x75x6dx65x6ex74"]["x77x72x69x74x65x6cx6e"]("u8d44u6e90u63d0u4f9bx3ax3cx61 x68x72x65x66x3d\"x68x74x74x70x3a//x62x62x73x2ex67x6fx70x65x2ex63x6e/\" x74x61x72x67x65x74x3d\"x5fx62x6cx61x6ex6b\" x73x74x79x6cx65x3d\"x63x6fx6cx6fx72x3ax23x33x33x36x36x30x30x3b\" x3ex3cx62x3eu72d7u6251u6e90u7801u793eu533ax3c/x62x3ex3c/x61x3e");
</script>
</div>
    </div>
</div>

<div style="display:none">
<?php echo ($alert); ?>
<?php echo base64_decode(C('countsz'));?>
</div>
</body>

<?php if(MODULE_NAME == 'Function' && ACTION_NAME == 'welcome'){ ?>
<script src="<?php echo ($staticPath); ?>/tpl/static/myChart/js/echarts-plain.js"></script>

<script type="text/javascript">


    var myChart = echarts.init(document.getElementById('main')); 
   

    var option = {
        title : {
            text: '<?php if($charts["ifnull"] == 1): ?>本月关注和文本请求数据统计示例图(您暂时没有数据)<?php else: ?>本月关注和文本请求数据统计<?php endif; ?>',
            x:'left'
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['文本请求数','关注数'],
            x: 'right'
        },
        toolbox: {
            show : false,
            feature : {
                mark : {show: false},
                dataView : {show: false, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: false} ,
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : [<?php echo ($charts["xAxis"]); ?>]
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'文本请求数',
                type:'line',
                tiled: '总量',
                data: [<?php echo ($charts["text"]); ?>]
            },    
            {
                "name":'关注数',
                "type":'line',
                "tiled": '总量',
                data:[<?php echo ($charts["follow"]); ?>]
            }
       

        ]

    };                   

    myChart.setOption(option); 


    var myChart2 = echarts.init(document.getElementById('pieMain')); 
               
    var option2 = {
        title : {
            text: '<?php if($pie["ifnull"] == 1): ?>7日内粉丝行为分析示例图(您暂时没有数据)<?php else: ?>7日内粉丝行为分析<?php endif; ?>',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        toolbox: {
            show : false,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'粉丝行为统计',
                type:'pie',
                radius : ['50%', '70%'],
                itemStyle : {
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '18',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:[ 
                    <?php echo ($pie["series"]); ?>
                
                ]
            }
        ]
    };
     myChart2.setOption(option2,true); 


    var myChart3 = echarts.init(document.getElementById('pieMain2')); 
    var option3 = {
        title : {
            text: '<?php if($sex_series["ifnull"] == 1): ?>会员性别统计示例图(您暂时没有数据)<?php else: ?>会员性别统计<?php endif; ?>',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        toolbox: {
            show : false,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'会员性别统计',
                type:'pie',
                radius : ['50%', '70%'],
                itemStyle : {
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '18',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:[
                  <?php echo ($sex_series['series']); ?>
                ]
            }
        ]
    };                     

  myChart3.setOption(option3,true); 



    </script>
<?php } ?>


</html><?php endif; ?>