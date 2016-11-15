<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title><?php echo C('site_title');?></title>
    <meta content="<?php echo C('keyword');?>" name="Keywords">
    <meta content="<?php echo C('content');?>" name="Description">
    <script src="<?php echo RES;?>/js/html5.js?BPm"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/bootstrap_min.css?BPm" media="all" />
    <link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css?BPm" media="all" />
<script type="text/javascript" src="<?php echo RES;?>/js/jQuery.js?BPm"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/carouFredSel.js?BPm"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/beta-index.js?BPm"></script>
	<link rel="shortcut icon" href="<?php echo RES;?>/images/favicon.ico" />
</head>
<body>
	<!--[if lte IE 8]>  <script language="javascript">$(function (){$.browser.msie&&$("#ie9-tips").show().find("#stopSuggestA").click(function(){$("#ie9-tips").hide()})})</script><![endif]-->
<div class="nav clearfix">
	<div class="nav-content">
		<h1 class="left"><a href="/"><?php echo C('site_name');?>·微信营销，如此简单！</a></h1>
		<div class="left city">
        <?php if($_SESSION[uid]==false): ?><h2><a href="<?php echo U('Home/Index/city');?>">
					全球代理查询<i class="tri4"></i>
				</a></h2>

			<?php else: ?>
				<h2>你好</h2>
				<a><span style="color:red"><?php echo (session('uname')); ?></span></a><?php endif; ?>
		</div>
		<div class="right line-li">
        
			 <ul>
        <li><a href="<?php echo U('Home/Index/index');?>"<?php if((ACTION_NAME) == "index"): ?>class="hover"<?php endif; ?>>首页</a></li>
        <li><a href="<?php echo U('Home/Index/common');?>" <?php if((ACTION_NAME) == "common"): ?>class="hover"<?php endif; ?> >经典案例</a></li>
	    <li class="nav_menu_li_1"><a style="width:70px; text-align:left;" class="_hover">产品中心<i></i></a>
					 <div class="sub-nav">
						 <a href="<?php echo U('Home/Index/price');?>">资费套餐</a>
						 <a href="<?php echo U('Other/Index/msg');?>">升级预约</a>
						 <a href="/">产品问答</a>
						 <a href="/">微拍</a>
						 <a href="/">小票机</a>
						 <a href="/">微WiFi</a>
					 </div>
	    </li>
        <li><a href="<?php echo U('Home/Index/proxy');?>" <?php if((ACTION_NAME) == "proxy"): ?>class="hover"<?php endif; ?> >渠道代理</a> </li>
		<li><a href="<?php echo U('Home/Index/fc');?>" <?php if((ACTION_NAME) == "fc"): ?>class="hover"<?php endif; ?> >功能介绍</a></li>		
        <li class="nav_menu_li_1"><a style="width:70px; text-align:left;" class="_hover" target="_black">帮助中心<i></i></a>
					 <div class="sub-nav">
						 <a href="<?php echo U('Home/Index/help');?>">使用指南</a>
						 <a href="http://www.gope.cn/" target="_black">技术支持</a>
						 <a href="http://wpa.qq.com/msgrd?v=3&uin=75943938&site=qq&menu=yes" target="_black">在线咨询</a>
					 </div>
        </li>
    </ul>

            <div class="account">
	       <?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Home/Index/reg');?>" class="btn-reg btn0" >注册</a>
           <a href="javascript:;" class="btn-login btn0" onClick="loginBox.toggle(this, event);">登录</a>
						<div id="qrcode" class="qrcode">
					<div>
						<a id="switch" href="javascript:;"  class="switch"></a>
						<div id="qrcode_body" class="qrcode_body">
						</div>
					</div>
				</div>
	         <?php else: ?>
           <a href="<?php echo U('User/Index/index');?>" hidefocus="true" class="btn-reg btn0">管理</a>
		  <a href="javascript:void(0)" class="btn-login btn0" onClick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')">退出</a>
						<div id="qrcode" class="qrcode">
					<div>
						<a id="switch" href="javascript:;"  class="switch"></a>
						<div id="qrcode_body" class="qrcode_body">
						</div>
					</div>
				</div><?php endif; ?>	  
		</div>
		</div>
	</div>
