<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户帐号激活 - 花草网</title>
<meta content="花草网用户帐号激活,注册花草网账号激活" name="keywords" />
<meta
	content="花草网用户帐号激活频道，为广大的花友们提供快捷的注册方式，完善的花草个人中心，让花痴们更好的记录花草养护过程中的快乐！"
	name="description" />
<meta name="baidu_union_verify"
	content="fbb64f6975954218843adbd5f597779d">

<link
	href="http://static.huashichang.com/image/favicon.ico?v=201812211030"
	type="image/x-icon" rel="shortcut icon" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome.css">
<script>
	var SITE_URL = 'http://www.aihuhua.com';
	var UPLOAD_URL = '/data/upload';
	var THEME_URL = 'http://static.huashichang.com';
	var APPNAME = 'public';
	var MID = '0';
	var UID = '407506';
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
			<li><a href="plant-index.form" target="_self">花草</a>
			</li>
			<li><a href="article-index.form" target="_self">文章</a></li>
			<li><a href="image-index.form"
				target="_self">图库</a></li>
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

	<div id="page-wrap">
		<div class="reg-wrap">
			<div class="reg-main">
				<div class="article boxShadow">
					<div class="title">恭喜您，注册信息填写完毕</div>
					<div id="step3_box" class="search-find">
						<!--<div style="font-size:20px;text-align:center;padding:20px 0 20px 0"><i class="ico-ok"></i>注册成功</div>-->
						<input type="hidden" id="registeruser" value="${sessionScope.registeruser}">
						<div class="mt15">
							<p style="font-size: 16px">激活邮件已发送至${sessionScope.registeruser.userEmail}，请立即登录邮箱查看验证码</p>
						</div>
						<div class="mt15">
							<span style="color: #B8B7B7">若您长时间未收到验证码邮件，可点击&nbsp;“<a
								href="reSendEmail.form" style="font-size: 12px">重新发送</a>”&nbsp;或&nbsp;“<a
								href="register.jsp" style="font-size: 12px">取消验证</a>”
							</span>
						</div>
						<form id="codeform" method="POST" action="register.form">
							<div class="mt15" id="">
								<span style="font-size: 12px; float: left; line-height: 28px">请输入验证码：</span>
								<input name="code" id="emailcode" type="text"
									suffix="@qq.com,@sina.com,@163.com,@126.com,@souhu.com,@gmail.com"
									class="s-txt-focus" /> <a class="btn-green-big" checkurl=""
								    event-node="change_activation_email"
									type="submit" id=""><span onclick="ensureregister()">确定</span></a>
							</div>
						</form>
						<div class="box-ver"
							style="padding: 0px 0px 0px 110px; display: none;"
							id="prompt_box"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="style/js/module.register.js"></script>
	<script type="text/javascript">
		var inviteEmail;
		/**
		 * 显示更改激活邮箱地址
		 * @return void
		 */
		var showChangeEmailBox = function() {
			$('#show_box').show();
			$('#change_email_input').focus();
			inviteEmail = checkEmailBox('change_email_input');
			M(document.getElementById('show_box'));
		}
		/**
		 * 验证邮箱正确性
		 * @return object
		 */
		var checkEmailBox = function(inputId) {
			// 验证参数是否正确
			if (typeof inputId === "undefined") {
				return false;
			}
			// 返回的实例化对象
			var that = {};
			// 获取验证数据
			that.getIsValid = function() {
				return isValid;
			};
			// 获取邮箱的值
			that.getValue = function() {
				return $.trim($input.val());
			};
			// 原始数据
			var oldVal = '';
			// 列表Li索引
			var indexLi = -1;
			// 验证是否成功
			var isValid = false;
			// 设置JQuery对象
			var $input = $('#' + inputId);
			// 获取邮件后缀
			if ($.trim($input.attr('suffix')) == '') {
				isValid = true;
				return that;
			}
			var suffix = $input.attr('suffix').split(',');
			// 下拉框对象
			var offset = $input.offset();
			var dropDown = '<div style="width:410px;display:none;position:absolute;left:'
					+ offset.left
					+ 'px;top:'
					+ (offset.top + 29)
					+ 'px;" class="mod-at-wrap mod-at"><ul class="at-user-list">';
			for (var i = 0; i < suffix.length; i++) {
				dropDown += '<li email="'+suffix[i]+'" rel="show"><a href="javascript:;"><span></span></a></li>';
			}
			dropDown += '</ul></div>';
			var $dropDown = $(dropDown);
			$('body').append($dropDown);
			// 输入框改变内容
			var valChange = function() {
				var tex = $input.val();
				var fronts = '';
				var af = /@/;
				var regMail = new RegExp(tex.substring(tex.indexOf('@')));
				if (tex == '') {
					blusDropDown();
				} else {
					$dropDown.show().find('li').each(function() {
						var valAttr = $(this).attr('email');
						if (af.test(tex)) {
							fronts = tex.substring(tex.indexOf('@'), 0);
							$(this).text(fronts + valAttr);
							if (regMail.test($(this).attr('email'))) {
								$(this).attr('rel', 'show');
								$(this).css({
									position : 'static',
									visibility : 'inherit'
								});
							} else {
								$(this).attr('rel', 'hide');
								$(this).css({
									position : 'absolute',
									visibility : 'hidden'
								});
							}
						} else {
							$(this).text(tex + valAttr);
						}
					});
				}
			};
			// 隐藏下拉框列表
			var blusDropDown = function() {
				$dropDown.hide();
			};
			// 浏览器输入兼容性
			if ($.browser.msie) {
				$input.bind('propertychange', function() {
					$(this).val() != oldVal && valChange();
				});
			} else {
				$input.bind('input', function() {
					valChange();
				});
			}
			// 选中上下移动
			var keyChange = function(up) {
				if (up == "up") {
					if (indexLi == 0) {
						indexLi = $dropDown.find('li[rel="show"]').length - 1;
					} else {
						indexLi--;
					}
				} else {
					if (indexLi == $dropDown.find('li[rel="show"]').length - 1) {
						indexLi = 0;
					} else {
						indexLi++;
					}
				}
				$dropDown.find('li[rel="show"]').eq(indexLi)
						.addClass("current").siblings().removeClass();
			};
			// 绑定按键事件
			$input.keydown(function(event) {
				if (event.which == 38) {
					// 按上
					keyChange("up");
				} else if (event.which == 40) {
					// 按下
					keyChange();
				} else if (event.which == 13) {
					// 按回车
					var liVal = $dropDown.find('li[rel="show"]').eq(indexLi)
							.text();
					$input.val(liVal);
					$input.blur();
					blusDropDown();
				}
			});
			// 给Li绑定点击事件
			$(document)
					.click(
							function(event) {
								if ($(event.target).is('li')
										&& typeof $(event.target).attr('email') !== 'undefined') {
									var liVal = $(event.target).text();
									$input.val(liVal);
									oldVal = liVal;
								}
								blusDropDown();
							});
			// 绑定验证邮箱内容正确性
			$input.bind('blur', function() {
				setTimeout(function() {
					checkEmailValue();
				}, 300);
			});
			// 验证邮件正确性
			var checkEmailValue = function() {
				// 获取邮件内容
				var email = $.trim($input.val());
				if (email == '') {
					return false;
				}
				// 验证邮箱是否可用
				$.post(U('public/Register/isEmailAvailable'), {
					email : email
				}, function(res) {
					var icoClass = '';
					if (res.status) {
						icoClass = 'ico-ok';
						res.info = '<font style="color:green;">该邮箱可以使用</font>';
						isValid = true;
					} else {
						icoClass = 'ico-error';
						isValid = false;
					}
					var html = '<span><b class="' + icoClass + '"></b>'
							+ res.info + '</span>';
					$('#prompt_box').css('display', '');
					$('#prompt_box').html(html);
				}, 'json');
			};

			return that;
		};
	</script>


	<!-- navigation -->
	<div class="navigation">
		<div class="cont">
			<div class="cate caterec">
				<a href="javascript:void(0);" title="花草网快捷导航" rel="nofollow"
					class="title">快捷<em class="ico"></em></a>
				<ul class="catelist">
					<li><a href="login.jsp" rel="nofollow">
							<i><img src="picture/icon_app.png" width="16" height="16" />用户网站</i>
					</a></li>
					<li><a href="login.jsp" rel="nofollow" target="_blank">
							<i><img src="picture/icon_app.png"  width="16" height="16" />管理系统</i>
					</a></li>
					<li><a
						href=""
						rel="nofollow"><i><img src="picture/more.png" width="16"
								height="16" />更多应用</a></i></li>
				</ul>
			</div>

			<div class="cate" style="margin-left: 160px; display: inline;">
				<a href="javascript:void(0);" rel="nofollow" class="title">特色<em
					class="ico"></em></a>
				<div class="catelist fulllist">
					<a href="/huahui/lengshuihua.html"  title="冷水花花草">冷水花</a><a
						href="/huahui/lvluo.html"  title="绿萝花草">绿萝</a><a
						href="/huahui/fenyejueming.html"  title="粉叶决明花草">粉叶决明</a><a
						href="/huahui/qizimei.html"  title="七姊妹花草">七姊妹</a><a
						href="/huahui/tengbenyueji.html"  title="藤本月季花草">藤本月季</a><a
						href="/huahui/shanhuhuafengli.html" 
						title="珊瑚花凤梨花草">珊瑚花凤梨</a><a href="/huahui/huangyangshu.html"
						 title="黄杨树花草">黄杨树</a><a href="/huahui/ganlan.html"
						 title="橄榄花草">橄榄</a><a href="/huahui/bingjiao.html"
						 title="冰娇花草">冰娇</a><a
						href="/huahui/mangjishi.html"  title="莽吉柿花草">莽吉柿</a><a
						href="/huahui/hamigua.html"  title="哈密瓜花草">哈密瓜</a><a
						href="/huahui/xianggua.html"  title="香瓜花草">香瓜</a>
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

	<link href="style/css/02.css" rel="stylesheet" type="text/css" />
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
							'<a  class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a  class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a  class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a  class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a  class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a  class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网"></a><a  class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a  class="bds_douban" data-cmd="douban" title="分享到豆瓣网"></a><a  class="bds_huaban" data-cmd="huaban" title="分享到花瓣"></a>');
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
		var emailCodeflag = false;
		//判断验证码是否填写正确
		$("#emailcode")
				.blur(
						function() {
							$
									.ajax({
										url : "checkCode.form",
										data : {
											userEmail : $("#emailcode").val()
										},
										type : "post",
										contentType : "application/x-www-form-urlencoded",
										success : function(data) {
											var icoClass = '';
											//验证码输入正确
											if (data == "1") {
												icoClass = 'ico-ok';
												info = '<font style="color:green;">验证码正确</font>';
												emailCodeflag = true;
											} else {
												//验证码输入错误
												icoClass = 'ico-error';
												info = '<font style="color:red;">验证码错误</font>';
												emailCodeflag = false;
											}
											var html = '<span><b class="' + icoClass + '"></b>'
													+ info + '</span>';
											$('#prompt_box').css('display', '');
											$('#prompt_box').html(html);
										}
									})
						});

		//验证码正确则允许注册
		function ensureregister() {
			if (emailCodeflag = true) {
				ui.showMessage('注册成功', 0, 1);
				setTimeout(function(){ $("#codeform").submit();},1000);	
			}
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