<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>花草网 - 专注花草种植及花草养殖技术的花草网站(花草网) - 花草网</title>
<meta content="花草网,花草种植,花草,花草养殖,花草网站,花草养殖网,花" name="keywords" />
<meta
	content="花草网为养花爱好者，分享全面的花草信息，提供专业的花草养殖技术、花草养殖知识及花草市场信息，花草网拥有家庭养花常识、花草繁殖、花草病虫害防治、花草种植等全面的花草养殖知识及花草种植技术，给花友们更准确的花草种类、更全面的花草名称及花草图片库，是花痴们热爱的花草网站，也是护花使者们理想的花草园。花草网(花草网www.aihuhua.com)是花草成长的地方，让生活因花草变成绿色！"
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome.css">

<script>
	var SITE_URL = 'http://www.aihuhua.com';
	var UPLOAD_URL = '/data/upload';
	var THEME_URL = 'http://static.huashichang.com';
	var APPNAME = 'flowers';
	var MID = '0';
	var UID = '0';
	var initNums = '140';
	var SYS_VERSION = '201812211030';
	var LANG = new Array();
</script>
<script src="js/public_zh-cn.js"></script>
<script src="js/js.js"></script>
<!--{1:Addons::hook('public_head',array('uid'=>$uid))}-->
</head>
<body>
	<div class="header">
		<!-- logo -->
		<h1 class="logo" title="花草网">
			<a title="花草网(花草网)" href="index.form">花草网</a>
		</h1>

		<!-- nav -->
		<ul class="nav">
			<li class="focus"><a href="index.form" target="_self">首页</a></li>
			<li><a href="plant-index.form" target="_self">花草</a></li>
			<li><a href="article-index.form" target="_self">文章</a></li>
			<li><a href="image-index.form" target="_self">图库</a></li>
		</ul>

		<!-- search -->
		<div class="search">
			<input type="text" class="input" id="search_input" autocomplete="off"
				lang="zh-CN" onblur="if(!this.value){this.value='搜索花草名';}"
				onfocus="if(this.value=='搜索花草名'){this.value='';}"
				onkeypress="if(getLength($('#search_input').val()) && $('#search_input').val()!=='搜索花草名' && event.keyCode==13){ $('#search_submit').click(); }"
				value="搜索花草名" /> <input type="button" class="submit"
				id="search_submit" value=""
				onclick="if(getLength($('#search_input').val()) && $('#search_input').val()!=='搜索花草名'){ document.location.href = 'plant-index.form?plantName='+$('#search_input').val(); return false; }else{ $('#search_input').focus(); }" />
		</div>

		<!-- publish -->
		<div class="publish">
			<a class="add" 
				title="发布文章" onclick="checkAddArtical()">发布</a>
		</div>
				<input id="loginFlag" value="${sessionScope.user}"
			style="display: none" />
			<input id="userType" value="${sessionScope.user.userType}"
			style="display: none" />

		<!-- login -->
		<c:choose>
			<c:when test="${sessionScope.user==null}">
				<div class="login">
					<a title="登录花草网" rel="nofollow" href="login.jsp">登录</a> <a
						title="注册花草网用户" rel="nofollow" href="register.jsp">注册</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="login">
					<a title="用户类型" rel="nofollow" href="user-index.form"> <c:choose>
							<c:when test="${sessionScope.user.userType=='普通用户'}">
								<i class="fa fa-user-o"></i>
							</c:when>
							<c:otherwise>
								<i class="fa fa-user"></i>
							</c:otherwise>
						</c:choose>
					</a> <a title="用户名回显" rel="nofollow" style="margin-left: -1px"
						href="user-index.form">${sessionScope.user.userName}</a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- main -->
	<div class="main">
		<!-- content -->
		<div class="content">
			<!-- focus -->
			<div class="focus">
				<div id="ad_1" class="flashNews" style="width: 650px;">
					<div>
						<p>
							<a href="plant-index.form"><img width="650" height="220"
								src="picture/563b72e9aa35f.jpg" /></a>
						</p>
					</div>
					<div style="display: none;">
						<p>
							<a href="article-index.form"><img width="650" height="220"
								src="picture/54faf92a6b787.jpg" /></a>
						</p>
					</div>
					<div style="display: none;">
						<p>
							<a href="image-index.form"><img width="650" height="220"
								src="picture/563b797d5a504.jpg" /></a>
						</p>
					</div>
					<ul></ul>
					<script type="text/javascript">
						new fSwitchPic("ad_1");
					</script>
				</div>
			</div>

			<!-- hotlist -->
			<div class="hotlist">
				<h2 title="百花齐放" class="title">百花齐放</h2>
				<ul class="list">
					<c:forEach items="${indexPlantLists}" var="indexPlantList"
						varStatus="status">
						<c:if test="${indexPlantList.plantName!='' and status.index<6}">
							<li class="shadow"><a
								href="plant-detail.form?plantID=${indexPlantList.plantID}"
								title="${indexPlantList.plantName}" class="img"><img
									width="200" class="lazy"
									src="${indexPlantList.plantImage.plantImagePath}"
									title="${indexPlantList.plantName}"
									alt="${indexPlantList.plantImage.plantImageDescribe}" /></a> <a
								href="plant-detail.form?plantID=${indexPlantList.plantID}"
								title="${indexPlantList.plantName}" class="t">${indexPlantList.plantName}</a>
								<span class="desc">${indexPlantList.plantInfo.plantIntroduce}</span>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>

		</div>

		<!-- sidebar -->
		<div class="sidebar">

			<!-- logins -->
			<c:choose>
				<c:when test="${sessionScope.user==null}">
					<div class="logins">
						<div class="title">花痴都在这里，赶紧加入吧！</div>
						<a href="register.jsp" class="register" title="注册花草网用户"
							rel="nofollow">马上加入</a> <span class="account">已有账号，<a
							href="login.jsp
					" title="登录花草网用户中心" rel="nofollow">从这里登录&gt;&gt;</a></span>
					</div>
				</c:when>
				<c:otherwise>
					<div class="logins">
						<c:choose>
							<c:when test="${sessionScope.user.userType=='普通用户'}">
								<div class="title"
									style="width: 80px; height: 80px; border-radius: 50%; overflow: hidden; margin-left: 83px; margin-top: 20px; margin-bottom: 10px; border: 5px solid #ddd; background: #fff;">
									<a href="user-index.form"><img
										style="width: 80px; height: 80px"
										src="${sessionScope.user.userAvatar}"></img></a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="title"
									style="width: 80px; height: 80px; border-radius: 50%; overflow: hidden; margin-left: 83px; margin-top: 20px; margin-bottom: 10px; border: 5px solid #FFFF88; background: #FFFF66;">
									<a href="user-index.form"><img
										style="width: 80px; height: 80px"
										src="${sessionScope.user.userAvatar}"></img></a>
								</div>
							</c:otherwise>
						</c:choose>
						<a href="user-index.form" class="register" title="用户昵称"
							rel="nofollow">${sessionScope.user.userName}</a> <span
							class="account">切换账号，<a href="loginOut.form"
							title="登出花草网用户中心" rel="nofollow">退出登录&gt;&gt;</a></span>
					</div>
				</c:otherwise>
			</c:choose>

			<!-- season -->
			<div class="season">
				<h2 class="title" title="春暖花开-春季时节花草">
					春暖花开 <a href="plant-index.form" class="more" title="更多春季时节花草"
						rel="nofollow">(更多时节花草)</a>
				</h2>
				<ul class="list">
					<c:forEach items="${springPlantLists}" var="springPlantList"
						varStatus="status">
						<c:if test="${springPlantList.plantName!='' and status.index<8}">
							<li><a
								href="plant-detail.form?plantID=${springPlantList.plantID}"
								title="${springPlantList.plantName}" class="img"><img
									src="${springPlantList.plantImage.plantImagePath}"
									alt="${springPlantList.plantName}"
									title="${springPlantList.plantName}" width="55" /></a> <a
								href="plant-detail.form?plantID=${springPlantList.plantID}"
								title="${springPlantList.plantName}" class="t">${springPlantList.plantName}</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>

			<!-- taglist -->
			<div class="taglist">
				<h2 class="title" title="最新花草">
					新花怒放 <a href="plant-index.form" title="更多花草" rel="nofollow"
						class="more">(更多最新花草)</a>
				</h2>
				<div class="list">
					<c:forEach items="${indexPlantLists}" var="indexPlantList"
						varStatus="status">
						<c:if test="${indexPlantList.plantName!='' and status.index<12}">
							<a href='plant-detail.form?plantID=${indexPlantList.plantID}'
								title="${indexPlantList.plantName}">${indexPlantList.plantName}</a>
						</c:if>
					</c:forEach>
				</div>
			</div>

			<!-- focus -->
			<div class="newlist">
				<h2 class="title" title="养花专题">柳巷花街</h2>
				<div class="actfocus">
					<div style="width: 250px; overflow: hidden;">
						<a href="plant-index.form"><img
							src="picture/527e600d7c9ac.jpg" title="乐享健康新鲜空气" alt="乐享健康新鲜空气"
							width="250" height="110" /></a>
						<div class="tip">
							<a href="plant-index.form">家庭小植物盆栽 - 乐享健康新鲜空气</a>
						</div>
					</div>
				</div>
				<div class="actfocus">
					<div style="width: 250px; overflow: hidden;">
						<a href="plant-index.form"><img
							src="picture/5544f1401d0f4.jpg" title="灯泡植物一灯一世界" alt="灯泡植物一灯一世界"
							width="250" height="110" /></a>
						<div class="tip">
							<a href="plant-index.form">掌上灯泡植物 - 一灯一世界</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- baiduk -->
	<div
		style="top: 396px; left: 50%; margin-left: -30px; padding-left: 6px; position: fixed; background-color: #F4F0EC;"
		id="bdshare"></div>

	<script src="js/jquery.bxslider.js"></script>
	<script>
		$(function() {
			$("img.lazy").lazyload({
				threshold : 200,
				effect : "fadeIn"
			});

			$('#cat-bxslider').bxSlider({
				slideWidth : 200,
				minSlides : 3,
				maxSlides : 3,
				auto : true,
				easing : 'swing',
				nextSelector : '#slider-next',
				prevSelector : '#slider-prev',
				pagerCustom : '#bx-pager'
			});
		});
	</script>


	<!-- navigation -->
	<div class="navigation">
		<div class="cont">
			<div class="cate caterec">
				<a href="javascript:void(0);" title="花草网快捷导航" rel="nofollow"
					class="title">快捷<em class="ico"></em></a>
				<ul class="catelist">
					<li><a href="login.jsp" rel="nofollow"> <i><img
								src="picture/icon_app.png" width="16" height="16" />用户网站</i>
					</a></li>
					<li><a href="login.jsp" rel="nofollow" target="_blank"> <i><img
								src="picture/icon_app.png" width="16" height="16" />管理系统</i>
					</a></li>
					<li><a href="" rel="nofollow"><i><img
								src="picture/more.png" width="16" height="16" />更多应用</a></i></li>
				</ul>
			</div>

			<div class="cate" style="margin-left: 160px; display: inline;">
				<a href="javascript:void(0);" rel="nofollow" class="title">特色<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/huahui/lengshuihua.html" title="冷水花花草">冷水花</a><a
						href="/huahui/lvluo.html" title="绿萝花草">绿萝</a><a
						href="/huahui/fenyejueming.html" title="粉叶决明花草">粉叶决明</a><a
						href="/huahui/qizimei.html" title="七姊妹花草">七姊妹</a><a
						href="/huahui/tengbenyueji.html" title="藤本月季花草">藤本月季</a><a
						href="/huahui/shanhuhuafengli.html" title="珊瑚花凤梨花草">珊瑚花凤梨</a><a
						href="/huahui/huangyangshu.html" title="黄杨树花草">黄杨树</a><a
						href="/huahui/ganlan.html" title="橄榄花草">橄榄</a><a
						href="/huahui/bingjiao.html" title="冰娇花草">冰娇</a><a
						href="/huahui/mangjishi.html" title="莽吉柿花草">莽吉柿</a><a
						href="/huahui/hamigua.html" title="哈密瓜花草">哈密瓜</a><a
						href="/huahui/xianggua.html" title="香瓜花草">香瓜</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">类别<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/quwei/" target="_self" title="趣味类花草">趣味类</a><a
						href="/hua/fangxiang/" target="_self" title="芳香类花草">芳香类</a><a
						href="/hua/guanguo/" target="_self" title="观果类花草">观果类</a><a
						href="/hua/guanhua/" target="_self" title="观花类花草">观花类</a><a
						href="/hua/guanye/" target="_self" title="观叶类花草">观叶类</a><a
						href="/hua/guanjing/" target="_self" title="观茎类花草">观茎类</a><a
						href="/hua/jieqing/" target="_self" title="节庆类花草">节庆类</a><a
						href="/hua/chuidiao/" target="_self" title="垂吊类花草">垂吊类</a><a
						href="/hua/guoshu/" target="_self" title="果蔬类花草">果蔬类</a><a
						href="/hua/dibeicaoping/" target="_self" title="地被草坪花草">地被草坪</a><a
						href="/hua/shuipei/" target="_self" title="水培类花草">水培类</a><a
						href="/hua/penzai/" target="_self" title="盆栽类花草">盆栽类</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">功能<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/guanshang/" target="_self" title="观赏花草">观赏</a><a
						href="/hua/jinghuakongqi/" target="_self" title="净化空气花草">净化空气</a><a
						href="/hua/xijiaquan/" target="_self" title="吸甲醛花草">吸甲醛</a><a
						href="/hua/fangfushe/" target="_self" title="防辐射花草">防辐射</a><a
						href="/hua/tishen/" target="_self" title="提神花草">提神</a><a
						href="/hua/shajun/" target="_self" title="杀菌花草">杀菌</a><a
						href="/hua/quwen/" target="_self" title="驱蚊花草">驱蚊</a><a
						href="/hua/yaoyong/" target="_self" title="药用花草">药用</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">环境<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/yangtai/" target="_self" title="阳台花草">阳台</a><a
						href="/hua/chuangtai/" target="_self" title="窗台花草">窗台</a><a
						href="/hua/tingyuan/" target="_self" title="庭院花草">庭院</a><a
						href="/hua/louding/" target="_self" title="楼顶花草">楼顶</a><a
						href="/hua/keting/" target="_self" title="客厅花草">客厅</a><a
						href="/hua/canting/" target="_self" title="餐厅花草">餐厅</a><a
						href="/hua/chaji/" target="_self" title="茶几花草">茶几</a><a
						href="/hua/chufang/" target="_self" title="厨房花草">厨房</a><a
						href="/hua/bangongshi/" target="_self" title="办公室花草">办公室</a><a
						href="/hua/bangongzhuo/" target="_self" title="办公桌花草">办公桌</a><a
						href="/hua/shufang/" target="_self" title="书房花草">书房</a><a
						href="/hua/woshi/" target="_self" title="卧室花草">卧室</a><a
						href="/hua/weishengjian/" target="_self" title="卫生间花草">卫生间</a><a
						href="/hua/yuanlin/" target="_self" title="园林花草">园林</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">花期<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/chunji/" target="_self" title="春季花草">春季</a><a
						href="/hua/xiaji/" target="_self" title="夏季花草">夏季</a><a
						href="/hua/qiuji/" target="_self" title="秋季花草">秋季</a><a
						href="/hua/dongji/" target="_self" title="冬季花草">冬季</a><a
						href="/hua/siji/" target="_self" title="四季花草">四季</a><a
						href="/hua/bukaihua/" target="_self" title="不开花花草">不开花</a><a
						href="/hua/xiyang/" target="_self" title="喜阳花草">喜阳</a><a
						href="/hua/xiyin/" target="_self" title="喜阴花草">喜阴</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">难度<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/rongyi/" target="_self" title="容易养殖花草">容易养殖</a><a
						href="/hua/liuxin/" target="_self" title="留心养殖花草">留心养殖</a><a
						href="/hua/jingxin/" target="_self" title="精心养护花草">精心养护</a><a
						href="/hua/zhuanye/" target="_self" title="专业养护花草">专业养护</a>
				</div>
			</div>

		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('.navigation .cate').mouseover(function() {
				$(this).addClass('cateHover');
				$(this).find('.catelist').show();
			});
			$('.navigation .cate').mouseleave(function() {
				$(this).removeClass('cateHover');
				$(this).find('.catelist').hide();
			});
		});
	</script>




	<!-- footer -->
	<div class="footer">
		<div class="cont">
			<div class="record">
				©2013 花草网 <a href="http://www.beian.miit.gov.cn/">沪ICP备12046703号-5</a>
			</div>

			<div class="tips">
				<a href="index.form" title="花草网">花草网</a>
				这里是花儿成长的地方，聚焦亿万护花使者，同花儿一起茁壮成长！
			</div>

		</div>
	</div>

	<link href="css/02.css" rel="stylesheet" type="text/css" />
	<!--二维码-->
	<div id="webcode" class="webcode" style="bottom: 160px;">
		<dl class="coderedpackage hide">
			<dt>支付宝天天送红包</dt>
			<dd></dd>
		</dl>
		<dl class="codeweixin">
			<dt>- 微信公众号 -</dt>
			<dd></dd>
		</dl>
		<dl class="codeimg">
			<dt>- 官方网站 -</dt>
			<dd></dd>
		</dl>
		<dl class="codeandroid hide" style="display: none;">
			<dt>- 安卓APP -</dt>
			<dd></dd>
		</dl>
	</div>

	<!--统计-->
	<div id="site_analytics_code" style="display: none;">
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?2f9621f6b3c69c2c113bd7255bdaea02";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
	</div>

	<!--分享-->
	<script language="javascript" type="text/javascript">
		(function($) {
			$('#bdshare').width(208);
			$('#bdshare').attr('class', 'bdsharebuttonbox');
			$('#bdshare')
					.html(
							'<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_douban" data-cmd="douban" title="分享到豆瓣网"></a><a href="#" class="bds_huaban" data-cmd="huaban" title="分享到花瓣"></a>');
		})(jQuery);
	</script>
	<script>
		window._bd_share_config = {
			"common" : {
				"bdSnsKey" : {},
				"bdText" : "",
				"bdMini" : "2",
				"bdMiniList" : false,
				"bdPic" : "",
				"bdStyle" : "0",
				"bdSize" : "16"
			},
			"share" : {}
		};
		with (document)
			0[(getElementsByTagName('head')[0] || body)
					.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
					+ ~(-new Date() / 36e5)];
	</script>
	<script type="text/javascript">
	   function checkAddArtical(){
		 //先判断用户是否已登录，是否是会员
		if($("#loginFlag").val()==""||$("#loginFlag").val()==null){
			ui.showMessage('请先登录/注册', 1, 1);
			return;
		}else if($("#userType").val()!='会员'){
			ui.showMessage('您还不是会员,无法发布文章', 1, 2);
			return;
		}
		 
		 window.location.href="artical-add.form";
		   
		   
	   }
	
	</script>

</body>
</html>