</div>
	<div id="loginBox">
		<div class="login-panel">
			<h3>登录</h3>
			<div class="login-mod">
				<div class="login-err-panel dn" id="err_area">
					<span class="icon-wrapper"><i class="icon24-login err" style="margin-top:-.2em;*margin-top:0;"></i></span>
					<span id="err_tips"></span>
				</div>
				<form action="<?php echo U('Users/checklogin');?>" method="post"  class="login-form" id="login-form">
					<div class="login-un">
						<span class="icon-wrapper"><i class="icon24-login un"></i></span>
						<input type="text" id="username" placeholder="<?php echo C('site_name');?>帐号">
					</div>
					<div class="login-pwd">
						<span class="icon-wrapper"><i class="icon24-login pwd"></i></span>
						<input type="password" id="password" name="password" placeholder="密码">
					</div>
				</form>
				<div class="login-help-panel">
					<a id="rememberPwd" class="login-remember-pwd" href="javascript:;">
						<input type="checkbox" id="rememberPwdIcon">记住帐号
					</a>
					<a class="login-forget-pwd" href="<?php echo U('Home/Index/regpwd');?>">忘记密码？</a>
                    <a class="login-forget-pwd" href="<?php echo U('Home/Index/reg');?>">新用户注册</a>
				</div>
				<div class="login-btn-panel">
					<a class="login-btn" title="点击登录" href="javascript:;" id="login_button" onClick="login();">登录</a>
				</div>
			</div>
		</div>
		<div class="login-cover" onClick="loginBox.toggle(this, event);"></div>
	</div>
<div id="ie9-tips" class="clearfix">
	<div id="tipsPanel">
		<div id="tipsDesc">系统检测到您所使用的浏览器版本较低，推荐使用<a href="http://www.firefox.com.cn/download/" target="_blank">Firefox</a>或<a href="http://www.google.cn/intl/zh-CN/chrome/browser/index.html" target="_blank">Chrome</a>浏览器打开，否则将无法体验完整产品功能。</div>
		<a id="stopSuggestA" href="javascript:;">×</a>
	</div>
</div>

<script>
var $do_submit = false;

// 绑定回车键
$('#loginBox').keydown(function(e){
	if(13 == event.keyCode){
		login();
	}
});

	function login()
	{
		if (true == $do_submit)
		{
			return false;
		}

		var $pre_submit = '登录', $done_submit = '登录中...';
		var $username = $('#username').val(), $password = $('#password').val(), $keepalive = $('#rememberPwdIcon').val();
		$('#login_button').text($done_submit);
		$do_submit = true;

		// check
		if ('' == $username || '' == $password)
		{
			$('#err_tips').text('您输入的帐号或密码错误，请重新输入！');
			$('#err_area').show();
			$('#login_button').text($pre_submit);
			$do_submit = false;
			return false;
		}

		var $login_data = {
			username:$username,
			password:$password,
			keepalive:$keepalive
		};
		$.post('<?php echo U('Users/checklogin');?>', $login_data, function(rs){
			if(rs.status == 1)
			{
				location.href = '<?php echo U('User/Index/index');?>';
			}
			else
			{
				$('#err_tips').text(rs.info);
				$('#err_area').show();
				$('#login_button').text($pre_submit);
			}
			$do_submit = false;
		}, 'json');
	}
</script>
<script>
	//alert($);
	$(function(){
		(function(){
			var slider = {
				flag:false,
				owner:$("#qrcode")[0],
				handleEvent: function(evt){
					var that = this;
					that.flag = ("mouseover" == evt.type);
					if(that.flag){
						params = {opacity:"1", top:"5px"};
						$("#qrcode_body").addClass("on");
						$("#switch").addClass("on");
						slider.owner.removeEventListener("mouseover", slider, false);
					}else{
						params = {opacity:"0", top:"-50px"};
						$("#switch").removeClass("on");
						slider.owner.removeEventListener("mouseleave", slider, false);
					}

					$("#qrcode_body").animate(params, 500, "swing", function(){
						if(that.flag){
							slider.owner.addEventListener("mouseleave", slider, false);
						}else{
							$("#qrcode_body").removeClass("on");
							slider.owner.addEventListener("mouseover", slider, false);
						}
					});
				}
			};
			slider.owner.addEventListener("mouseover", slider, false);
		})();

	});
