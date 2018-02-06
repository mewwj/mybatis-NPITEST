	<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>信息展示</title>
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="css/search.css" rel="stylesheet">
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrapValidator.css" />
		<link rel="stylesheet" href="css/bootstrap-datepicker.css" />
		<link rel="stylesheet" href="css/bootstrap-datetimepicker.css" />
		<link rel="stylesheet" href="css/timepicker.less" />
		<link rel="stylesheet" href="css/bootstrap-timepicker.css" />
		    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    	<!--[if lt IE 7]>
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <![endif]-->
<style type="text/css">
			div{
	border:none;
  }
table {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-collapse: collapse;
}
th,td{
	padding: 10px;
	border: solid #666666 1px;
	background-color: #ffffff;
}
</style>
	</head>
	<body> 
	     <!-- NPI表头维护界面 -->     
	<div class="page-header">
	  		<h1>检讨信息<small style="color: #28A4C9;">添加检讨信息</small></h1>
	</div>
 
<form  action="/npi.test/ITEM_DoItemsInsert" class="form-horizontal required-validate"
	        role="form" method="post" name="form1" id="form1" enctype="multipart/form-data">
	        
	<div class="form-group">
	    <label for="InputCusname" class="col-sm-1 control-label">客户名称</label>
	    <div class="col-sm-3">
	    <input type="text" name="cusname" class="form-control" id="InputCusname" placeholder="客户名称">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="InputProname" class="col-sm-1 control-label">专案名称</label>
	    <div class="col-sm-3">
	    <input type="text" name="proname" class="form-control" id="proname" placeholder="专案名称">
	    </div>
  	</div>
  	<div class="form-group">
	    <label for="InputProname" class="col-sm-1 control-label">专案名称</label>
	    <div class="col-sm-3">
	    <input type="text" name="proname" class="form-control" id="proname" placeholder="专案名称">
	    </div>
  	</div>
  	

  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">专案名称</label>
    <div class="layui-input-block">
      <input type="text" name="proname"  id="proname" class="layui-input">
    </div>
  </div>
  </div>
 
  <div class="layui-form-item">
			    <label class="layui-form-label">选择阶段</label>
			    <div class="layui-input-inline">
			      <select name="province" id="province" onchange="changeSelect(this.selectedIndex)" style="width: 100px;">
					  <option selected  disabled="disabled">-- 请选择 --</option>	
					  </select> 
 			    </div>
			    <div class="layui-input-inline">
			    	<select name="stage" id="stage" style="width: 100px;">
			    	<option selected  disabled="disabled">-- 请选择 --</option>
			    	</select>	 
			    </div>
			  </div>
   
   
   <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">检讨项目</label>
    <div class="layui-input-block">
      <input type="text" name="insproject" id="insproject"    class="layui-input">
    </div>
  </div>
  </div>
     <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">问题</label>
    <div class="layui-input-block">
      <input type="text" name="item" id ="item"    class="layui-input">
    </div>
  </div>
  </div>
  <div class="layui-form-item">
  <div class="layui-inline">
      <label class="layui-form-label">问题点</label>
      <div class="layui-input-block">
        <input type="text" name="items" id="items"   class="layui-input">
      </div>
    </div>
    </div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">不良问题点</label>
    <div class="layui-input-block">
      <input type="text" name="problems" id="problems" class="layui-input">
               图片：<input id="pic" name="pic" type="file" />
    </div>
  </div>
  </div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">不良数</label>
    <div class="layui-input-block">
      <input type="text" name="ng" id="ng"  class="layui-input">
    </div>
  </div>
  </div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">缺陷等级</label>
    <div class="layui-input-block">
      <input type="text" name="defectlevels" id="defectlevels"  class="layui-input">
    </div>
  </div>
  </div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">提出人</label>
    <div class="layui-input-block">
      <input type="text" name="exhibitor" id="exhibitor"   class="layui-input">
    </div>
  </div>
  </div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">计划时间</label>
    <div class="layui-input-block">
      <input type="text" name="plantime" id="plantime"    class="layui-input">
    </div>
  </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
      <a class="layui-btn" href="/npi.test/HEAD_ToHeadMain" >返回</a>
    </div>
  </div>
</form>

	<script src="js/layui.all.js" charset="utf-8"></script>
	<script src="js/jquery.js"></script>      
	<script type="text/javascript" src="js/jquery.js" ></script>
	<script type="text/javascript" src="js/jquery.validate.js" ></script>
	<script>
		$().ready(function() {
	// 在键盘按下并释放及提交后验证提交表单
	  $("#form1").validate({
		rules: {
	    cusname: "required",
	    proname:"required",
	    insproject:"required",
	    item: "required",
	    items: "required",
	    problems:"required",
	    ng: "required",
		defectlevels: "required",
	    exhibitor: "required",
	    plantime:"required"
	    },
	    messages: {
	    cusname: "请填写客户名称！",
	    proname:"请填写专案名称！",
	    insproject:"不能为空！",
	    item: "不能为空！",
	    items: "不能为空！",
	    problems:"不能为空！",
	    ng: "不能为空！",
		defectlevels: "不能为空！",
	    exhibitor: "不能为空！",
	    plantime:"不能为空！"
	    }
	});
});
		
	</script>
<script language="JavaScript">
	layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //执行一个laydate实例
			  laydate.render({
			    elem: '#plantime' //指定元素
			  });
			});
	
	var arr_province = ["--请选择--","EV","DV","PV","MP"];
    var arr_city = [
                    ["--请选择--"],
                    ["--请选择--","EV1","EV2","EV3","EV4","EV5","EV6"],
                    ["--请选择--","DV1","DV2","DV3","DV4","DV5","DV6"],
                    ["--请选择--","PV1","PV2","PV3","PV4","PV5","PV6"],
                    ["--请选择--","MP1"]
                    ];
    //网页加载完成，初始化菜单
     window.onload = init;//传入函数地址
function init(){
    //首先获取对象
    var province = document.form1.province;
    var city = document.form1.stage;

    //指定省份中<option>标记的个数
    province.length = arr_province.length;

    //循环将数组中的数据写入<option>标记中
    for(var i=0;i<arr_province.length;i++){
        province.options[i].text = arr_province[i];
        province.options[i].value = arr_province[i];
    }

    //修改省份列表的默认选择项
    var index = 0;
    province.selectedIndex = index;

    //指定城市中<option>标记的个数
    city.length = arr_city[index].length;

    //循环将数组中的数据写入<option>标记中
    for (var j = 0; j<arr_city[index].length;j++) {
        city.options[j].text = arr_city[index][j];
        city.options[j].value = arr_city[index][j];
    }

}

function  changeSelect(index){
    //选择对象
    var city = document.form1.stage;
    //修改省份列表的选择项
     var province = document.form1.province;
    province.selectedIndex = index;
    //指定城市中<option>标记的个数
    city.length = arr_city[index].length;
    //循环将数组中的数据写入<option>标记中
    for (var j = 0; j<arr_city[index].length;j++) {
        city.options[j].text = arr_city[index][j];
        city.options[j].value = arr_city[index][j];
    }
}


</script>


</body>
</html>