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
<title>评论列表</title>
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
			评论管理 <span class="c-gray en">&gt;</span> 评论列表 <a
				class="btn btn-success radius r"
				style="line-height: 1.6em; margin-top: 3px"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="page-container">
			<div class="text-c">
				<form id="searchform" method="POST" action="comment-list.form">
					<input type="text" name="commentContent" id="" placeholder="文章标题或评论内容"
						style="width: 250px" class="input-text">
					<button name="" id="" class="btn btn-success" type="submit">
						<i class="Hui-iconfont">&#xe665;</i> 搜评论
					</button>
				</form>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				 <span class="r">共有数据：<strong>${commentLists.size()}</strong>
					条
				</span>
			</div>
			<div class="mt-20">
				<table
					class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="40" style="display: none"></th>
							<th width="40">序号</th>
							<th width="60">评论用户</th>
							<th width="250">所属文章</th>
							<th width="300">评论内容</th>
							<th width="60">状态</th>
							<th width="180">评论时间</th>
							<th width="60">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${commentLists}" var="commentList"
							varStatus="status">
							<tr class="text-c va-m">
								<td style="display: none"></td>
								<td class="td-manage">${status.index+1}</td>
								<td class="td-manage">${commentList.user.userName}</td>
								<td class="td-manage">${commentList.article.articleTitle}</td>
								<td class="td-manage">${commentList.commentContent}</td>
								<td class="td-status"><c:choose>
										<c:when test="${commentList.commentState=='显示'}">
											<span class="label label-success radius">${commentList.commentState}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-defaunt radius">${commentList.commentState}</span>
										</c:otherwise>
									</c:choose></td>
								<td class="td-manage">${commentList.commentTime}</td>
								<td class="td-manage-new"><c:choose>
										<c:when test="${commentList.commentState=='显示'}">
											<a style="text-decoration: none"
												onClick="comment_stop(this,${commentList.commentID})"
												href="javascript:;" title="折叠"><i class="Hui-iconfont">&#xe60e;</i></a>
										</c:when>
										<c:otherwise>
											<a style="text-decoration: none"
												onClick="comment_start(this,${commentList.commentID})"
												href="javascript:;" title="显示"><i class="Hui-iconfont">&#xe605;</i></a>
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
		/*评论-折叠*/
		function comment_stop(obj, commentID) {
			layer
					.confirm(
							'确认要折叠此评论吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateCommonState.form',
									data : {
										commentID : commentID,
										commentState:'折叠'
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="comment_start(this,${comment.commentID})" href="javascript:;" title="显示"><i class="Hui-iconfont">&#xe605;</i></a>');
									         $(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-defaunt radius">折叠</span>');
									$(obj).remove();
									layer.msg('折叠!', {
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

		/*评论-显示*/
		function comment_start(obj, commentID) {
			layer
					.confirm(
							'确认要显示吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateCommonState.form',
									data : {
										commentID : commentID,
										commentState:'显示'
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="comment_stop(this,${comment.commentID})" href="javascript:;" title="折叠"><i class="Hui-iconfont">&#xe60e;</i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-success radius">显示</span>');
									$(obj).remove();
									layer.msg('显示!', {
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
	</script>
</body>
</html>