</script>
<!-- banner -->

<div class="Public-content clearfix">
	<div class="Public">
		<h1 class="Public-h1">经典案例</h1>
		<div class="Public-box clearfix">
			<ul id="nav_lis" class="case-nav left">
				<li data-index="0" data-hash="#case-a" class="hover">汽车</li>
				<li data-index="1" data-hash="#case-b" class="">房产</li>
                <li data-index="6" data-hash="#case-g" class="">电商</li>
                <li data-index="4" data-hash="#case-e" class="">餐饮</li>
                <li data-index="9" data-hash="#case-j" class="">婚纱摄影</li>
                <li data-index="17" data-hash="#case-r" class="">婚庆</li>
                <li data-index="3" data-hash="#case-d" class="">酒店</li>
				<li data-index="2" data-hash="#case-c" class="">医疗</li>
				<li data-index="5" data-hash="#case-f" class="">旅游</li>
                <li data-index="20" data-hash="#case-u" class="">生活服务</li>
				<li data-index="7" data-hash="#case-h" class="">娱乐</li>
				<li data-index="8" data-hash="#case-i" class="">装潢装饰</li>
				<li data-index="10" data-hash="#case-k">通讯</li>
				<li data-index="11" data-hash="#case-l">养生美容健身</li>
				<li data-index="12" data-hash="#case-m">金融</li>
				<li data-index="13" data-hash="#case-n">广告传媒</li>
				<li data-index="14" data-hash="#case-o">零售</li>
				<li data-index="15" data-hash="#case-p">百货商场</li>
				<li data-index="16" data-hash="#case-q">法律</li>
   				<li data-index="18" data-hash="#case-s">IT</li>
				<li data-index="19" data-hash="#case-t" class="">教育</li>
                
			</ul>
			<div id="nav_uls" style="overflow:hidden;">

			<!-- 汽车开始 -->
				<div data-index="0" class="wm_case_mod_bd right show">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case car2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">绿地宝马5S</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case car1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">咸阳尚乘</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case car3 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">奔驰世家</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case car4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">沃尔沃丰颐</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case car5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">长安福特阳天</h4>
						</li>
						<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case car6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">长安铃木</h4>
						</li>
						<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case car7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_car.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">郑州日产</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="7" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/car7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/car7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/car7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<span class="arrow" id="case_arrow">
						<i class="arrow_out"></i>
						<i class="arrow_in"></i>
					</span>
				</div>
			<!--汽车结束-->

			<!--房地产开始-->
				<div data-index="1" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case est1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">石梅湾九里</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case est2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">中诚地产</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case est3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">保利达翠堤湾</h4>
						</li>
						
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case est5 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">金地檀溪</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case est6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">悦美国际</h4>
						</li>
                           <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case est7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_est.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">万科学府</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc8-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc8-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc8-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
			
					<div class="default_wrapper wm_case_desc" data-id="3" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				
                    	<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/fdc9-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/fdc9-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/fdc9-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--房地产结束-->

			<!--医疗开始-->
				<div data-index="2" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case med1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">上海复大医院</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case med2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">美缔整形美容</h4>
						</li>
                        <li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case med3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">成都万年医院</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case med4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">玛丽亚妇产医院</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case med5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">苏州同济医院</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case med6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">泰安丽人妇产医院</h4>
						</li>
                        <li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case med7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">济南爱容整形</h4>
						</li>
                       
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
                    <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl9-2.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl9-1.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl9-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>

				</div>
			<!--医疗结束-->

			<!--酒店开始-->
				<div data-index="3" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">丽彩天禧酒店</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">年代风尚</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">五环大酒店</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">最佳财富西方酒店</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">大城小爱酒店</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">丽江懒阳阳客栈</h4>
						</li>
                        <li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case jd7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_jd.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">深圳唐拉雅秀酒店</h4>
						</li> 
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/jd7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/jd7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/jd7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
				</div>
			<!--酒店结束-->

			<!--餐饮开始-->
				<div data-index="4" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">海底捞</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">南平小南国</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">麦兜点点</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">南京典尚餐饮</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">黔香阁</h4>
						</li>
						<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">舌尖上的酸菜鱼</h4>
						</li>
						<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case cy7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_cy.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">襄阳甜甜馆</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys10-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys10-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys10-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ys6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ys7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ys7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img"> <img id="case_ewm" src="<?php echo RES;?>/images/common/ys7-erwei.jpg?BPm" width="180" height="180"></p>
					</div>
				</div>
			<!--餐饮结束-->

			<!--旅游开始-->
				<div data-index="5" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">深圳东部华侨城</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">美地度假</h4>
						</li>
                        <li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">金假期旅游</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly4 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">深圳天安旅游</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">西林生态旅游</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case ly6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ly.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">众信旅游网</h4>
						</li>
                       
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                      <div class="default_wrapper wm_case_desc" data-id="3" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                     <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                     <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ly6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ly6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ly6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--旅游结束-->

			<!--电商开始-->
				<div data-index="6" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">虎都男装</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">卡斯莱蛋糕</h4>
						</li>
                        	<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">婴缘坊</h4>
						</li>
                        
                        	<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">品尚红酒 </h4>
						</li>
                        
                        	<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">名饮店 </h4>
						</li>
                        	<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">景宁富特</h4>
						</li>
                        <li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case ds7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ds.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">宏艺隆电气</h4>
						</li>
                        
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                      <div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                      <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                      <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                      <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ds7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ds7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ds7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                  
				</div>
			<!--电商结束-->

			<!--娱乐开始-->
				<div data-index="7" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case yul1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yul.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">BBOSS至尊</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case yul2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yul.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">丹东二人转大</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case yul3 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yul.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">名流之星KTV</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case yul4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yul.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">西安倾国倾城</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case yul5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_yul.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">美宝之家</h4>
						</li>
                       
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/yl5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/yl5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/yl5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
				</div>
			<!--娱乐结束-->

			<!--装潢开始-->
				<div data-index="8" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">大涌红木家具</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">鸿起顺门业</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">慧能地暖</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">健威人性家具</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">宁波浪琴屿</h4>
						</li>
						<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">欧派木门</h4>
						</li>
						<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case zh7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_zh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">欧然墙纸</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/zh7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/zh7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/zh7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--装潢结束-->

			<!--婚纱开始-->
				<div data-index="9" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case hs1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">爱女神3D婚纱</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case hs2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">iweddingstudio</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case hs3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">韩国艺匠</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case hs4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">美十摄影</h4>
						</li>
						<li class="wm_case_item" data-id="4">
									<span class="icon_wrapper">
										<i class="icon_wm_case hs5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
									</span>
							<h4 class="wm_case_t">星梦奇缘</h4>
						</li>
						<li class="wm_case_item" data-id="5">
									<span class="icon_wrapper">
										<i class="icon_wm_case hs6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
									</span>
							<h4 class="wm_case_t">拍吧视觉</h4>
						</li>
						<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case hs7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hs.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">罗门婚纱</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs4-erwei.jpg?BPm" width="180" height="180"></p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hs7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hs7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hs7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--婚纱结束-->

			<!--通讯开始-->
				<div data-index="10" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case tx1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_tx.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">衡阳金联合通讯</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case tx2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_tx.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">洛阳移动</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case tx3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_tx.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">莆田沃体验手机</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case tx4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_tx.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">中国电信赣州网厅</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/tx1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/tx1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/tx1-erwei.jpg?BPm" width="180" height="180"></p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/tx2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/tx2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/tx2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/tx3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/tx3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/tx3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/tx4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/tx4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/tx4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--通讯结束-->

			<!--美容开始-->
				<div data-index="11" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">茗草泉</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">诗美诗格</h4>
						</li>

						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">辰嫣国际微刊</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">凤凰温泉</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">慧之通</h4>
						</li>
						<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">匠人造型</h4>
						</li>
						<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case mr7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_mr.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">爵士美发</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/mr6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/mr6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/mr6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--美容结束-->

			<!--金融开始-->
				<div data-index="12" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case bk1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bk.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">融易宝</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case bk2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bk.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">微诺亚</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bk1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bk1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bk1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bk2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bk2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bk2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--金融结束-->

			<!--广告开始-->
				<div data-index="13" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">乐享南平</h4>
						</li>
                        <li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">JM传媒</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case  ad3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">四川微盟</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">车视传媒</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">彭城晚报</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">浙江影视娱乐频道</h4>
						</li>
                         <li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case ad7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_ad.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">微客</h4>
						</li>
                        	
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    	<div class="default_wrapper wm_case_desc" data-id="4" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                     <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ad7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ad7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ad7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    
				</div>
			<!--广告结束-->

			<!--零售开始-->
				<div data-index="14" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case lis1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_lis.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">安贝儿童座椅</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case lis2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_lis.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">拜耳水产</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case lis3 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_lis.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">超凡计算机</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case lis4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_lis.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">牛牛生态水产</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case lis5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_lis.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">YFAN伊梵</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls2-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls3-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--零售结束-->

			<!--百货结束-->
				<div data-index="15" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">潮流百货</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">兰州美伦百货</h4>
						</li>
						<li class="wm_case_item" name="shdz" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">廊坊万达广场</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh4 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">星摩尔购物广场</h4>
						</li>
						<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">知名度服饰</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case bh6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_bh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">岳阳百货</h4>
						</li>
                        
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/bh6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/bh6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/bh6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--百货场结束-->

			<!--法律开始-->
				<div data-index="16" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case fl1 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_fl.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">大成律师</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/ls1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/ls1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/ls1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--法律结束-->

			<!--婚庆开始-->
				<div data-index="17" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case hq1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hq.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">铂菲婚礼顾问</h4>
						</li>
                        <li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case hq2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hq.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">福州婚庆导航</h4>
						</li>
                        <li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case hq3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hq.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">花香阁婚庆花艺</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case hq4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_hq.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">施华洛婚纱婚庆</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hq1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hq1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hq1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hq2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hq2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hq2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hq3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hq3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hq3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/hq4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/hq4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/hq4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--婚庆结束-->

			<!--it开始-->
				<div data-index="18" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case it1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">艾定义互动</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case it2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">新疆玖久</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case it3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">武夷微盟</h4>
						</li>
						<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case it4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">易维网络</h4>
						</li>
                        	<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case it5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">云图信息科技</h4>
						</li>
                        
                        	<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case it6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">深圳永图网络</h4>
						</li>
                        	<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case it7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_it.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">德宏州朝阳信息</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it2-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="3" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/it7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/it7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/it7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				</div>
			<!--it结束-->

			<!--教育开始-->
				<div data-index="19" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">佳音英语</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case  edu2 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">见悟修教育</h4>
						</li>
						<li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">廊坊第六小学</h4>
						</li>
					
                        	<li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu4" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">愚公移山美术</h4>
						</li>
                        	<li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">阿杰发艺</h4>
						</li>
                        	<li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">维恩教育</h4>
						</li>
                        
                        	<li class="wm_case_item" data-id="6">
							<span class="icon_wrapper">
								<i class="icon_wm_case edu7" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_edu.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">学大教育</h4>
						</li>
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="2" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
				
                    <div class="default_wrapper wm_case_desc" data-id="4" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu4-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
                      <div class="default_wrapper wm_case_desc" data-id="5" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu5-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
                      <div class="default_wrapper wm_case_desc" data-id="6" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu6-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
                    
                        <div class="default_wrapper wm_case_desc" data-id="7" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/edu7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/edu7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/edu7-erwei.jpg?BPm" width="180" height="180">
						</p>

					</div>
				</div>
			<!--教育结束-->
            
            	<!--生活开始-->
				<div data-index="20" class="wm_case_mod_bd right">
					<ul class="wm_case_list">
						<li class="wm_case_item" data-id="0">
							<span class="icon_wrapper">
								<i class="icon_wm_case wsh1" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">微生活-衡阳</h4>
						</li>
						<li class="wm_case_item" data-id="1">
							<span class="icon_wrapper">
								<i class="icon_wm_case  wsh2" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">惠州生活圈</h4>
						</li>
                        <li class="wm_case_item" data-id="2">
							<span class="icon_wrapper">
								<i class="icon_wm_case  wsh3" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">通灵珠宝</h4>
						</li>
                        <li class="wm_case_item" data-id="3">
							<span class="icon_wrapper">
								<i class="icon_wm_case  wsh4 on" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">嘉州生活</h4>
						</li>
                        <li class="wm_case_item" data-id="4">
							<span class="icon_wrapper">
								<i class="icon_wm_case  wsh5" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">邵阳微盟</h4>
						</li>
                        <li class="wm_case_item" data-id="5">
							<span class="icon_wrapper">
								<i class="icon_wm_case  wsh6" style="background-image:url(<?php echo RES;?>/images/common/icon_wm_case_wsh.png?BPm);"></i>
							</span>
							<h4 class="wm_case_t">太仓南洋广场</h4>
						</li>
                      
						
					</ul>
					<div class="default_wrapper wm_case_desc" data-id="0" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh1-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh1-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh1-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
					<div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh2-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh2-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh2-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh3-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh3-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh3-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh4-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh4-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh4-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh5-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh5-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh5-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh6-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh6-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh6-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                    <div class="default_wrapper wm_case_desc" data-id="1" style="display: none;">
						<img id="case_img_left" src="<?php echo RES;?>/images/common/wsh7-1.jpg?BPm" class="wm_case_desc_img">
						<img id="case_img_right" src="<?php echo RES;?>/images/common/wsh7-2.jpg?BPm" class="wm_case_desc_img extra">
						<p class="case_ewm_img">
							<img id="case_ewm" src="<?php echo RES;?>/images/common/wsh7-erwei.jpg?BPm" width="180" height="180">
						</p>
					</div>
                
                  
				</div>
			<!--生活结束-->


		</div>
	</div>
