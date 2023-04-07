<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${articleList.articleTitle}_原创- 花草网</title>
<meta
	content="刚砍头的多肉苗，只需要四步就能快速生根！,多肉植物馆之刚砍头的多肉苗，只需要四步就能快速生根！,文章网刚砍头的多肉苗，只需要四步就能快速生根！"
	name="keywords" />
<meta
	content="刚砍头的多肉苗，只需要四步就能快速生根！:经历过一个炎热的夏季，不少多肉植物出现了徒长的现象，所以到了秋季，应该是重新塑形的时候了，那就是砍头处理，砍头苗如何顺利发根呢？其实多肉植物砍头苗想要顺利且快速发根，只需做好4步即可，我们一起来看一下。刚砍头的多肉苗，只需要四步就能快速生根！1、晾多肉植物砍头以后会有切面伤口，我们首先要做的就是将伤口晾干“结痂”，注意，砍头苗晾干期间不要直晒太阳，只需阴凉通风处即可，光照直晒容易把伤口晒焦，在晾的时候把茎干截面朝上，叶面朝下平放即可。刚砍头的多肉苗，只需要四步就能快速生根！2、土在多肉伤口愈合期间，我们可以着手配发根土，用来发根的土壤不需要太多颗粒，大概一半颗粒一半营养土就可以了。颗粒土可以使..."
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css_5.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/articleCommon.css" />
<script>
	var SITE_URL = 'http://www.aihuhua.com';
	var UPLOAD_URL = '/data/upload';
	var THEME_URL = 'http://static.huashichang.com';
	var APPNAME = 'weiba';
	var MID = '0';
	var UID = '0';
	var initNums = '140';
	var SYS_VERSION = '201812211030';
	var LANG = new Array();
