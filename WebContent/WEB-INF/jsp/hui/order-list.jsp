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
<title>订单列表</title>
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
			订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a
				class="btn btn-success radius r"
				style="line-height: 1.6em; margin-top: 3px"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="page-container">
			<div class="text-c">
				<form id="searchform" method="POST" action="order-list.form">
					日期范围： <input type="text" name="startTime"
						onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
						id="logmin" class="input-text Wdate" style="width: 120px;">
					- <input type="text" name="endTime"
						onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
						id="logmax" class="input-text Wdate" style="width: 120px;">
					<input type="text" name="plantDetails.plantDescribe" id="" placeholder=" 订单名称或用户昵称"
						style="width: 250px" class="input-text">
					<button name="" id="" class="btn btn-success" type="submit">
						<i class="Hui-iconfont">&#xe665;</i> 搜订单
					</button>
				</form>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l"><a href="order-list.form?orderState=待支付" 
					class="btn btn-secondary radius"><i class="Hui-iconfont">&#xe665;</i>
						待支付</a> <a class="btn btn-success radius"
					 href="order-list.form?orderState=已支付"><i
						class="Hui-iconfont">&#xe665;</i> 已支付</a> <a class="btn btn-warning radius"
					 href="order-list.form?orderState=已发货"><i
						class="Hui-iconfont">&#xe665;</i> 已发货</a> <a class="btn btn-danger radius"
					 href="order-list.form?orderState=已完成"><i
						class="Hui-iconfont">&#xe665;</i> 已完成</a></span> <span class="r">共有数据：<strong>${orderLists.size()}</strong>
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
							<th width="60">订单编码</th>
							<th width="60">用户昵称</th>
							<th width="60">详情描述</th>
							<th width="60">订单数量</th>
							<th width="60">订单金额</th>
							<th width="60">支付方式</th>
							<th width="60">订单状态</th>
							<th width="150">提交时间</th>
							<th width="40">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orderLists}" var="orderList"
							varStatus="status">
							<tr class="text-c va-m">
								<td style="display: none"></td>
								<td class="td-manage">${status.index+1}</td>
								<td class="td-manage">${orderList.orderCode}</td>
								<td class="td-manage">${orderList.user.userName}</td>
								<td class="td-manage">${orderList.plantDetails.plantDescribe}</td>
								<td><span class="price">${orderList.orderNumber}</span>件</td>
								<td><span class="price">${orderList.orderAmount}</span>元</td>
								<td class="td-manage">${orderList.paymentMethod}</td>
								<td class="td-status"><c:choose>
										<c:when test="${orderList.orderState=='已发货'}">
											<span class="label label-warning radius">${orderList.orderState}</span>
										</c:when>
										<c:when test="${orderList.orderState=='已支付'}">
											<span class="label label-success radius">${orderList.orderState}</span>
										</c:when>
										<c:when test="${orderList.orderState=='已完成'}">
											<span class="label label-danger radius">${orderList.orderState}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-secondary radius">${orderList.orderState}</span>
										</c:otherwise>
									</c:choose></td>
								<td class="td-manage">${orderList.orderCreateTime}</td>
								<td class="td-manage-new"><c:if
										test="${orderList.orderState=='已支付'}">
										<a style="text-decoration: none"
											onClick="sendOutOrder(this,${orderList.orderID})"
											href="javascript:;" title="发货"><i class="Hui-iconfont">&#xe669;</i></a>
									</c:if></td>
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
		/*订单-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*订单-查看*/
		function product_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url+id
			});
			layer.full(index);
		}
		/*订单-审核*/
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
												'<span class="label label-success radius">已上架</span>');
								$(obj).remove();
								layer.msg('已上架', {
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

		/*订单-发货*/
		function sendOutOrder(obj, orderID) {;
			layer
					.confirm(
							'确认要发货吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'updateOrder.form',
									data : {
										orderID : orderID,
										orderState:"已发货"
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
									if(data!=null){
									layer.msg('已发货!', {
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

		/*订单-申请上线*/
		function product_shenqing(obj, id) {
			$(obj).parents("tr").find(".td-status").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}

		
	</script>
</body>