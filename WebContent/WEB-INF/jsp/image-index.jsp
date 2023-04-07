<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>植物风景图片_植物风景图 - 最美的大自然的植物风景图片大全 - 花草网</title>
<meta
	content="植物风景图,植物美风景图,植物风景图片,大自然的植物风景图,树花植物风景大图,风景植物壁纸,植物风景摄影图,风景植物图片"
	name="keywords" />
<meta
	content="花草网植物风景图片大全频道，为广大花友们收集了有关植物风景的图片大全，同花友们一起共同分享和植物风景相关的图片，为爱好植物风景的“花痴们”提供全面的植物风景的图片。包括：植物风景图、植物美风景图、植物风景图片、大自然的植物风景图、树花植物风景大图、风景植物壁纸、植物风景摄影图、风景植物图片、植物风景的图片大全等，为热爱植物风景的花友更容易收集与植物风景相关的图片，更轻松的找到植物风景图片大全。"
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css_6.css" rel="stylesheet" type="text/css" />
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
<script src="js/public_zh-cn_1.js"></script>
<script src="js/js_1.js"></script>
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
			<li><a href="plant-index.form" target="_self">花草</a></li>
			<li><a href="article-index.form" target="_self">文章</a></li>
			<li class="focus"><a href="image-index.form" target="_self">图库</a></li>
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

	<div class="typelist">
		<div class="menubar">
			<ul class="list" id="navmenu">
				<li><a href="image-index.form" class="hot">图片大全</a></li>
				<li><a href="javascript:;" data-id="230">风格</a></li>
				<li><a href="javascript:;" data-id="231">空间</a></li>
				<li><a href="javascript:;" data-id="232" class="on">主题</a></li>
				<li><a href="javascript:;" data-id="233">百科</a></li>
			</ul>
			<i class="arrow"></i>
		</div>
		<div class="tags">
			<div class="list " id="tag_box_230">
				<a  href="image-index.form?imageStyle=观赏">观赏</a><a
					href="image-index.form?imageStyle=花朵">花朵</a><a
					href="image-index.form?imageStyle=观花">观花</a><a
					href="image-index.form?imageStyle=叶子">叶子</a><a
					href="image-index.form?imageStyle=观叶">观叶</a><a
					href="image-index.form?imageStyle=观果">观果</a><a
					href="image-index.form?imageStyle=净化空气">净化空气</a><a
					href="image-index.form?imageStyle=吸甲醛">吸甲醛</a><a
					href="image-index.form?imageStyle=防辐射">防辐射</a><a
					href="image-index.form?imageStyle=驱蚊">驱蚊</a><a
					href="image-index.form?imageStyle=药用">药用</a>
			</div>
			<div class="list " id="tag_box_231">
				<a href="image-index.form?imageTheme=室内绿植">室内绿植</a><a
					href="image-index.form?imageTheme=家居绿植">家居绿植</a><a
					href="image-index.form?imageTheme=室内观赏">室内观赏</a><a
					href="image-index.form?imageTheme=室内盆景">室内盆景</a><a
					href="image-index.form?imageTheme=室内水培">室内水培</a>
			</div>
			<div class="list current" id="tag_box_232">
				<a href="image-index.form?imageEncyclopedia=绿植">绿植</a><a
					href="image-index.form?imageEncyclopedia=水培">水培</a><a
					href="image-index.form?imageEncyclopedia=玻璃瓶植物">玻璃瓶植物</a><a
					href="image-index.form?imageEncyclopedia=盆栽">盆栽</a><a
					href="image-index.form?imageEncyclopedia=盆景">盆景</a>
			</div>
			<div class="list " id="tag_box_233">
				<a href="image-index.form?imageSeason=多肉">多肉</a><a
					href="image-index.form?imageSeason=仙人掌">仙人掌</a><a
					href="image-index.form?imageSeason=兰花">兰花</a><a
					href="image-index.form?imageSeason=木本花草">木本花草</a><a
					href="image-index.form?imageSeason=块根植物">块根植物</a>
			</div>
		</div>
	</div>

	<div class="main">
		<div id="PromptTips" class="tagtips">
			<h1 class="title" title="植物风景图片大全">植物风景图片</h1>
			<i title="植物风景图片大全" class="ico">植物风景图片大全</i>
			<div class="cont shadow">
				风景”是人对自然环境感知、认知和实践过程的显现。人对自然的感知（情感体验）所形成的“风景”，以诗歌、绘画等艺术形式显现；人对自然的认知所形成的“风景”，以环境伦理学、环境美学、人文地理学、景观生态学、景观历史学、景观考古学等知识形态显现；人对自然的实践（包括保护管理以及保护管理前提下的规划设计）所形成的“风景”以遗产地、园林、公共开放空间、修复了的棕地等体型物质形态显现。<br>
				<br>“风”和“景”的基本含义是“流动的空气”和“日光”。风景园林研究和实践的前提是以科学的态度和方法深入理解自然系统及其内在机制。生物学、生态学、气象学、地质学、水文学、环境学等均可以提供极大帮助。<br>
				<br>“风景”不是冷冰冰的“自然”或“环境”，而是活生生的人和自然的复合体。“风景”中人的因素，在个体为情感（情感的表达为艺术），在群体为文化。因此文化和艺术对于风景园林学来讲，与狭义自然一样，是不可或缺的构成要素。<br>
				<br>“风”的“教化”含义具有现实意义。作为环境教育的风景园林学，不论对于国家、社会还是对于风景园林学本身都是有益的。从“教化”还可以引申出环境伦理的含义，环境伦理应该成为风景园林实践的基石。<br>
				<br>花草网植物风景图片大全专区，旨在为爱好植物风景的“花痴们”提供全面的植物风景的图片，以让广大花友们最轻松的找到有关植物风景的图片大全为己任。让热爱植物风景的广大花友们更简单的收集与植物风景相关的图片，更容易发现植物风景的美。同花友们一起共同分享和植物风景相关的图片，包括植物风景图、植物美风景图、植物风景图片、大自然的植物风景图、树花植物风景大图、风景植物壁纸、植物风景摄影图、风景植物图片、植物风景的图片大全等。<br>
				<br>以下是花草网(花草网)为你提供的植物风景图片大全，如果你也和我一样觉得每一张都是美美的植物风景图片，还等什么勇敢的向更多的花友分享植物风景图片吧！！！
			</div>
		</div>

		<ul class="imglist">
			<c:forEach items="${plantImageLists}" var="plantImageList"
				varStatus="status">
				<c:if test="${plantImageList.plantImage.plantImagePath!='plantResource/'}">
					<li class="shadow" style="height: ${plantImageList.styleHeight}px">
						<div class="image">
							<a class="img" href=""> <img
								alt="${plantImageList.plantName}" width="190" height="${plantImageList.styleHeight}px" class="lazy"
								src="${plantImageList.plantImage.plantImagePath}"
								data-original="${plantImageList.plantImage.plantImagePath}" />
							</a>
						</div>
					</li>
				</c:if>
			</c:forEach>
		</ul>
	</div>

	<!--Baidu-->
	<div
		style="top: 332px; left: 50%; margin-left: 241px; padding-left: 6px; position: fixed; background-color: #F4F0EC;"
		id="bdshare"></div>
	<!--Baidu-->

	<script src="js/jquery.masonry.min_1.js" type="text/javascript"></script>
	<script>
		$("#navmenu a").click(function() {
			$("#navmenu a").removeClass('on');
			$(this).addClass("on");

			var id = $(this).data('id');
			$("div[id^=tag_box_]").removeClass("current");
			$("#tag_box_" + id).addClass("current");
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

		//瀑布流
		var $container = $('.imglist');
		$container.masonry({
			itemSelector : '.shadow'
		});
		$("img.lazy").lazyload({
			failurelimit : 10,
			effect : "fadeIn"
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

	<link href="css/02_1.css" rel="stylesheet" type="text/css" />
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