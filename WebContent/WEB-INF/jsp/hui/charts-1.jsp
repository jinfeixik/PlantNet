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
<script src="js/echarts.min.js"></script>
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
<!-- 引入 echarts.js -->
<title>近七天花草收藏量与交易额分析</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		数据管理 <span class="c-gray en">&gt;</span> 近七天花草收藏量与交易额分析 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div id="main" style="width: 1300px; height: 600px;"></div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
	<script type="text/javascript"
		src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
	<script type="text/javascript">
		/*获取近7天时间*/
		function getDate(index) {
			var sevenDate = [];
			var myDate = new Date(); //获取系统当前时间
			var date = new Date(myDate.getTime()
					- ((index - 1) * 24 * 60 * 60 * 1000)).toLocaleDateString();
			return date;
		}

		var countOrder = [];
		var orderAmount = [];
		var collectNumber = [];
		//查询到近7天的订单数据
		$.ajax({
			type : 'POST',
			url : 'searchOrderByDate.form',
			data : {},
			contentType : "application/x-www-form-urlencoded",
			dataType : "json",
			success : function(data) {
				if (data != null) {
					for (var i = 0; i < data.orderList.length; i++) {
						countOrder.push(data.orderList[i].orderCount);
						orderAmount.push(data.orderList[i].sumOrderAmount);
					}
					;
					for (var i = 0; i < data.plantCollectList.length; i++) {
						collectNumber.push(data.plantCollectList[i].sumCollectNumber);
					};
				 }
     			
				
				// 基于准备好的dom，初始化echarts实例
				var myChart = echarts.init(document.getElementById('main'));

				// 指定图表的配置项和数据
				var colors = [ '#5793f3', '#d14a61', '#675bba' ];

				option = {
					color : colors,

					tooltip : {
						trigger : 'axis',
						axisPointer : {
							type : 'cross'
						}
					},
					grid : {
						right : '20%'
					},
					toolbox : {
						feature : {
							dataView : {
								show : true,
								readOnly : false
							},
							restore : {
								show : true
							},
							saveAsImage : {
								show : true
							}
						}
					},
					legend : {
						data : [ '订单数量', '订单金额', '收藏数量' ]
					},
					xAxis : [ {
						type : 'category',
						axisTick : {
							alignWithLabel : true
						},
						data : [ getDate(7), getDate(6), getDate(5), getDate(4),
								getDate(3), getDate(2), getDate(1) ]
					} ],
					yAxis : [ {
						type : 'value',
						name : '订单数量',
						min : 0,
						max : 10,
						position : 'right',
						axisLine : {
							lineStyle : {
								color : colors[0]
							}
						},
						axisLabel : {
							formatter : '{value} 单'
						}
					}, {
						type : 'value',
						name : '订单金额',
						min : 0,
						max : 250,
						position : 'right',
						offset : 80,
						axisLine : {
							lineStyle : {
								color : colors[1]
							}
						},
						axisLabel : {
							formatter : '{value} 元'
						}
					}, {
						type : 'value',
						name : '收藏数量',
						min : 0,
						max : 10,
						position : 'left',
						axisLine : {
							lineStyle : {
								color : colors[2]
							}
						},
						axisLabel : {
							formatter : '{value} 次'
						}
					} ],
					series : [
							{
								name : '订单数量',
								type : 'bar',
								data : countOrder
							},
							{
								name : '订单金额',
								type : 'bar',
								yAxisIndex : 1,
								data : orderAmount
							},
							{
								name : '收藏数量',
								type : 'line',
								yAxisIndex : 2,
								data : collectNumber
							} ]
				};

				// 使用刚指定的配置项和数据显示图表。
				myChart.setOption(option);
			},
			error : function(data) {
				console.log(data.msg);
			},
		});
	</script>
</body>
</html>