</div>




</div>



<script type="text/javascript">
	$(document).ready(function(){
		var hash=window.location.hash || "#case-a";
		if(hash){
			var lis=$("#nav_lis>li"),
				divs=$("#nav_uls>div");
			lis.each(function(index, v) {
				if(hash == v.getAttribute("data-hash")){
					v.className="hover";
					//.var divs = $("#nav_uls>div");
					for(var i=0,ci; ci = divs[i]; i++){
						if(index == ci.getAttribute("data-index")){
							$(ci).addClass("show");
						}else{
							$(ci).removeClass("show");
						}
					}
					/*divs.removeAttr("data-on").each(function(k,vv){
						if(index == vv.getAttribute("data-index")){
							vv.setAttribute("data-on", "true");
							return;
						}
					});*/
				}
			});
		}

	$("#nav_lis").on("mouseover", function(e){
			$(this).find("li").removeClass("hover");
			e.target.className = "hover";
			var index = e.target.getAttribute("data-index");
			//
			var divs = $("#nav_uls>div");
			for(var i=0,ci; ci = divs[i]; i++){
				if(index == ci.getAttribute("data-index")){
					$(ci).addClass("show");
				}else{
					$(ci).removeClass("show");
				}
			}

		});


		$("#nav_uls>div").each(function(k,v){
			function show_case(id, thi, pause) {
				if(pause){return;}
				$(thi).parent().find(".on").removeClass("on");
				$(thi).find(".icon_wm_case").addClass("on");
				var divs=$(thi).closest("div").find(".wm_case_desc");
				divs.css("display", "none")[id].style.display="";
			};
			(function(){
				var lis=$(v).find(".wm_case_item");
				var index=0;
				var pause=false;
				//
				$(v).on("mouseover", function(){
					pause=true;
				}).on("mouseout", function(){
						pause=false;
					}).find(".wm_case_item").hover(function () {
						index=$(this).attr("data-id");
						show_case(index, this);
					});
				//
				var timer=setInterval(function(){
					index=++index>=lis.length? 0: index;
					show_case(index, lis[index], pause);
				}, 3000);
			})();
		});
	});