</script>
<script src="js/public_zh-cn.js"></script>
<script src="js/js.js"></script>
<link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--{1:Addons::hook('public_head',array('uid'=>$uid))}-->
<script type="application/ld+json">{ "@context":"https://ziyuan.baidu.com/contexts/cambrian.jsonld","appid":"1603070842033558","@id":"http://www.aihuhua.com/wenzhang/yanghua2g0.html","title":"刚砍头的多肉苗，只需要四步就能快速生根！","pubDate":"2020-04-27T10:15:45","images":[http://pic1.huashichang.com/2020/0427/10/5ea63f891cc06.jpg,http://pic1.huashichang.com/2020/0427/10/5ea63f943cc04.jpg,http://pic1.huashichang.com/2020/0427/10/5ea63f9cd4b5f.jpg]}</script>
</head>
<body>
	<div class="header">
		<!-- logo -->
		<h1 class="logo" title="花草网">
			<a title="花草网(花草网)" href="index.form">花草网</a>
		</h1>

		<!-- nav -->
		<ul class="nav">
			<li><a href="index.form" target="_self">首页</a></li>
			<li><a href="plant-index.form" target="_self">花草</a></li>
			<li class="focus"><a href="article-index.form" target="_self">文章</a></li>
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
			<a class="add" title="发布文章" onclick="checkAddArtical()">发布</a>
		</div>
		<input id="loginFlag" value="${sessionScope.user}"
			style="display: none" /> <input id="userType"
			value="${sessionScope.user.userType}" style="display: none" />

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
	<script type="text/javascript" src="js/weiba.js"></script>

	<!-- catehead -->
	<div class="catehead">
		<a href="article-index.form" id="allArticle" title="全部文章"
			<c:if test="${tabFlag!='我的发布' and tabFlag!='我的收藏'}">class="on"</c:if>>全部文章</a>
		<c:if test="${sessionScope.user.userType=='会员'}">
			<a <c:if test="${tabFlag=='我的发布'}">class="on"</c:if> id="myArticle"
				title="我的发布" href="searchMyArticel.form">我的发布</a>
		</c:if>
		<c:if test="${sessionScope.user!=null}">
			<a <c:if test="${tabFlag=='我的收藏'}">class="on"</c:if>
				id="collectArticle" title="我的收藏" href="searchCollectArticel.form">我的收藏</a>
		</c:if>
		<div class="seachform">
			<form name="search_weiba" id="search_weiba" method="post"
				action="searchArticle.form">
				<input autocomplete="off" id="searchweiba_input" name="articleTitle"
					class="input" type="text" value="搜文章" onfocus="this.value=''"
					onblur="setTimeout(function(){ $('#search-box').remove();} , 200);if(this.value=='') this.value='搜文章';"
					event-node="searchKey" name='k' /> <a href="javascript:void(0)"
					rel="nofollow" class="submit"
					onclick="if(getLength($('#searchweiba_input').val()) && $('#searchweiba_input').val()!=='搜文章'){ $('#search_weiba').submit(); return false;}">搜索</a>
			</form>
		</div>

	</div>

	<script type="text/javascript">
		function doWeibaSearch() {
			if (getLength($('#searchweiba_input').val())
					&& $('#searchweiba_input').val() !== '搜') {
				var k = encodeURIComponent($('#searchweiba_input').val());
				location.href = "/so/wenzhang-" + k + "/";
				return false;
			}
			return false;
		}
	</script>

	<div class="main shadow">

		<!-- content -->
		<div class="content">
			<div class="navtag">
				<a href="article-index.form" title="文章">文章</a>&nbsp;>&nbsp; 文章详情
			</div>

			<!-- newinfo -->
			<div class="newinfo">
				<h1 title="${articleList.articleTitle}" class="title">${articleList.articleTitle}</h1>
				<p class="info">
					<label class="from">来自:<a href="" title="文章网">文章网</a>原创
					</label> <label class="user">作者:<a href='' target='_blank' uid='4'
						event-node='face_card'>${articleList.articleAuthor}</a></label> <label
						class="time">${articleList.articleCreateTime}</label> <label
						class="read">${articleList.readTimes}次阅读</label>
					${articleList.articleContent}
				<div class="uptime">
					【${articleList.articleTitle} -
					文章网】被收藏过${articleList.articleCollectNumber}次
					<div style="float: right" id="collect">
						点这里收藏<i class="Hui-iconfont">&#xe67a;</i>&nbsp;&nbsp;
						<c:choose>
							<c:when test="${IsArticleCollected==false}">
								<i
									onclick="collectArticle(${articleList.articleID},${articleList.articleCollectNumber})"
									style="font-size: 30px;" class="Hui-iconfont">&#xe69e;</i>
							</c:when>
							<c:otherwise>
								<i
									onclick="cancelCollectArticle(${articleList.articleID},${articleList.articleCollectNumber})"
									style="font-size: 30px; color: red" class="Hui-iconfont">&#xe630;</i>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</div>


			<div id="comment_weiba" class="comment_weiba">
				<h3 class="title" title="刚砍头的多肉苗，只需要四步就能快速生根！的评论">【${articleList.articleTitle}】的评论</h3>

				<c:choose>
					<c:when test="${sessionScope.user==null}">
						<img class="img" alt="文章网游客" title="文章网游客" src="picture/user.jpg" />
					</c:when>
					<c:otherwise>
						<img class="img" alt="文章网用户" title="文章网用户"
							src="${sessionScope.user.userAvatar}" />
					</c:otherwise>
				</c:choose>

				<div model-node="numsLeft" class="num">
					可以输入<span>100</span>个字
				</div>
				<div class="comtext">
					<div class="cont">
						<c:choose>
							<c:when test="${sessionScope.user==null}">
								<div class="text">
									发表评论，你需要<a rel="nofollow" href="login.jsp" title="登录">登录</a>或<a
										rel="nofollow" href="register.jsp" title="注册">注册</a>
								</div>
							</c:when>
							<c:otherwise>
								<form action="addComment.form" method="post"
									style="height: 100%" id="addCommentForm">
									<input name="articleID" id="addArticleID"
										value="${articleList.articleID}" style="display: none"></input>
									<textarea name="commentContent" id="commentContent" cols=""
										rows=""
										style="width: 106%; height: 134%; margin-top: -15px; margin-left: -15px"
										class="textarea" placeholder="说点什么吧..."></textarea>
								</form>
							</c:otherwise>
						</c:choose>

					</div>
					<a href="javascript:void(0);" onclick="checkAddComment()"
						class="button" rel="nofollow" title="提交评论">评论</a>
				</div>

				<!--评论列表-->
				<ul class="comment_list">

				</ul>
				<ul class="commentList">
					<c:forEach items="${commentLists}" var="commentList"
						varStatus="status">
						<c:choose>
							<c:when test="${commentList.commentState=='显示'}">
								<li class="item cl"><a href="#"><i
										class="avatar size-L radius"><img alt=""
											src="${commentList.user.userAvatar}"
											style="width: 50px; height: 50px"></i></a>
									<div class="comment-main">
										<header class="comment-header">
											<div class="comment-meta">
												<a class="comment-author" style="color: #0c8571;" href="#">${commentList.article.articleAuthor}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评论于
												<time title="${commentList.commentTime}"
													datetime="${commentList.commentTime}">${commentList.commentTime}</time>
											</div>
										</header>
										<div class="comment-body">
											<p
												style="font-family: arial, sans-serif, simsun, Verdana, Helvetica; font-size: 15px;">
												${commentList.commentContent}</p>
										</div>
									</div></li>
							</c:when>
							<c:otherwise>
								<li class="item cl"><a href="#"><i
										class="avatar size-L radius"><img alt=""
											src="${commentList.user.userAvatar}"
											style="width: 50px; height: 50px"></i></a>
									<div class="comment-main">
										<header class="comment-header">
											<div class="comment-meta">
												<a class="comment-author" style="color: #0c8571;" href="#">${commentList.article.articleAuthor}</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<time title="${commentList.commentTime}"
													datetime="${commentList.commentTime}">${commentList.commentTime}</time>
											</div>
										</header>
										<div class="comment-body">
											<p
												style="font-family: arial, sans-serif, simsun, Verdana, Helvetica; font-size: 12px; color: #808080">
												（该评论已被折叠）</p>
										</div>
									</div></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
				<!--页码-->
				<!--页码/end-->
			</div>

		</div>

		<!-- sidebar -->
		<div class="sidebar">


			<!-- newlist -->
			<div class="newlist" style="margin: 26px auto;">
				<h2 class="title" title="作者的其他文章">
					作者的其他文章<a rel="nofollow" class="more" href="article-index.form">(更多)</a>
				</h2>
				<ul class="list">
					<c:forEach items="${otherArticleLists}" var="otherArticleList"
						varStatus="status">
						<li><a class="img"
							href="article-detail.form?articleID=${otherArticleList.articleID}"><img
								alt="${otherArticleList.articleTitle}"
								title="${otherArticleList.articleTitle}"
								src="${otherArticleList.articleImage}" width="70" /></a> <label
							class="info"> <strong class="title"><a
									title="${otherArticleList.articleTitle}"
									href="article-detail.form?articleID=${otherArticleList.articleID}">${otherArticleList.articleTitle}</a></strong>
								<p class="data">
									<span>${otherArticleList.readTimes} 次阅读</span><label>${otherArticleList.articleCollectNumber}次收藏</label>
								</p>
								<p class="from">
									来自：<a
										href="article-detail.form?articleID=${otherArticleList.articleID}"
										title="文章网">文章网</a>原创
								</p>
						</label></li>
					</c:forEach>
				</ul>
			</div>

		</div>

	</div>

	<!--Baidu-->
	<div
		style="top: 243px; left: 50%; margin-left: -30px; padding-left: 6px; position: fixed; background-color: #F4F0EC; z-index: 10;"
		id="bdshare"></div>
	<!--Baidu-->

	<script type="text/javascript">
		$(function() {
			$("img.lazy").lazyload({
				effect : "fadeIn"
			})
		});
		var setype = function(post_id, type, curvalue) {
		};
		$(window).scroll(
				function() {
					var showObj = $('#showObj');
					if (showObj.length > 0) {
						var showObjSet = showObj.offset();
						var showPrev = showObj.prev();
						var showPrevSet = showPrev.offset();
						if (showObjSet.top < $(document).scrollTop() + 50) {
							showObj.css({
								left : showObjSet.left,
								top : 50,
								position : 'fixed'
							})
						} else if (showObjSet.top < showPrevSet.top
								+ showPrev.height()) {
							showObj.css({
								position : 'static'
							})
						}
					}
					;
				});
	</script>

	<script type="text/javascript">
		var cpro_id = "u1707167";
	</script>
	<script src="js/i.js" type="text/javascript"></script>


	<!-- navigation -->
	<div class="navigation">
		<div class="cont">
			<div class="cate caterec">
				<a href="javascript:void(0);" title="文章网快捷导航" rel="nofollow"
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
					<a href="/huahui/lengshuihua.html" title="冷水花文章">冷水花</a><a
						href="/huahui/lvluo.html" title="绿萝文章">绿萝</a><a
						href="/huahui/fenyejueming.html" title="粉叶决明文章">粉叶决明</a><a
						href="/huahui/qizimei.html" title="七姊妹文章">七姊妹</a><a
						href="/huahui/tengbenyueji.html" title="藤本月季文章">藤本月季</a><a
						href="/huahui/shanhuhuafengli.html" title="珊瑚花凤梨文章">珊瑚花凤梨</a><a
						href="/huahui/huangyangshu.html" title="黄杨树文章">黄杨树</a><a
						href="/huahui/ganlan.html" title="橄榄文章">橄榄</a><a
						href="/huahui/bingjiao.html" title="冰娇文章">冰娇</a><a
						href="/huahui/mangjishi.html" title="莽吉柿文章">莽吉柿</a><a
						href="/huahui/hamigua.html" title="哈密瓜文章">哈密瓜</a><a
						href="/huahui/xianggua.html" title="香瓜文章">香瓜</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">类别<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/quwei/" target="_self" title="趣味类文章">趣味类</a><a
						href="/hua/fangxiang/" target="_self" title="芳香类文章">芳香类</a><a
						href="/hua/guanguo/" target="_self" title="观果类文章">观果类</a><a
						href="/hua/guanhua/" target="_self" title="观花类文章">观花类</a><a
						href="/hua/guanye/" target="_self" title="观叶类文章">观叶类</a><a
						href="/hua/guanjing/" target="_self" title="观茎类文章">观茎类</a><a
						href="/hua/jieqing/" target="_self" title="节庆类文章">节庆类</a><a
						href="/hua/chuidiao/" target="_self" title="垂吊类文章">垂吊类</a><a
						href="/hua/guoshu/" target="_self" title="果蔬类文章">果蔬类</a><a
						href="/hua/dibeicaoping/" target="_self" title="地被草坪文章">地被草坪</a><a
						href="/hua/shuipei/" target="_self" title="水培类文章">水培类</a><a
						href="/hua/penzai/" target="_self" title="盆栽类文章">盆栽类</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">功能<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/guanshang/" target="_self" title="观赏文章">观赏</a><a
						href="/hua/jinghuakongqi/" target="_self" title="净化空气文章">净化空气</a><a
						href="/hua/xijiaquan/" target="_self" title="吸甲醛文章">吸甲醛</a><a
						href="/hua/fangfushe/" target="_self" title="防辐射文章">防辐射</a><a
						href="/hua/tishen/" target="_self" title="提神文章">提神</a><a
						href="/hua/shajun/" target="_self" title="杀菌文章">杀菌</a><a
						href="/hua/quwen/" target="_self" title="驱蚊文章">驱蚊</a><a
						href="/hua/yaoyong/" target="_self" title="药用文章">药用</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">环境<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/yangtai/" target="_self" title="阳台文章">阳台</a><a
						href="/hua/chuangtai/" target="_self" title="窗台文章">窗台</a><a
						href="/hua/tingyuan/" target="_self" title="庭院文章">庭院</a><a
						href="/hua/louding/" target="_self" title="楼顶文章">楼顶</a><a
						href="/hua/keting/" target="_self" title="客厅文章">客厅</a><a
						href="/hua/canting/" target="_self" title="餐厅文章">餐厅</a><a
						href="/hua/chaji/" target="_self" title="茶几文章">茶几</a><a
						href="/hua/chufang/" target="_self" title="厨房文章">厨房</a><a
						href="/hua/bangongshi/" target="_self" title="办公室文章">办公室</a><a
						href="/hua/bangongzhuo/" target="_self" title="办公桌文章">办公桌</a><a
						href="/hua/shufang/" target="_self" title="书房文章">书房</a><a
						href="/hua/woshi/" target="_self" title="卧室文章">卧室</a><a
						href="/hua/weishengjian/" target="_self" title="卫生间文章">卫生间</a><a
						href="/hua/yuanlin/" target="_self" title="园林文章">园林</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">花期<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/chunji/" target="_self" title="春季文章">春季</a><a
						href="/hua/xiaji/" target="_self" title="夏季文章">夏季</a><a
						href="/hua/qiuji/" target="_self" title="秋季文章">秋季</a><a
						href="/hua/dongji/" target="_self" title="冬季文章">冬季</a><a
						href="/hua/siji/" target="_self" title="四季文章">四季</a><a
						href="/hua/bukaihua/" target="_self" title="不开花文章">不开花</a><a
						href="/hua/xiyang/" target="_self" title="喜阳文章">喜阳</a><a
						href="/hua/xiyin/" target="_self" title="喜阴文章">喜阴</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">难度<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/rongyi/" target="_self" title="容易养殖文章">容易养殖</a><a
						href="/hua/liuxin/" target="_self" title="留心养殖文章">留心养殖</a><a
						href="/hua/jingxin/" target="_self" title="精心养护文章">精心养护</a><a
						href="/hua/zhuanye/" target="_self" title="专业养护文章">专业养护</a>
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
		function checkAddComment() {
			if ($("#commentContent").val().length == 0) {
				ui.showMessage('至少写点什么吧', 1, 1);
				return;
			}
			if ($("#commentContent").val().length > 100) {
				ui.showMessage('超过字数上限', 1, 1);
				return;
			}
				//提交评论表单
				$.ajax({
				url : "addComment.form",
				data : {
					articleID : $("#addArticleID").val(),
					commentContent : $("#commentContent").val(),
				},
				type : "post",
				contentType : "application/x-www-form-urlencoded",
				success : function(data) {
					ui.showMessage('评论成功', 0, 1);
				}
			   });
				setTimeout(function() {
					location.replace(location.href);
				}, 1000);
		}
	</script>

	<script type="text/javascript">
		function checkAddArtical() {
			//先判断用户是否已登录，是否是会员
			if ($("#loginFlag").val() == "" || $("#loginFlag").val() == null) {
				ui.showMessage('请先登录/注册', 1, 1);
				return;
			} else if ($("#userType").val() != '会员') {
				ui.showMessage('您还不是会员,无法发布文章', 1, 2);
				return;
			}

			window.location.href = "artical-add.form";

		}
	</script>

	<script type="text/javascript">
		function collectArticle(articleID, collectNumber) {
			//先判断用户是否已登录
			if ($("#loginFlag").val() == "" || $("#loginFlag").val() == null) {
				ui.showMessage('请先登录/注册', 1, 1);
				return;
			}

			//收藏文章
			$("#collect").html('点这里收藏<i class="Hui-iconfont">&#xe67a;</i>&nbsp;&nbsp;<i onclick="cancelCollectArticle(${articleList.articleID},${articleList.articleCollectNumber})" style="font-size: 30px;color:red" class="Hui-iconfont">&#xe630;</i>');
			$.ajax({
				url : "collectArticle.form",
				data : {
					articleID : articleID,
					articleCollectNumber : collectNumber + 1,
					collectFlag : '收藏'
				},
				type : "post",
				contentType : "application/x-www-form-urlencoded",
				success : function(data) {
					ui.showMessage('收藏成功', 0, 0.2);
				}
			});
			setTimeout(function() {
				location.replace(location.href);
			}, 1000);

		}
		function cancelCollectArticle(articleID, collectNumber) {
			//先判断用户是否已登录
			if ($("#loginFlag").val() == "" || $("#loginFlag").val() == null) {
				ui.showMessage('请先登录/注册', 1, 1);
				return;
			}

			//取消收藏文章
			$("#collect").html('点这里收藏<i class="Hui-iconfont">&#xe67a;</i>&nbsp;&nbsp;<i onclick="collectArticle(${articleList.articleID},${articleList.articleCollectNumber})" style="font-size: 30px;" class="Hui-iconfont">&#xe69e;</i>');
			$.ajax({
				url : "collectArticle.form",
				data : {
					articleID : articleID,
					articleCollectNumber : (collectNumber - 1) < 0 ? 0
							: (collectNumber - 1),
					collectFlag : '取消收藏'
				},
				type : "post",
				contentType : "application/x-www-form-urlencoded",
				success : function(data) {
					ui.showMessage('已取消收藏', 0, 0.2);
				}
			});
			setTimeout(function() {
				location.replace(location.href);
			}, 1000);
		}
	</script>

</body>
</html>