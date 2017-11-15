<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>信息添加</title>
  <meta name="renderer" content="webkit">
  <link rel="stylesheet" href="css/layui.css"  media="all">
    <link rel="stylesheet" href="css/modules/laydate/default/laydate.css" />
    <style>
    	.error{
    		color: red;
    	}
    </style>
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 5px; ;">
  <legend style="margin-left: 100px">检讨项目信息</legend>
</fieldset>
 
<form  action="/npi.test/ITEM_DoItemsInsert" method="post" name="form1" id="form1" enctype="multipart/form-data">
<div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">客户名称</label>
    <div class="layui-input-block">
      <input type="text" name="cusname" id="cusname"  class="layui-input">
    </div>
  </div>
</div>
  <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">专案名称</label>
    <div class="layui-input-block">
      <input type="text" name="proname"  id="proname" class="layui-input">
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
  </div>
   <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">检讨项目</label>
    <div class="layui-input-block">
      <input type="text" name="insproject" id="insproject" lay-verify="required"   class="layui-input">
    </div>
  </div>
  </div>
     <div class="layui-form-item">
  	<div class="layui-inline">
    <label class="layui-form-label">问题</label>
    <div class="layui-input-block">
      <input type="text" name="item" id ="item" lay-verify="required"   class="layui-input">
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
               请选择图片：<input id="pic" name="pic" type="file" />
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
	<script type="text/javascript" src="js/jquery-3.2.1.js" ></script>
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