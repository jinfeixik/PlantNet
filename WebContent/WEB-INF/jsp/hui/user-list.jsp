<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>用户列表</title>
<link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
</head>
<body class="pos-r">
	<!--<div class="pos-a" style="width:200px;left:0;top:0; bottom:0; height:100%; border-right:1px solid #e5e5e5; background-color:#f5f5f5; overflow:auto;">
	<ul id="treeDemo" class="ztree"></ul>
</div>-->
	<div style="">
		<nav class="breadcrumb">
			<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
			用户管理 <span class="c-gray en">&gt;</span> 用户列表 <a
				class="btn btn-success radius r"
				style="line-height: 1.6em; margin-top: 3px"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="page-container">
			<div class="text-c">
			<form id="searchform" method="POST" action="user-list.form">
				注册日期： <input type="text" name="startTime"
					onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
					id="logmin" class="input-text Wdate" style="width: 120px;">
				- <input type="text" name="endTime"
					onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
					id="logmax" class="input-text Wdate" style="width: 120px;">
				<input type="text" name="userName" id="" placeholder=" 用户名称"
					style="width: 250px" class="input-text">
				<button name="" id="" class="btn btn-success" type="submit">
					<i class="Hui-iconfont">&#xe665;</i> 搜用户
				</button>
			</form>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				 <span
					class="r">共有数据：<strong>${userLists.size()}</strong> 条
				</span>
			</div>
			<div class="mt-20">
				<table
					class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
						    <th width="40" style="display: none"></th>
							<th width="30">序号</th>
							<th width="60">用户昵称</th>
							<th width="60">用户账号</th>
							<th width="100">用户邮箱</th>				
							<th width="60">用户性别</th>
							<th width="80">用户电话</th>
							<th width="80">用户地址</th>
							<th width="60">用户头像</th>
							<th width="60">用户类型</th>
							<th width="60">用户状态</th>
							<th width="150">注册时间</th>
							<th width="50">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userLists}" var="userList"
							varStatus="status">
							<tr class="text-c va-m">
							    <td style="display: none"></td>
								<td class="td-manage">${status.index+1}</td>
								<td class="td-manage">${userList.userName}</td>
								<td class="td-manage">${userList.userAccount}</td>
								<td class="td-manage">${userList.userEmail}</td>				
								<td class="td-manage">${userList.userSex}</td>
								<td class="td-manage"><i class="Hui-iconfont">&#xe6c7;</i>${userList.userPhone}</td>
								<td class="td-manage">${userList.userAddress}</td>
								<td class="td-manage"><img width="50" height="40" class="picture-thumb" src="${userList.userAvatar}"></td>
								<td class="td-status-new"><c:choose>
										<c:when test="${userList.userType=='会员'}">
											<span class="label label-success radius">${userList.userType}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-defaunt radius">${userList.userType}</span>
										</c:otherwise>
									</c:choose></td>
								<td class="td-status"><c:choose>
										<c:when test="${userList.userState=='可用'}">
											<span class="label label-success radius">${userList.userState}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-defaunt radius">${userList.userState}</span>
										</c:otherwise>
									</c:choose></td>
								<td class="td-manage">${userList.userCreateTime}</td>
								<td class="td-manage-new"><c:choose>
										<c:when test="${userList.userState=='可用'}">
											<a style="text-decoration: none"
												onClick="product_stop(this,${userList.userID})"
												href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe615;</i></a>
										</c:when>
										<c:otherwise>
											<a style="text-decoration: none"
												onClick="product_start(this,${userList.userID})" href="javascript:;"
												title="启用"><i class="Hui-iconfont">&#xe614;</i></a>
										</c:otherwise>
									</c:choose>&nbsp;&nbsp;&nbsp;
								<c:choose>
										<c:when test="${userList.userType=='会员'}">
											<a style="text-decoration: none"
												onClick="updateUserType_common(this,${userList.userID})"
												href="javascript:;" title="取消资格"><i class="Hui-iconfont">&#xe6f7;</i></a>
										</c:when>
										<c:otherwise>
											<a style="text-decoration: none"
												onClick="updateUserType_member(this,${userList.userID})" href="javascript:;"
												title="授予资格"><i class="Hui-iconfont">&#xe6cc;</i></a>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		var setting = {
			view : {
				dblClickExpand : false,
				showLine : false,
				selectedMulti : false
			},
			data : {
				simpleData : {
					enable : true,
					idKey : "id",
					pIdKey : "pId",
					rootPId : ""
				}
			},
			callback : {
				beforeClick : function(treeId, treeNode) {
					var zTree = $.fn.zTree.getZTreeObj("tree");
					if (treeNode.isParent) {
						zTree.expandNode(treeNode);
						return false;
					} else {
						//demoIframe.attr("src",treeNode.file + ".html");
						return true;
					}
				}
			}
		};

		$('.table-sort').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [ {
				"orderable" : false,
				"aTargets" : [ 0, 7 ]
			} // 制定列不参与排序
			]
		});
		/*用户-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-查看*/
		function product_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url+id
			});
			layer.full(index);
		}
		/*用户-审核*/
		function product_shenhe(obj, id) {
			layer
					.confirm(
							'审核文章？',
							{
								btn : [ '通过', '不通过' ],
								shade : false
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="product_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">可用</span>');
								$(obj).remove();
								layer.msg('可用', {
									icon : 6,
									time : 1000
								});
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="product_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-danger radius">未通过</span>');
								$(obj).remove();
								layer.msg('未通过', {
									icon : 5,
									time : 1000
								});
							});
		}
		/*用户-停用*/
		function product_stop(obj, userID) {
			layer
					.confirm(
							'确认要停用该用户吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateUserState.form',
									data : {
										userID : userID,
										userState:"停用"
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="product_start(this,${userList.userID})" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe614;</i></a>');
									         $(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-defaunt radius">停用</span>');
									$(obj).remove();
									layer.msg('已停用!', {
										icon : 5,
										time : 1000
									});
									setTimeout(function(){ location.replace(location.href); }, 1000);
									}
									},
									error : function(data) {
										console.log(data.msg);
									},
								});
							});
		}

		/*用户-启用*/
		function product_start(obj, userID) {;
			layer
					.confirm(
							'确认要启用该用户吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateUserState.form',
									data : {
										userID : userID,
										userState:"可用"
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="product_stop(this,${userList.userID})" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe615;</i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-success radius">可用</span>');
									$(obj).remove();
									layer.msg('已启用!', {
										icon : 6,
										time : 1000
									});
										setTimeout(function(){ location.replace(location.href); }, 1000);
									}
									},
									error : function(data) {
										console.log(data.msg);
									},
								});
							});
		}
		
		/*用户-取消资格*/
		function updateUserType_common(obj, userID) {
			layer
					.confirm(
							'确认要取消该用户的会员资格吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateUserState.form',
									data : {
										userID : userID,
										userType:"普通用户"
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="updateUserType_member(this,${userList.userID})" href="javascript:;" title="授予资格"><i class="Hui-iconfont">&#xe6cc;</i></a>');
									         $(obj)
											.parents("tr")
											.find(".td-status-new")
											.html(
													'<span class="label label-defaunt radius">普通用户</span>');
									$(obj).remove();
									layer.msg('已取消会员资格!', {
										icon : 5,
										time : 1000
									});
									setTimeout(function(){ location.replace(location.href); }, 1000);
									}
									},
									error : function(data) {
										console.log(data.msg);
									},
								});
							});
		}

		/*用户-授予会员资格*/
		function updateUserType_member(obj, userID) {;
			layer
					.confirm(
							'确认为该用户授予会员资格么吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateUserState.form',
									data : {
										userID : userID,
										userType:"会员"
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="updateUserType_common(this,${userList.userID})" href="javascript:;" title="取消资格"><i class="Hui-iconfont">&#xe6f7;</i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status-new")
											.html(
													'<span class="label label-success radius">会员</span>');
									$(obj).remove();
									layer.msg('已授予会员资格!', {
										icon : 6,
										time : 1000
									});
										setTimeout(function(){ location.replace(location.href); }, 1000);
									}
									},
									error : function(data) {
										console.log(data.msg);
									},
								});
							});
		}

		/*用户-申请上线*/
		function product_shenqing(obj, id) {
			$(obj).parents("tr").find(".").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}
	</script>
</body>
</html>