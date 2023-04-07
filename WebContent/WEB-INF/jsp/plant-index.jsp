<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>花草大全|花的图片 - 最全的花的图片及名称大全及花草图片 - 花草网</title>
<meta content="花草,花的图片,花草大全,花草图片及名称大全,花草图片大全,花草养殖方法大全,花草种植方法大全"
	name="keywords" />
<meta
	content="花草网花草大全频道，为广大的花友花痴们提供完善的花草大全及花的图片，为花友们收集整理花草图片及名称大全及花的图片，包括：花的图片、花草图片大全、室内花草图片大全、盆景花草图片大全、园艺花草大全、多肉植物花草图片大全、花草养殖方法大全、花草种植方法大全、花草知识大全、花草栽培技术大全、绿色植物养护大全、花草栽培技术大全等各类花草信息。这里是花儿成长的地方，它们多姿多彩各有特色，每一种花草都有它独特的美，它们让生活变成绿色！"
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css_1.css" rel="stylesheet" type="text/css" />
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
		<div class="logo" title="花草网">
			<a title="花草网(花草网)" href="index.form">花草网</a>
		</div>

		<!-- nav -->
		<ul class="nav">
			<li><a href="index.form" target="_self">首页</a></li>
			<li class="focus"><a href="plant-index.form" target="_self">花草</a></li>
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
	<div class="main">

		<!-- catelists -->
		<div class="catelists">
			<ul class="leibie">
				<h2 class="title " title="花草类别">花草类别</h2>
				<li><a onclick="searchPlantByPlantType('趣味类')" class="a "
					title="趣味类花草" target="_self">趣味类</a></li>
				<li><a onclick="searchPlantByPlantType('芳香类')" class="a "
					title="芳香类花草" target="_self">芳香类</a></li>
				<li><a onclick="searchPlantByPlantType('观果类')" class="a "
					title="观果类花草" target="_self">观果类</a></li>
				<li><a onclick="searchPlantByPlantType('观花类')" class="a "
					title="观花类花草" target="_self">观花类</a></li>
				<li><a onclick="searchPlantByPlantType('观叶类')" class="a "
					title="观叶类花草" target="_self">观叶类</a></li>
			</ul>
			<ul class="gongneng">
				<h2 class="title " title="花草功能">花草功能</h2>
				<li><a onclick="searchPlantByPlantType('观赏')" class="a "
					title="观赏花草" target="_self">观赏</a></li>
				<li><a onclick="searchPlantByPlantType('净化空气')" class="a "
					title="净化空气花草" target="_self">净化空气</a></li>
				<li><a onclick="searchPlantByPlantType('吸甲醛')" class="a "
					title="吸甲醛花草" target="_self">吸甲醛</a></li>
				<li><a onclick="searchPlantByPlantType('防辐射')" class="a "
					title="防辐射花草" target="_self">防辐射</a></li>
			</ul>
			<ul class="huanjing">
				<h2 class="title " title="应用环境">应用环境</h2>
				<li><a onclick="searchPlantByPlantType('阳台')" class="a "
					title="阳台花草" target="_self">阳台</a></li>
				<li><a onclick="searchPlantByPlantType('窗台')" class="a "
					title="窗台花草" target="_self">窗台</a></li>
				<li><a onclick="searchPlantByPlantType('庭院')" class="a "
					title="庭院花草" target="_self">庭院</a></li>
				<li><a onclick="searchPlantByPlantType('楼顶')" class="a "
					title="楼顶花草" target="_self">楼顶</a></li>
			</ul>
			<ul class="huaqi">
				<h2 class="title " title="盛花期 / 习性">盛花期 / 习性</h2>
				<li><a onclick="searchPlantByPlantType('春季')" class="a "
					title="春季花草" target="_self">春季</a></li>
				<li><a onclick="searchPlantByPlantType('夏季')" class="a "
					title="夏季花草" target="_self">夏季</a></li>
				<li><a onclick="searchPlantByPlantType('秋季')" class="a "
					title="秋季花草" target="_self">秋季</a></li>
				<li><a onclick="searchPlantByPlantType('冬季')" class="a "
					title="冬季花草" target="_self">冬季</a></li>
			</ul>
			<ul class="nandu">
				<h2 class="title " title="养护难度">养护难度</h2>
				<li><a onclick="searchPlantByPlantType('容易养殖')" class="a "
					title="容易养殖花草" target="_self">容易养殖</a></li>
				<li><a onclick="searchPlantByPlantType('留心养殖')" class="a "
					title="留心养殖花草" target="_self">留心养殖</a></li>
				<li><a onclick="searchPlantByPlantType('精心养护')" class="a "
					title="精心养护花草" target="_self">精心养护</a></li>
				<li><a onclick="searchPlantByPlantType('专业养护')" class="a "
					title="专业养护花草" target="_self">专业养护</a></li>
			</ul>
		</div>

		<!-- tagtips -->
		<div id="PromptTips" class="tagtips">
			<h1 class="title" title="花草网花草大全">花草大全</h1>
			<i title="花草大全图片及名称" class="ico">花草大全图片及名称</i>
			<div class="cont shadow">
				<strong>花草大全</strong><br /> <br />
				通俗地讲，“花”是植物的繁殖器官，是指姿态优美、色彩鲜艳、气味香馥的观赏植物，“卉”是草的总称。习惯上往往把有观赏价值的灌木和可以盆栽的小乔木包括在内，统称为“花草”。<br />
				花草网为你收集花草图片及名称大全，包括：花草图片大全、花草图片及名称、室内花草图片大全、盆景花草图片大全、多肉植物花草图片大全、花草知识大全、园艺花草大全、阳台花草大全、窗台花草大全、客厅花草大全、办公桌花草大全、庭院花草大全、卧室花草大全、茶几花草大全、书房花草大全、能吸收室内毒气的花草品种大全、及各类植物的种植知识、花草养殖方法等各类花草信息。<br />
				<br /> 花开花又落，春去春又来，<br /> 也许，你曾与那朵花相遇，可是你却叫不出它的名字；<br />
				也许，你曾听到过一朵花的名字，可是你却想不起它的模样；<br /> 也许，翘首，凝眸枝头的那一抹嫣红，花依然盛开，可是你却还在等待；<br />
				也许，春的到来，只为种下一片花海，可是你却为不知花名而继续着无奈，舍不得离开；<br /> 也许...<br />
				还在想，那些年我们一起寻找的花草图片及名称大全吗；<br /> 还在想，你拍的花草图片上那朵墙角独自开的花永不褪去的容颜吗；<br />
				还在想，曾经去花草园却因丝毫不懂绿色植物养护大全及各类植物的种植知识而对别人羡慕不已吗；<br />
				还在想，三月，陌上花开，姹紫嫣红，双燕斜飞，绿竹萧疏，掩映着几树桃花。放眼望去，一片片嫩绿，一点点粉红，一簇簇灿黄，瞬间晕染成一幅水墨画卷。却不知花如何开，叶如何来吗；<br />
				还在想...<br /> 来花草网吧，这里为你展现万千花草图片、花草名称大全、花草养殖方法及花草养护知识大全，让你感受又一个春的到来。<br />
				<br />
				以下是花草网为你提供的花草内容大全和花草图片大全，让你认识更多的趣味类花草、芳香类花草、观果类花草、观花类花草、观叶类花草、节庆类花草、水培类花草等各类花草信息。<br />
				<br /> 花草网是你学习花草栽培大全和了解花草图片及名称大全的好助手！！！
			</div>
		</div>

		<!-- imglist -->
		<ul class="imglist">

			<li class="shadow">
				<dl class="cate cate_top">
					<dt>
						<h2 title="最新花草">最新花草</h2>
					</dt>
					<dd>
						<c:forEach items="${newPlantLists}" var="newPlantList"
							varStatus="status">
							<c:if test="${newPlantList.plantName!='' and status.index<20}">
								<a href="plant-detail.form?plantID=${newPlantList.plantID}"
									title="${newPlantList.plantName}">${newPlantList.plantName}</a>
							</c:if>
						</c:forEach>
					</dd>
				</dl>
				<dl class="cate">
					<dt>
						<h2 title="热门花草排行榜">热门花草排行榜</h2>
					</dt>
					<dd>
						<c:forEach items="${heatPlantLists}" var="heatPlantList"
							varStatus="status">
							<c:if test="${heatPlantList.plantName!='' and status.index<20}">
								<a href="plant-detail.form?plantID=${heatPlantList.plantID}"
									title="${heatPlantList.plantName}">${heatPlantList.plantName}</a>
							</c:if>
						</c:forEach>
					</dd>
				</dl>
			</li>
			<c:forEach items="${colectPlantLists}" var="colectPlantList"
				varStatus="status">
				<c:if test="${colectPlantList.plantName!=''}">
					<li class="shadow" style="height: ${colectPlantList.styleHeight}px">
						<div class="image">
							<a class="img" title="${colectPlantList.plantName}"
								href="plant-detail.form?plantID=${colectPlantList.plantID}">
								<img alt="${colectPlantList.plantName}"
								title="${colectPlantList.plantName}" width="190" height="142"
								class="lazy" src="${colectPlantList.plantImage.plantImagePath}"
								data-original="${colectPlantList.plantImage.plantImagePath}" />
							</a> <span class="action"><font>${colectPlantList.viewTimes}人气</font><i></i></span>
						</div> <a class="title" title="${colectPlantList.plantName}"
						href="plant-detail.form?plantID=${colectPlantList.plantID}">${colectPlantList.plantName}</a>
						<label class="label">别名：${colectPlantList.plantName}</label>
						<p class="desc">${fn:substring(colectPlantList.plantInfo.plantIntroduce, 0, 14)}...</p>
					</li>
				</c:if>
			</c:forEach>
		</ul>


	</div>

	<script src="js/jquery.masonry.min.js" type="text/javascript"></script>
	<script type="text/javascript" language="javascript">
		$(function() {
			//瀑布流
			var $container = $('.imglist');
			$container.masonry({
				itemSelector : '.shadow'
			});
			//人气
			$('.imglist li').hover(function() {
				$(this).find('span.action').stop().animate({
					'bottom' : 0
				}, 300);
			}, function() {
				$(this).find('span.action').stop().animate({
					'bottom' : '-30px'
				}, 300);
			});
			//提示
			$("#PromptTips i.ico").hover(function() {
				$("#PromptTips div.cont").show();
				clearTimeout(PromptTipsTimes);
			}, function() {
				PromptTipsTimes = setTimeout(function() {
					$("#PromptTips div.cont").hide();
				}, 200);
			});
			$("#PromptTips div.cont").hover(function() {
				clearTimeout(PromptTipsTimes);
				$(this).show();
			}, function() {
				$(this).hide();
			});
			$("img.lazy").lazyload({
				failurelimit : 10,
				effect : "fadeIn"
			});
		});
	</script>
	<!--Baidu-->
	<div
		style="top: 441px; left: 50%; margin-left: 242px; padding-left: 6px; position: fixed; background-color: #F4F0EC;"
		id="bdshare"></div>
	<!--Baidu-->


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

	<!-- 查找花草 -->
	<script type="text/javascript">
		function searchPlantByPlantType(searchStr) {
			window.location.href = 'plant-index.form?plantType='
					+ encodeURIComponent(searchStr);
		}
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