</script>

</div>
<div class="footer">
  <div class="footer-content clearfix">
    <div class="foot-menu">
			<p>
				<a href="<?php echo C('site_url');?>" target="_blank"><?php echo C('site_name');?>首页</a>&nbsp;|&nbsp;
				<a href="<?php echo U('Home/Index/reg');?>" target="_blank">申请入驻</a>&nbsp;|&nbsp;
				<a href="<?php echo U('Home/Index/proxy');?>" target="_blank">渠道代理</a>&nbsp;|&nbsp;
				<!--<a href="<?php echo U('Home/Index/about');?>" target="_blank">关于<?php echo C('site_name');?></a>&nbsp;|&nbsp;-->
				<a href="<?php echo U('Home/Index/agents');?>" target="_blank">授权认证</a>&nbsp;|&nbsp;
				<a href="agent.php" target="_blank">代理商登录</a>&nbsp;|&nbsp;
			</p>
			<p>客服QQ：<?php echo C('site_qq');?>&nbsp;&nbsp;&nbsp;技术QQ：<?php echo C('site_qq');?>&nbsp;&nbsp;&nbsp;邮箱：<?php echo C('site_email');?></p>
      <p>公司地址：<?php echo C('site_adress');?>&nbsp;&nbsp;&nbsp;咨询热线：<?php echo C('site_mp');?></p>
    </div>
		<div class="copyright">
			Copyright (c) 2011-<?php echo date('Y',time());?> <?php echo C('server_topdomain');?>. All Rights Reserved <?php echo C('copyright');?> <?php echo C('ipc');?> <?php echo C('counts');?>
 </div>
