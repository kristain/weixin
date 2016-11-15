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


	<!--595 850-->
<script language="javascript">
	$(function () {
		$("a").click(function () {
			var rel = $(this).attr("rel");
			if (rel) {
				var pos = $(rel).offset().top-60;
				$("html,body").animate({ scrollTop: pos }, 800);
			}

		})
	})
</script>
<script>
	$().ready(function(){

		window.onscroll = window.onresize = function(){
			showSideBar();
		}
	});
	function showSideBar(){
		if(!window.sideMenu){
			window.sideMenu = $("#sideToolbar");
		}
		if((document.body.scrollTop||document.documentElement.scrollTop)>500){
			sideMenu.addClass("on");
		}else{
			sideMenu.removeClass("on");
		}
	}



</script>


<div id="top"></div><style>
	.table th, .table td {
		padding: 8px;
		line-height: 20px;
		text-align: left;
	  vertical-align:middle;
		border-top: 1px solid #ddd;
	}
	#package{ width:1300px; margin: 49px auto 0 auto; }

</style>
<div id="package">
<table id="listTable" class="table table-bordered table-hover dataTable table-striped" style="position:fixed; width:1300px;padding-top:1px; border-bottom:2px solid #999;" >
<tbody>
<tr style="background:#f5f5f5;">
	<th rowspan="2" style="width:64px;">服务项</th>
	<th rowspan="2" style="width:208px;">服务明细</th>
	<?php if(is_array($groups)): $i = 0; $__LIST__ = $groups;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><th rowspan="2" style="width:51px;"><?php if($i == $count): endif; echo ($g["name"]); ?></th><?php endforeach; endif; else: echo "" ;endif; ?>
	<th colspan="8" style="text-align:center;">行业版</th>
	<th rowspan="2">加盟版</th>
	<th rowspan="2" style="width:20px;padding:6px; ">订阅号</th>
	<th rowspan="2" style="width:20px;padding:6px;">服务号</th>
	<th rowspan="2" style="width:19px;padding:6px;">认证服务号</th>
</tr>
<tr style="background:#f5f5f5;border-bottom:1px solid #bdbdbd;" >
	<th style="width:60px;">微医疗</th>
	<th style="width:60px;">微酒店</th>
	<th style="width:60px;">微餐饮</th>
	<th style="width:59px;">微汽车</th>
	<th style="width:59px;">微房产</th>
	<th style="width:59px;">微生活</th>
	<th style="width:59px;">微商城</th>
</tr>
</table>
<table id="listTable" class="table table-bordered table-hover dataTable table-striped" style="padding-top:113px;" >
<tbody>
<tr>
	<td style="width:64px;">VIP价格</td>
	<td style="width:208px;" >VIP只是流量套餐！</td>
	<?php if(is_array($prices)): $i = 0; $__LIST__ = $prices;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td style="width:51px;"><?php if($i == $count): endif; echo ($g); ?>元 / 月</td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td style="width:60px;">不限</td>
	<td style="width:60px;">不限</td>
	<td style="width:60px;">不限</td>
	<td style="width:59px;">不限</td>
	<td style="width:59px;">不限</td>
	<td style="width:59px;">不限</td>
	<td style="width:59px;">不限</td>
	<td style="width:52px;">不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>

<tr >
	<td>公众号</td>
	<td>允许创建公众号数量</td>
	<?php if(is_array($wechatNums)): $i = 0; $__LIST__ = $wechatNums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class="norightborder"<?php endif; ?>><?php echo ($g); ?></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>自定义图文条数</td>
	<td>每个月可以创建的图文回复数量</td>
	<?php if(is_array($diynums)): $i = 0; $__LIST__ = $diynums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class="norightborder"<?php endif; ?>><?php echo ($g); ?></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>请求数</td>
	<td>每个月可以进行多少次回复请求</td>
	<?php if(is_array($connectnums)): $i = 0; $__LIST__ = $connectnums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class="norightborder"<?php endif; ?>><?php echo ($g); ?></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>每月活动创建费次数</td>
	<td>每月允许创建的大转盘等互动活动数量</td>
	<?php if(is_array($activitynums)): $i = 0; $__LIST__ = $activitynums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class="norightborder"<?php endif; ?>><?php echo ($g); ?></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>每月会员卡开卡数量</td>
	<td>每个月允许创建多少张会员卡提供给会员领取</td>
	<?php if(is_array($create_card_nums)): $i = 0; $__LIST__ = $create_card_nums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): endif; ?>><?php echo ($g); ?></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>版权信息</td>
	<td>显示<?php echo ($f_siteName); ?>版权</td>
    <?php if(is_array($copyrights)): $i = 0; $__LIST__ = $copyrights;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class="norightborder"<?php endif; ?>><?php if($g): ?>无<?php else: ?>有<?php endif; ?></td><?php endforeach; endif; else: echo "" ;endif; ?>	
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<tr>
	<td>购买VIP套餐</td>
	<td>简单购买流程提醒</td>
	<?php if(is_array($create_card_nums)): $i = 0; $__LIST__ = $create_card_nums;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$g): $mod = ($i % 2 );++$i;?><td <?php if($i == $count): ?>class=""<?php endif; ?>><a  href="<?php echo U('User/Alipay/index',array('gid'=>0));?>"><em>充值</em></a></td><?php endforeach; endif; else: echo "" ;endif; ?>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr>
<?php if(is_array($funs)): $i = 0; $__LIST__ = $funs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$f): $mod = ($i % 2 );++$i;?><tr>

    <td><?php echo ($f["name"]); ?></td>
	<td><?php echo ($f["info"]); ?></td>
<?php  if ($f['access']){ $i=1; foreach ($f['access'] as $v){ ?>
    <td class="<?php if ($v){echo 'checked';}else{echo 'error';} if ($i==$count){echo ' norightborder';}?>"></td>
 <?php  $i++; } } ?>

	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>不限</td>
	<td>√</td>
	<td>√</td>
	<td>√</td>
</tr><?php endforeach; endif; else: echo "" ;endif; ?>
</tbody></table>

</div>
<!--QQ咨询-->
<script type="text/javascript">try{Dd('webpage_6').className='left_menu_on';}catch(e){}</script>
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