<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车 - 花草网</title>
<meta content="购物车" name="keywords" />
<meta content="新浪微博,QQ互联" name="description" />
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
	var APPNAME = 'public';
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
	<link href="css/account.css" rel="stylesheet" type="text/css" />
	<div id="page-wrap">
		<div id="main-wrap">
			<div id="col" class="st-grid content-bg boxShadow">
				<div id="col4" class="main-left">
					<!--tab菜单-->
					<div id="aside" class="pad">
						<!--<p><i class="ico-set"></i>帐号设置</p>-->
						<dl class="nav-left mt10">

							<dd>
								<a href="user-index.form"> 基本信息 </a>
							</dd>
							<dd>
								<a href="user-password.form"> 账号安全 </a>
							</dd>
						</dl>
						<dl class="nav-left mt10">

							<dd>
								<a href="user-collect.form">我的收藏</a>
							</dd>
							<dd>
								<a href="user-address.form"> 收货地址 </a>
							</dd>
							<dd class="current">
								<a href="user-shoppingCart.form"> 购物车</a>
							</dd>
							<dd>
								<a href="user-order.form"> 我的订单</a>
							</dd>
						</dl>
					</div>
				</div>
				<div id="col7" class="main-right">
					<div class="extend minh person-set">
						<div class="set-hd">
							<h3>购物车</h3>
						</div>
						<div class="set-item-info">
							<div class="bind-content">
								<ul>
									<c:forEach items="${shoppingCartLists}" var="shoppingCartList"
										varStatus="status">
										<li>
											<div class="w1"
												onclick="toPlantDetails(${shoppingCartList.plantDetails.plantID})">
												<i class="ico-sina-big"><img width="50px" height="50px"
													src="${shoppingCartList.plantDetailsImage.plantDetailsImagePath}" /></i>
											</div>
											<div class="w2">${shoppingCartList.plantDetails.plantDescribe}</div>
											<div class="w3">
												<a
													onclick="reduceShoppingCartNumber(${shoppingCartList.shoppingCartID},${shoppingCartList.plantDetailsID},${shoppingCartList.shoppingCartNumber},${shoppingCartList.plantDetails.plantStock},${shoppingCartList.shoppingCartAmount},${shoppingCartList.plantDetails.plantPrice})"
													href="javascript:void(0);" style="width: 30px;"
													class="btn-grey-white">⇦</a>&nbsp;&nbsp;&nbsp;${shoppingCartList.shoppingCartNumber}&nbsp;&nbsp;&nbsp;<a
													style="width: 30px;" href="javascript:void(0);"
													onclick="increaseShoppingCartNumber(${shoppingCartList.shoppingCartID},${shoppingCartList.plantDetailsID},${shoppingCartList.shoppingCartNumber},${shoppingCartList.plantDetails.plantStock},${shoppingCartList.shoppingCartAmount},${shoppingCartList.plantDetails.plantPrice})"
													class="btn-grey-white">⇨</a>
											</div>
											<div class="w4">￥${shoppingCartList.shoppingCartAmount}&nbsp;</div>
											<div class="w5">
												<form name=alipayment id="alipayment${status.index}" action=alipay.trade.page.pay.jsp
													method=post>
													<input id="WIDout_trade_no${status.index}" name="WIDout_trade_no" style="display:none"/> <input
														id="WIDsubject" name="WIDsubject" value="${shoppingCartList.plantDetails.plantDescribe}" style="display:none"/> <input
														id="WIDtotal_amount" name="WIDtotal_amount" value="${shoppingCartList.shoppingCartAmount}" style="display:none"/> <input
														id="WIDbody" name="WIDbody" value="${shoppingCartList.plantDetailsImage.plantDetailsImageDescribe}" style="display:none"/> 								
                                                <a onclick="submitAlipayment(${status.index},${shoppingCartList.shoppingCartID},'${shoppingCartList.plantDetails.plantDescribe}',${shoppingCartList.plantDetailsID},${shoppingCartList.shoppingCartNumber},${shoppingCartList.plantDetails.plantStock},${shoppingCartList.shoppingCartAmount})"
														 class="btn-green-big">下单</a>&nbsp;&nbsp;&nbsp;&nbsp;
												<a
													onclick="deleteShoppingCart(${shoppingCartList.shoppingCartID},'${shoppingCartList.plantDetails.plantDescribe}',${shoppingCartList.plantDetailsID},${shoppingCartList.shoppingCartNumber},${shoppingCartList.plantDetails.plantStock})"
													href="javascript:void(0);" style="color: #FA5B5B;">✘</a>
												</form>
											</div>
										</li>
									</c:forEach>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/module.form.js"></script>
	<script>
		//取消购物车
		function unbind(name, type, addon, hooks) {
			if (confirm('确认要取消绑定' + name + '？')) {
				$.post(U('public/Widget/addonsRequest'), {
					addon : addon,
					hook : hooks,
					type : type
				}, function(txt) {
					if (txt) {
						location.reload();
					}
				});
			}
		}
		function setSync(sync, type) {
			if (sync == 'unsync') {
				if (!confirm('确认要取消同步么？')) {
					return false;
				}
				$.post(U('public/Widget/addonsRequest'), {
					addon : 'Login',
					hook : 'login_unbind_publish_weibo',
					type : type
				}, function(txt) {
					if (txt) {
						location.reload();
					}
				});
			} else {
				$.post(U('public/Widget/addonsRequest'), {
					addon : 'Login',
					hook : 'login_ajax_bind_publish_weibo',
					type : type
				}, function(txt) {
					if (txt) {
						location.reload();
					}
				});
			}
		}
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
					<a href="/huahui/lengshuihua.html" target="_blank" title="冷水花花卉">冷水花</a><a
						href="/huahui/lvluo.html" target="_blank" title="绿萝花卉">绿萝</a><a
						href="/huahui/fenyejueming.html" target="_blank" title="粉叶决明花卉">粉叶决明</a><a
						href="/huahui/qizimei.html" target="_blank" title="七姊妹花卉">七姊妹</a><a
						href="/huahui/tengbenyueji.html" target="_blank" title="藤本月季花卉">藤本月季</a><a
						href="/huahui/shanhuhuafengli.html" target="_blank"
						title="珊瑚花凤梨花卉">珊瑚花凤梨</a><a href="/huahui/huangyangshu.html"
						target="_blank" title="黄杨树花卉">黄杨树</a><a href="/huahui/ganlan.html"
						target="_blank" title="橄榄花卉">橄榄</a><a href="/huahui/bingjiao.html"
						target="_blank" title="冰娇花卉">冰娇</a><a
						href="/huahui/mangjishi.html" target="_blank" title="莽吉柿花卉">莽吉柿</a><a
						href="/huahui/hamigua.html" target="_blank" title="哈密瓜花卉">哈密瓜</a><a
						href="/huahui/xianggua.html" target="_blank" title="香瓜花卉">香瓜</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">类别<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/quwei/" target="_self" title="趣味类花卉">趣味类</a><a
						href="/hua/fangxiang/" target="_self" title="芳香类花卉">芳香类</a><a
						href="/hua/guanguo/" target="_self" title="观果类花卉">观果类</a><a
						href="/hua/guanhua/" target="_self" title="观花类花卉">观花类</a><a
						href="/hua/guanye/" target="_self" title="观叶类花卉">观叶类</a><a
						href="/hua/guanjing/" target="_self" title="观茎类花卉">观茎类</a><a
						href="/hua/jieqing/" target="_self" title="节庆类花卉">节庆类</a><a
						href="/hua/chuidiao/" target="_self" title="垂吊类花卉">垂吊类</a><a
						href="/hua/guoshu/" target="_self" title="果蔬类花卉">果蔬类</a><a
						href="/hua/dibeicaoping/" target="_self" title="地被草坪花卉">地被草坪</a><a
						href="/hua/shuipei/" target="_self" title="水培类花卉">水培类</a><a
						href="/hua/penzai/" target="_self" title="盆栽类花卉">盆栽类</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">功能<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/guanshang/" target="_self" title="观赏花卉">观赏</a><a
						href="/hua/jinghuakongqi/" target="_self" title="净化空气花卉">净化空气</a><a
						href="/hua/xijiaquan/" target="_self" title="吸甲醛花卉">吸甲醛</a><a
						href="/hua/fangfushe/" target="_self" title="防辐射花卉">防辐射</a><a
						href="/hua/tishen/" target="_self" title="提神花卉">提神</a><a
						href="/hua/shajun/" target="_self" title="杀菌花卉">杀菌</a><a
						href="/hua/quwen/" target="_self" title="驱蚊花卉">驱蚊</a><a
						href="/hua/yaoyong/" target="_self" title="药用花卉">药用</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">环境<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/yangtai/" target="_self" title="阳台花卉">阳台</a><a
						href="/hua/chuangtai/" target="_self" title="窗台花卉">窗台</a><a
						href="/hua/tingyuan/" target="_self" title="庭院花卉">庭院</a><a
						href="/hua/louding/" target="_self" title="楼顶花卉">楼顶</a><a
						href="/hua/keting/" target="_self" title="客厅花卉">客厅</a><a
						href="/hua/canting/" target="_self" title="餐厅花卉">餐厅</a><a
						href="/hua/chaji/" target="_self" title="茶几花卉">茶几</a><a
						href="/hua/chufang/" target="_self" title="厨房花卉">厨房</a><a
						href="/hua/bangongshi/" target="_self" title="办公室花卉">办公室</a><a
						href="/hua/bangongzhuo/" target="_self" title="办公桌花卉">办公桌</a><a
						href="/hua/shufang/" target="_self" title="书房花卉">书房</a><a
						href="/hua/woshi/" target="_self" title="卧室花卉">卧室</a><a
						href="/hua/weishengjian/" target="_self" title="卫生间花卉">卫生间</a><a
						href="/hua/yuanlin/" target="_self" title="园林花卉">园林</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">花期<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/chunji/" target="_self" title="春季花卉">春季</a><a
						href="/hua/xiaji/" target="_self" title="夏季花卉">夏季</a><a
						href="/hua/qiuji/" target="_self" title="秋季花卉">秋季</a><a
						href="/hua/dongji/" target="_self" title="冬季花卉">冬季</a><a
						href="/hua/siji/" target="_self" title="四季花卉">四季</a><a
						href="/hua/bukaihua/" target="_self" title="不开花花卉">不开花</a><a
						href="/hua/xiyang/" target="_self" title="喜阳花卉">喜阳</a><a
						href="/hua/xiyin/" target="_self" title="喜阴花卉">喜阴</a>
				</div>
			</div>
			<div class="cate">
				<a href="javascript:void(0);" rel="nofollow" class="title">难度<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/hua/rongyi/" target="_self" title="容易养殖花卉">容易养殖</a><a
						href="/hua/liuxin/" target="_self" title="留心养殖花卉">留心养殖</a><a
						href="/hua/jingxin/" target="_self" title="精心养护花卉">精心养护</a><a
						href="/hua/zhuanye/" target="_self" title="专业养护花卉">专业养护</a>
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
	//生成订单号
	function GetDateNow(index) {
		var vNow = new Date();
		var sNow = "";
		sNow += String(vNow.getFullYear());
		sNow += String(vNow.getMonth() + 1);
		sNow += String(vNow.getDate());
		sNow += String(vNow.getHours());
		sNow += String(vNow.getMinutes());
		sNow += String(vNow.getSeconds());
		sNow += String(vNow.getMilliseconds());
		document.getElementById("WIDout_trade_no"+index).value =  sNow;
		
		return sNow;
	}
	
	
	//提交支付
	function submitAlipayment(index,shoppingCartID,plantDescribe,plantDetailsID,shoppingCartNumber,plantStock,shoppingCartAmount){
		//生成订单号
		var orderCode=GetDateNow(index);
		
		//提交至支付界面
		$("#alipayment"+index).submit();
		
		//移除该购物车(不回收库存)
		$.ajax({
			url : "deleteShoppingCart.form",
			data : {
				shoppingCartID : shoppingCartID,
				plantDetailsID : plantDetailsID,
				plantStock:parseInt(plantStock)
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
			}
		});
		
		//生成订单
		$.ajax({
			url : "addOrder.form",
			data : {
				plantDetailsID : plantDetailsID,
				orderNumber:shoppingCartNumber,
				paymentMethod:"支付宝",
				orderAmount:shoppingCartAmount,
				orderCode:orderCode
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
			}
		});
		
		
	}
	</script>
	<script type="text/javascript">
	
	//跳转花草详情页
	function toPlantDetails(plantID){
		window.location.href="plant-detail.form?plantID="+plantID;
	}
	
	//移除购物车
	function deleteShoppingCart(shoppingCartID,plantDescribe,plantDetailsID,shoppingCartNumber,plantStock){
		$.ajax({
			url : "deleteShoppingCart.form",
			data : {
				shoppingCartID : shoppingCartID,
				plantDetailsID : plantDetailsID,
				plantStock:parseInt(plantStock)+parseInt(shoppingCartNumber)
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				ui.showMessage(plantDescribe+'已移出购物车', 0, 1);
			}
		});
		setTimeout(function() {
			location.replace(location.href);
		}, 1000);
	}
	
	//购物车数量减少
	function reduceShoppingCartNumber(shoppingCartID,plantDetailsID,shoppingCartNumber,plantStock,shoppingCartAmount,plantPrice){
		
		//不允许数量小于1
		if(parseInt(shoppingCartNumber)==1){
			return;
		}
		
		$.ajax({
			url : "changeShoppingCartNumber.form",
			data : {
				shoppingCartID : shoppingCartID,
				plantDetailsID : plantDetailsID,
				shoppingCartNumber : parseInt(shoppingCartNumber)-1,
				shoppingCartAmount : shoppingCartAmount-plantPrice,
				plantStock:parseInt(plantStock)+1
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				location.replace(location.href);
			}
		});
		
	}
	
	//购物车数量增加
	function increaseShoppingCartNumber(shoppingCartID,plantDetailsID,shoppingCartNumber,plantStock,shoppingCartAmount,plantPrice){
		
		//库存不足
		if(parseInt(plantStock)==0){
			ui.showMessage('库存不足,无法添加更多了', 1, 1);
			return;
		}
		
		$.ajax({
			url : "changeShoppingCartNumber.form",
			data : {
				shoppingCartID : shoppingCartID,
				plantDetailsID : plantDetailsID,
				shoppingCartNumber : parseInt(shoppingCartNumber)+1,
				shoppingCartAmount : shoppingCartAmount+plantPrice,
				plantStock : parseInt(plantStock)-1
			},
			type : "post",
			contentType : "application/x-www-form-urlencoded",
			success : function(data) {
				location.replace(location.href);
			}
		})
		
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