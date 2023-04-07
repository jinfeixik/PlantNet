<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>添加花草详情 - H-ui.admin v3.1</title>
<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form action="addPlantDetails.form" enctype="multipart/form-data" method="post" class="form form-horizontal" id="addPlantDetails">
		<div class="row cl">
		    <input type="text" class="input-text" value="${plantDetail.plantDetailsID}" name="plantDetailsID"  id="plantDetailsID" style="display:none">
		    <input type="text" class="input-text" value="${plantDetail.plantDetailsImage.plantDetailsImageID}" name="plantDetailsImageID"  id="plantDetailsImageID" style="display:none">
		    <input type="text" class="input-text" value="${plantID}" name="plantID"  id="plantID" style="display:none">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>花草名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${plantName}" placeholder="" id="plantName"  disabled>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>详情描述：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${plantDetail.plantDescribe}" placeholder="简单描述一下吧" id="plantDescribe" name="plantDescribe">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>价格：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${plantDetail.plantPrice}" placeholder="请填写数字" id="plantPrice" name="plantPrice">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>库存：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${plantDetail.plantStock}" placeholder="请填写数字" id="plantStock" name="plantStock">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>状态：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<div class="radio-box">
					<input name="plantDetailsState" value="启用" type="radio" id="sex-1" <c:if test="${plantDetail.plantDetailsState=='启用'}">checked</c:if>>
					<label for="sex-1">启用</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" value="停用" name="plantDetailsState" <c:if test="${plantDetail.plantDetailsState=='停用'}">checked</c:if>>
					<label for="sex-2">停用</label>
				</div>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>详情图片：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="ImagePath" class="input-file" id="ImagePath" value="${plantDetail.plantDetailsImage.plantDetailsImagePath}">
				</span> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">图片描述：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="plantDetailsImageDescribe" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" onKeyUp="">${plantDetail.plantDetailsImage.plantDetailsImageDescribe}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="button" onclick="submitPlantDetailsForm()" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-member-add").validate({
		rules:{
			username:{
				required:true,
				minlength:2,
				maxlength:16
			},
			sex:{
				required:true,
			},
			mobile:{
				required:true,
				isMobile:true,
			},
			email:{
				required:true,
				email:true,
			},
			uploadfile:{
				required:true,
			},
			
		},
		onkeyup:false,
	    focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			//$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			//parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
<script type="text/javascript">
function submitPlantDetailsForm(){
var ImagePath=$("#ImagePath").val();
	
	if($("#plantDescribe").val()==""){
    	layer.msg('请填写详情描述!',{icon: 5,time:2000});
    	
	}else if(!/(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/.test($("#plantPrice").val())){
    	layer.msg('请填写正确格式的价格!',{icon: 5,time:2000}); 
    	
    }else if(!/^[0-9]+$/.test($("#plantStock").val())){
    	layer.msg('请填写正确格式的库存!',{icon: 5,time:2000});
    	
    }else if($("#ImagePath").val()==""||!/\.(jpg|jpeg|png|GIF|JPG|PNG)$/.test(ImagePath.substring(ImagePath.lastIndexOf("."),ImagePath.length).toLowerCase())){
    	layer.msg('未添加图片或类型不为图片!',{icon: 5,time:2000});
    	
    }else{
    let formData = new FormData($('#addPlantDetails')[0]);
    //根据是否有详情编号来判断更新或添加
    if($("#plantDetailsID").val()!=""&&$("#plantDetailsID").val()!=null&&$("#plantDetailsID").val()!=undefined){
    	//更新
    	$.ajax({
    			url : "updatePlantDetails.form",
    			data : formData,
    			type : "post",
    			cache: false, 
    			processData: false,
    			contentType: false,
    			success : function(data) {			
    		    if(data!=null){
    			  layer.msg('花草详情更新成功!',{icon: 6,time:2000});
    			}				
    			}
    	});
    	setTimeout(function(){ window.parent.location.reload(); //刷新父页面
        layer_close(); }, 1000);
    }else{
    	//添加
    	$.ajax({
    			url : "addPlantDetails.form",
    			data : formData,
    			type : "post",
    			cache: false, 
    			processData: false,
    			contentType: false,
    			success : function(data) {			
    		    if(data!=null){
    			  layer.msg('花草详情添加成功!',{icon: 6,time:2000});
    			}				
    			}
    	
    	});
    	setTimeout(function(){ layer_close();}, 1000);
    }
    }
}
</script>
</body>
</html>