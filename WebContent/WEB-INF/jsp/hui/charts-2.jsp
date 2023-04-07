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
<title>花草浏览量Top5</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		数据管理 <span class="c-gray en">&gt;</span> 花草浏览量Top5 <a
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

		var palntList = [];
		var labelList = [];
		//查询到按浏览次数排序的列表
		$.ajax({
			type : 'POST',
			url : 'findPlantOrderByViewTimes.form',
			data : {},
			contentType : "application/x-www-form-urlencoded",
			dataType : "json",
			success : function(data) {
				if (data != null) {
					var newlength=data.length>5?5:data.length;
					for (var i = 0; i < newlength; i++) {
						//展示数据
						var obj={};
						obj.name=data[i].plantName;
						obj.value=data[i].viewTimes;
						palntList.push(obj);
						
						//标签
						labelList.push(data[i].plantName);
						
					}
					;
				 }
     			
				
				// 基于准备好的dom，初始化echarts实例
				var myChart = echarts.init(document.getElementById('main'));

				option = {
					    title: {
					        text: '花草浏览量Top5',
					        subtext: '花草网',
					        left: 'center'
					    },
					    tooltip: {
					        trigger: 'item',
					        formatter: '{a} <br/>{b} : {c} ({d}%)'
					    },
					    legend: {
					        // orient: 'vertical',
					        // top: 'middle',
					        bottom: 10,
					        left: 'center',
					        data: labelList
					    },
					    series: [
					        {
					            type: 'pie',
					            radius: '65%',
					            center: ['50%', '50%'],
					            selectedMode: 'single',
					            data: palntList,
					            emphasis: {
					                itemStyle: {
					                    shadowBlur: 10,
					                    shadowOffsetX: 0,
					                    shadowColor: 'rgba(0, 0, 0, 0.5)'
					                }
					            }
					        }
					    ]
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