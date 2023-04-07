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
<title>花草列表</title>
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
			花草管理 <span class="c-gray en">&gt;</span> 花草列表 <a
				class="btn btn-success radius r"
				style="line-height: 1.6em; margin-top: 3px"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="page-container">
			<div class="text-c">
			<form id="searchform" method="POST" action="searchPlant.form">
				日期范围： <input type="text" name="startTime"
					onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
					id="logmin" class="input-text Wdate" style="width: 120px;">
				- <input type="text" name="endTime"
					onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
					id="logmax" class="input-text Wdate" style="width: 120px;">
				<input type="text" name="plantName" id="" placeholder=" 花草名称"
					style="width: 250px" class="input-text">
				<button name="" id="" class="btn btn-success" type="submit">
					<i class="Hui-iconfont">&#xe665;</i> 搜花草
				</button>
			</form>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l"><a href="javascript:;" onclick="plantDel()"
					class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
						批量删除</a> <a class="btn btn-primary radius"
					onclick="product_add('添加花草','plant-add.form')"
					href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加花草</a></span> <span
					class="r">共有数据：<strong>${plantLists.size()}</strong> 条
				</span>
			</div>
			<div class="mt-20">
				<table
					class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="40"><input name="" type="checkbox" value=""></th>
							<th width="40">序号</th>
							<th width="60">花草名称</th>
							<th width="250">英文名称</th>
							<th width="150">所属地区</th>
							<th width="60">浏览次数</th>
							<th width="60">获赞次数</th>
							<th width="60">收藏次数</th>
							<th width="60">花草状态</th>
							<th width="150">上架时间</th>
							<th width="100">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${plantLists}" var="plantList"
							varStatus="status">
							<tr class="text-c va-m">
								<td><input name="deleteCheck" class="deleteCheck"
									type="checkbox" value="${plantList.plantID}"></td>
								<td class="td-manage">${status.index+1}</td>
								<td class="td-manage"><a data-href="plantDetails-list.form" data-title="花草详情"
							    href="plantDetails-list.form?plantID=${plantList.plantID}">${plantList.plantName}</a></td>
								<td class="td-manage">${plantList.plantEnglishName}</td>
								<td class="td-manage">${plantList.plantAddress}</td>
								<td><span class="price">${plantList.viewTimes}</span>次</td>
								<td><span class="price">${plantList.plantLikesNumber}</span>次</td>
								<td><span class="price">${plantList.plantCollectNumber}</span>次</td>
								<td class="td-status"><c:choose>
										<c:when test="${plantList.plantState=='已上架'}">
											<span class="label label-success radius">${plantList.plantState}</span>
										</c:when>
										<c:otherwise>
											<span class="label label-defaunt radius">${plantList.plantState}</span>
										</c:otherwise>
									</c:choose></td>
								<td class="td-manage">${plantList.plantCreateTime}</td>
								<td class="td-manage-new"><c:choose>
										<c:when test="${plantList.plantState=='已上架'}">
											<a style="text-decoration: none"
												onClick="product_stop(this,${plantList.plantID})"
												href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>
										</c:when>
										<c:otherwise>
											<a style="text-decoration: none"
												onClick="product_start(this,${plantList.plantID})" href="javascript:;"
												title="上架"><i class="Hui-iconfont">&#xe603;</i></a>
										</c:otherwise>
									</c:choose> 
									<a style="text-decoration: none" class="ml-5"
									onClick="plantDetails_add('花草详情添加','plantDetails-add.form',${plantList.plantID})"
									href="javascript:;" title="添加"><i class="Hui-iconfont">&#xe600;</i></a>
									<a style="text-decoration: none" class="ml-5"
									onClick="plant_edit('花草编辑','plant-edit.form',${plantList.plantID},'${plantList.plantState}')"
									href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
									<a style="text-decoration: none" class="ml-5"
									onClick="product_del(this,${plantList.plantID})"
									href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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
		/*花草-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*花草-查看*/
		function product_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url+id
			});
			layer.full(index);
		}
		/*花草-审核*/
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
		/*花草-下架*/
		function product_stop(obj, plantID) {
			layer
					.confirm(
							'确认要下架吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'downPlant.form',
									data : {
										plantID : plantID
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="product_start(this,${plantList.plantID})" href="javascript:;" title="上架"><i class="Hui-iconfont">&#xe603;</i></a>');
									         $(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-defaunt radius">已下架</span>');
									$(obj).remove();
									layer.msg('已下架!', {
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

		/*花草-上架*/
		function product_start(obj, plantID) {;
			layer
					.confirm(
							'确认要上架吗？',
							function(index) {
								$.ajax({
									type : 'POST',
									url : 'upPlant.form',
									data : {
										plantID : plantID
									},
									contentType : "application/x-www-form-urlencoded",
									dataType : "text",
									success : function(data) {
										if(data!=null){
											$(obj)
											.parents("tr")
											.find(".td-manage-new")
											.prepend(
													'<a style="text-decoration:none" onClick="product_stop(this,${plantList.plantID})" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-success radius">已上架</span>');
									$(obj).remove();
									layer.msg('已上架!', {
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

		/*花草-申请上线*/
		function product_shenqing(obj, id) {
			$(obj).parents("tr").find(".td-status").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}
		
		/*花草详情-添加*/
		function plantDetails_add(title, url, plantID) {
		    url+='?plantID='+plantID;
			layer_show(title, url, '', 510);
		}

		/*花草-编辑*/
		function plant_edit(title, url, plantID, plantState) {
			if(plantState=='已上架'){
				layer.msg('已上架的花草不可编辑!',{icon: 5,time:2000});
			}else{
			var index = layer.open({
				type : 2,
				title : title,
				content : url+'?plantID='+plantID
			});
			layer.full(index);
			}
		}

		/*花草-删除*/
		function product_del(obj, plantID) {
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : 'deletePlantByID.form',
					data : {
						plantID : plantID
					},
					contentType : "application/x-www-form-urlencoded",
					type : "post",
					dataType : "text",
					success : function(data) {
						if(data!=null){
						//$(obj).parents("tr").remove();
						layer.msg('已删除!', {
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
		
		/*花草-多选删除*/
		function plantDel(){
			var result="";
			var count=0;
		    //将所有已选的值拼接成字符串
			$(".deleteCheck").each(function(){    
			    if($(this).is(':checked')){
			    	result+=$(this).val()+",";
			    	count++;
			    }else{}
			  });
			if(count==0){
				return;
			}else{
			layer.confirm('确认要删除这'+count+'个选项吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : 'deletePlant.form',
					data : {
						plantDeleteStr : result
					},
					contentType : "application/x-www-form-urlencoded",
					type : "post",
					dataType : "text",
					success : function(data) {
						if(data!=null){
						layer.msg('已全部删除!', {
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

		}
	</script>
</body>
</html>