</div>
<!--<weixinerweima>-->
<div class="erwei" title="微信扫一扫">
	<span class="hudongzhushou">官方微信</span>
	<div class="erwei_big" style="display:none;">
		<p>扫一扫，关注<?php echo C('site_name');?>官方微信，体验<?php echo C('site_name');?>智能服务</p>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		var erwei_time = null;
		$(".erwei").hover(function(){
			$(".erwei_big").show();
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
		$(".erwei_big").mouseenter(function(){
			if(erwei_time){
				clearTimeout(erwei_time);
			}
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
	});
</script>

<!--<weixinerweima>-->
<!-- Baidu Button BEGIN -->
<!-- 将此代码放在适当的位置，建议在body结束前 -->
<script id="bdaddtocite_shell"></script>
<script>
var bdShare_config_addtocite = {
	"type":"slide"
	,"pos":"left"
	,"color":"black"
	,"top":"200"
	,"uid":"6847210"
};
document.getElementById("bdaddtocite_shell").src="http://bdimg.share.baidu.com/static/js/addtocite_shell.js?t=" + Math.ceil(new Date()/3600000);

function zschref(){
	window.location.href="<?php echo C('site_url');?>";
}
</script>
<!-- Baidu Button END -->
<!---返回顶部------->
<div class="back2top" style="display:block"><a class="b_img" href="javascript:;"></a></div>
<script>
	function feedbackSubmit(){
		var $data = {
			feedback: $('#feedback-text').val(),
			email: $('#feedback-input').val(),
			url: self.location.href
		};
		$.post('/site/feedback', $data, function(rs){
			alert(rs.error);
			if (200 == rs.code)
			{
				$('#feedback, #feedback_cover').toggleClass('on');
			}
		}, 'json');
	}
</script>
<script type="text/javascript">
		$(document).ready(function(){
		var hash=window.location.hash || "#site";
		if(hash){
			var lis=$("#nav_lis>li"),
				divs=$("#nav_uls>div");
			lis.each(function(index, v) {
				if(hash == v.getAttribute("data-hash")){
					v.className="hover";
					//.var divs = $("#nav_uls>div");
					for(var i=0,ci; ci = divs[i]; i++){
						if(index == ci.getAttribute("data-index")){
							$(ci).addClass("show");
						}else{
							$(ci).removeClass("show");
						}
					}
			
				}
			});
		}


	$("#nav_lis").on("mouseover", function(e){
			$(this).find("li").removeClass("hover");
			e.target.className = "hover";
			var index = e.target.getAttribute("data-index");
			//
			var divs = $("#nav_uls>div");
			for(var i=0,ci; ci = divs[i]; i++){
				if(index == ci.getAttribute("data-index")){
					$(ci).addClass("show");
				}else{
					$(ci).removeClass("show");
				}
			}

		});


	});
</script>