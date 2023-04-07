<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${plantList.plantName}_${plantList.plantName}的养殖方法/${plantList.plantName}的养护知识
	- 花草网</title>
<meta
	content="${plantList.plantName},${plantList.plantName}怎么养,${plantList.plantName}的养殖方法,${plantList.plantName}的养殖方法和注意事项,${plantList.plantName}的养殖技巧,${plantList.plantName}的养护知识,${plantList.plantName}的种植知识大全"
	name="keywords" />
<meta
	content="${plantList.plantName}是松科${plantList.plantName}属植物，常绿乔木，树冠尖塔形，大枝平展，小枝略下垂。叶针形，长8－60厘米，质硬，灰绿色或银灰色，在长枝上散生，短枝上簇生。10-11月开花。球果翌年成熟，椭圆状卵形，熟时赤褐色。产于亚洲西部、喜马拉雅山西部和非洲，地中海沿岸，中国只有一种喜玛拉雅${plantList.plantName}，分布于西藏南部及印度和阿富汗。分布于阿富汗至印度，海拔1300-3300米地带，中国多地有栽培。

${plantList.plantName}原产喜马拉雅山，中国西藏..."
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css_2.css" rel="stylesheet" type="text/css" />
<link href="css/css_4.css" rel="stylesheet" type="text/css" />
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
<script type="application/ld+json">{ "@context":"https://ziyuan.baidu.com/contexts/cambrian.jsonld","appid":"1603070842033558","@id":"http://www.aihuhua.com/huahui/xuesong.html","title":"${plantList.plantName}","pubDate":"2014-05-05T09:54:03","images":[http://pic1.huashichang.com/2014/0506/09/5368421fa1f18_140_120.png]}</script>
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
		
		<input id="loginFlag" value="${sessionScope.user}"
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
	<div class="main" id="main-box">

		<!-- content -->
		<div class="content">

			<!-- infodata -->
			<div class="infodata">
				<div class="img">
					<img width="140" alt="${plantList.plantName}"
						title="${plantList.plantName}"
						src="${plantList.plantImage.plantImagePath}" /> <a
						href="javascript:void(0);"
						onclick="collectPlant(${plantList.plantID},${plantList.plantCollectNumber})"
						class="action" rel="add"> <c:choose>
							<c:when test="${IsPlantCollected==false}">
								<i id="collectButton" class="fav">收藏 (<label
									class='count_flowers_841' id="collectNumber">${plantList.plantCollectNumber}</label>)
								</i>
							</c:when>
							<c:otherwise>
								<i id="collectButton" class="fav current">取消收藏 (<label
									class='count_flowers_841' id="collectNumber">${plantList.plantCollectNumber}</label>)
								</i>
							</c:otherwise>
						</c:choose>

					</a>
				</div>
				<div class="cont">
					<h1 class="name" title="${plantList.plantName}">
						${plantList.plantName}<font class="eng">${plantList.plantEnglishName}</font>
					</h1>
					<label class="cate">别名：${plantList.plantName}</label> <label
						class="cate">分类：${plantList.plantInfo.plantClass}</label> <label
						class="cate">科属：${plantList.plantInfo.plantDepart}</label> <label
						class="cate">盛花期：${plantList.plantInfo.plantFlowering}</label>
					<p class="desc">${fn:substring(plantList.plantInfo.plantIntroduce, 0, 250)}...</p>
				</div>
			</div>

			<!-- tablist -->
			<div class="catetab">

				<h2 title="${plantList.plantName}的基本信息">
					<a class="on" title="${plantList.plantName}的基本信息"
						href="http://www.aihuhua.com/huahui/xuesong.html">${plantList.plantName}的基本信息</a>
				</h2>
				<!-- <h2 title="有关${plantList.plantName}的知识常识">
					<a title="有关${plantList.plantName}的知识常识"
						href="http://www.aihuhua.com/zhishi/xuesong/">${plantList.plantName}的相关文章</a>
				</h2>-->
			</div>

			<!-- options -->
			<dl id="doc-content" class="options doc-section">
				<dt>
					<h3 class="title" title="${plantList.plantName}的介绍">
						<a title="${plantList.plantName}的介绍" href="javascript:void(0)">${plantList.plantName}的介绍</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantIntroduce}</dd>
			</dl>

			<dl class="options" id="doc-9b51f49757644682f44c681fd327fe9b">
				<dt>
					<h3 class="title" title="${plantList.plantName}的形态特征">
						<a title="${plantList.plantName}的形态特征" href="javascript:void(0)">${plantList.plantName}的形态特征</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantFeature}</dd>
			</dl>
			<dl class="options" id="doc-2353e0b8be52db129e7205b21a5b11d2">
				<dt>
					<h3 class="title" title="${plantList.plantName}的生态习性">
						<a title="${plantList.plantName}的生态习性" href="javascript:void(0)">${plantList.plantName}的生态习性</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantHabit}</dd>
			</dl>
			<dl class="options" id="doc-10003c15d099f1513ce250a3bd90e396">
				<dt>
					<h3 class="title" title="${plantList.plantName}的栽培技术">
						<a title="${plantList.plantName}的栽培技术" href="javascript:void(0)">${plantList.plantName}的栽培技术</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantTechnique}</dd>
			</dl>
			<dl class="options" id="doc-726d618c3deadfb81dced16f6a3e3789">
				<dt>
					<h3 class="title" title="${plantList.plantName}的繁殖方式">
						<a title="${plantList.plantName}的繁殖方式" href="javascript:void(0)">${plantList.plantName}的繁殖方式</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantBreed}</dd>
			</dl>
			<dl class="options" id="doc-065d1a1e51e6605ecaf7c48848babaaa">
				<dt>
					<h3 class="title" title="${plantList.plantName}的病害防治">
						<a title="${plantList.plantName}的病害防治" href="javascript:void(0)">${plantList.plantName}的病害防治</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantPestControl}</dd>
			</dl>
			<dl class="options" id="doc-0d08fe00291cf8027e5d5def9e0a5198">
				<dt>
					<h3 class="title" title="${plantList.plantName}的分布区域">
						<a title="${plantList.plantName}的分布区域" href="javascript:void(0)">${plantList.plantName}的分布区域</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantArea}</dd>
			</dl>
			<dl class="options" id="doc-87a8919a6722cb4271e60253f1395c31">
				<dt>
					<h3 class="title" title="${plantList.plantName}的作用用途">
						<a title="${plantList.plantName}的作用用途" href="javascript:void(0)">${plantList.plantName}的作用用途</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantFunction}</dd>
			</dl>
			<dl class="options" id="doc-fe9b11d324ed6e42c917a0b0d30ea651">
				<dt>
					<h3 class="title" title="${plantList.plantName}的花语">
						<a title="${plantList.plantName}的花语" href="javascript:void(0)">${plantList.plantName}的花语</a>
					</h3>
				</dt>
				<dd>${plantList.plantInfo.plantLanguage}</dd>
			</dl>
			<div class="desctext">
				以上是花草网为你提供的有关“${plantList.plantName}”的花草数据，包括${plantList.plantName}的形态特征、${plantList.plantName}的生态习性、${plantList.plantName}的栽培技术、${plantList.plantName}的繁殖方式、${plantList.plantName}的病害防治、${plantList.plantName}的分布区域、${plantList.plantName}的作用用途、${plantList.plantName}的花语、${plantList.plantName}的介绍，你还可以查看花草网更多
				<a href="index.form" title="花草">花草</a> 信息
			</div>
		</div>



		<!-- sidebar -->
		<div class="sidebar">
			<!-- full -->
			<a class="full" title="花草大全" href="plant-index.form">花草大全&gt;&gt;</a>

			<!-- partition -->
			<div class="partition">


				<h3 class="title" title="商品信息">
					<a title="商品信息" href="">商品信息</a>
				</h3>

				<c:forEach items="${plantDetailsLists}" var="plantDetailsList"
					varStatus="status">
					<div class="data cat_list">
						<h4 class="name" title="${plantDetailsList.plantDescribe}">
							<em class="ico"></em><a title="${plantDetailsList.plantDescribe}"
								href="">${plantDetailsList.plantDescribe}</a>
						</h4>
						<div class="list" style="height: auto">
							<img style="width: 100px; height: 120px" title="商品图片" alt="商品图片"
								src="${plantDetailsList.plantDetailsImage.plantDetailsImagePath}" />
							<label class="info"><strong class="title"><a
									href="javascript:void(0);"
									onclick="reduceNumber(${status.index})">减</a><input type="text"
									size="1px" value="1" id="${status.index}Number" disabled><a
									href="javascript:void(0);"
									onclick="increaseNumber(${status.index})">增</a><a
									title="养花知识主题站"
									onclick="addShoppingCart(${status.index},${plantDetailsList.plantDetailsID},${plantDetailsList.plantPrice},${plantDetailsList.plantStock},'${plantDetailsList.plantDescribe}')"
									href="javascript:void(0);">加购</a></strong><br>
								<p class="desc">
									<a>详情</a>:${plantDetailsList.plantDetailsImage.plantDetailsImageDescribe}
								</p> </label>
							<p>
								<a>价格</a>:<strong>￥${plantDetailsList.plantPrice}</strong>&nbsp;&nbsp;
								|&nbsp;&nbsp;<a>库存</a>:<strong>${plantDetailsList.plantStock}</strong>
								&nbsp;&nbsp; |&nbsp;&nbsp; <a>销量</a>:<strong>${plantDetailsList.plantSales}</strong>
							</p>

						</div>
					</div>
				</c:forEach>

				<script language="javascript" type="text/javascript">
					$(function() {
						$("div.cat_list")
								.each(
										function() {
											$(this)
													.find('em.ico')
													.click(
															function() {
																$(this)
																		.parent()
																		.parent()
																		.toggleClass(
																				'current');
															});
										});
					});
				</script>

			</div>
		</div>

	</div>


	<div class="SideCateLine SideCateLine_On" id="sideBox">
		<!-- label -->
		<div class="label">
			<a class="text" rel="nofollow" href="javascript:void(0);"
				title="${plantList.plantName}花草目录" onclick="showSide()"> <font>花草目录</font>
				<i class="ico"></i>
			</a>
		</div>

		<!-- listing -->
		<div class="listing">
			<a id="sideBox_topbut" class="top" rel="nofollow"
				href="javascript:void(0);" id="directory-prev"></a> <strong
				class="title" title="${plantList.plantName}">${plantList.plantName}</strong>
			<div class="list" id="sideBox_listing">
				<div class="docs-nav cont" id="sideBox_listbox">
					<!-- 25px -->
					<a rel="nofollow" class="link" title="${plantList.plantName}介绍"
						href="#doc-content">介绍</a> <a rel="nofollow" class="link"
						title="${plantList.plantName}形态特征"
						href="#doc-9b51f49757644682f44c681fd327fe9b">形态特征</a><a
						rel="nofollow" class="link" title="${plantList.plantName}生态习性"
						href="#doc-2353e0b8be52db129e7205b21a5b11d2">生态习性</a><a
						rel="nofollow" class="link" title="${plantList.plantName}栽培技术"
						href="#doc-10003c15d099f1513ce250a3bd90e396">栽培技术</a><a
						rel="nofollow" class="link" title="${plantList.plantName}繁殖方式"
						href="#doc-726d618c3deadfb81dced16f6a3e3789">繁殖方式</a><a
						rel="nofollow" class="link" title="${plantList.plantName}病害防治"
						href="#doc-065d1a1e51e6605ecaf7c48848babaaa">病害防治</a><a
						rel="nofollow" class="link" title="${plantList.plantName}分布区域"
						href="#doc-0d08fe00291cf8027e5d5def9e0a5198">分布区域</a><a
						rel="nofollow" class="link" title="${plantList.plantName}作用用途"
						href="#doc-87a8919a6722cb4271e60253f1395c31">作用用途</a><a
						rel="nofollow" class="link" title="${plantList.plantName}花语"
						href="#doc-fe9b11d324ed6e42c917a0b0d30ea651">花语</a>
				</div>
			</div>
			<a id="sideBox_botbut" class="bot" rel="nofollow"
				href="javascript:void(0);" id="directory-next"></a>
		</div>

	</div>
	<script language="javascript" type="text/javascript">
		function showSide() {
			$("#sideBox").toggleClass('SideCateLine_On');
		}
		(function($) {
			$.fn.cateslide = function(options) {
				$.fn.cateslide.deflunt = {
					effect : 'fade',
					shiftLeng : 0,
					itemLeng : 175,
					shiftAction : 'top',
					OnClass : 'on',
					prevCell : '.prev',
					nextCell : '.next',
					object : '#object'
				};
				var options = $.extend({}, $.fn.cateslide.deflunt, options);
				return this
						.each(function() {
							var object = $(options.object);
							var height = Math
									.abs(object.children('a.link').length
											* options.shiftLeng);
							var doPlay = function() {
								var top = parseInt(object.css('top').replace(
										'px', ''));
								if ((options.shiftAction == 'top' && top < 0)
										|| (options.shiftAction == 'bot' && (Math
												.abs(top) < (height - options.itemLeng)))) {
									top = eval(top
											+ parseInt(options.shiftLeng))
											+ 'px';
									object.stop().animate({
										top : top
									}, 'fast');
								}
							}
							$(this).click(doPlay);
						});
			};
		})(jQuery);
		jQuery('#sideBox_topbut').cateslide({
			shiftAction : 'top',
			shiftLeng : '25',
			object : '#sideBox_listbox'
		});
		jQuery('#sideBox_botbut').cateslide({
			shiftAction : 'bot',
			shiftLeng : '-25',
			object : '#sideBox_listbox'
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
	<script type="text/javascript">
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
		function collectPlant(plantID,collectNumber){
			//先判断用户是否已登录
			if($("#loginFlag").val()==""||$("#loginFlag").val()==null){
				ui.showMessage('请先登录/注册', 1, 1);
				return;
			}
		
		//收藏花草
		if($("#collectButton").attr("class")=="fav"){
		$("#collectButton").removeClass("fav");
		$("#collectButton").addClass("fav current");
		$("#collectButton").html('取消收藏(<label class="count_flowers_841" id="collectNumber">${plantList.plantCollectNumber}</label>)');
		$.ajax({
			url : "collectPlant.form",
			data : {
				plantID : plantID,
				plantCollectNumber : collectNumber+1,
				collectFlag:'收藏'
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				ui.showMessage('收藏成功', 0, 0.2);
			}
		});
		setTimeout(function(){ location.replace(location.href); }, 1000);
		
		//取消收藏花草
		}else if($("#collectButton").attr("class")=="fav current"){
		$("#collectButton").removeClass("fav current");	
		$("#collectButton").addClass("fav");
		$("#collectButton").html('收藏(<label class="count_flowers_841" id="collectNumber">${plantList.plantCollectNumber}</label>)');
		$.ajax({
			url : "collectPlant.form",
			data : {
				plantID : plantID,
				plantCollectNumber : (collectNumber-1)<0?0:(collectNumber-1),
				collectFlag:'取消收藏'
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				ui.showMessage('已取消收藏', 0, 0.2);	
			}
		});
		setTimeout(function(){ location.replace(location.href); }, 1000);
		}
	}
	
	</script>

	<script type="text/javascript">
	function reduceNumber(index){
		//获取数量框中的值进行更改
		if(parseInt($("#"+index+"Number").val())-1>0){
		$("#"+index+"Number").val(parseInt($("#"+index+"Number").val())-1);
		}	
	}
	
	function increaseNumber(index){
		//获取数量框中的值进行更改
		$("#"+index+"Number").val(parseInt($("#"+index+"Number").val())+1);
	}
	
	function addShoppingCart(index,plantDetailsID,plantPrice,plantStock,plantDescribe){
		var plantNumber=parseInt($("#"+index+"Number").val());
		
		//先判断用户是否已登录
		if($("#loginFlag").val()==""||$("#loginFlag").val()==null){
			ui.showMessage('请先登录/注册', 1, 1);
			return;
		}
		
		//判断库存是否充足
		if(plantNumber>plantStock){
			ui.showMessage('库存不足，添加失败', 1, 1);
			return;
		}
		
		//加入购物车
		$.ajax({
			url : "addShoppingCart.form",
			data : {
				plantDetailsID : plantDetailsID,
				shoppingCartAmount : plantNumber*plantPrice,
				shoppingCartNumber : plantNumber,
				plantStock:plantStock
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				ui.showMessage('已成功添加'+plantNumber+'件'+plantDescribe, 0, 0.2);	
            }
		});
		
		setTimeout(function(){ location.replace(location.href); }, 1000);
	
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