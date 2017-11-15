<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>表头添加</title>
  <meta name="renderer" content="webkit">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <link rel="stylesheet" href="css/modules/laydate/default/laydate.css" />

</head>
<body>
     <!-- NPI表头维护界面 -->     
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 5px;">
	  <legend style="magrin-left:100px">表头信息添加</legend>
	</fieldset>
	<!--  action="/npi.test/HEAD_DoHeadInsert"-->
	      	<div style="margin-left:120px;">
	      	<form  name="form1" id="form1" action="/npi.test/HEAD_DoHeadInsert" >
			    <div class="layui-form-item" >
			    <label class="layui-form-label">选择阶段</label>
			    <div class="layui-input-inline">
			      <select name="province" id="province"   onchange="changeSelect(this.selectedIndex)" style="width: 100px;">
			       <option selected  disabled="disabled">-- 请选择 --</option>
			      </select>
			    </div>
			    <div class="layui-input-inline">
			    	<select name="stage" id="stage" style="width: 100px;">
			    	<option   selected  disabled="disabled">-- 请选择 --</option>
			    	</select>
			    </div>
			  </div>
			  
			   <div class="layui-form-item">
			    <label class="layui-form-label">客户名称</label>
			    <div class="layui-input-block">
			      <input type="text" name="cusname"   class="layui-input" style="width: 300px;">
    		    </div>
  		       </div>
  		    
			   <div class="layui-form-item">
			  <label class="layui-form-label">专案名称</label>
			  <div class="layui-input-block">
			  <input type="text"  value="" name="proname" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			 <div class="layui-form-item">
			  <label class="layui-form-label">机种代码</label>
			  <div class="layui-input-block">
			  <input type="text"  value="" name="modeltype" class="layui-input" style="width: 300px;"s>
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">试产日期</label>
			  <div class="layui-input-block">
			  <input type="text"  id="trydate" name="trydate" class="layui-input" style="width: 300px;">
			  </div>
			  </br>
			  <div class="layui-form-item">
			    <label class="layui-form-label">试产时间</label>
			    <div class="layui-input-block">
			      <input type="text" id="trytime" name="trytime"   class="layui-input" style="width: 300px;">
    		  </div>
  		    </div>
  		    
			  <div class="layui-form-item">
			  <label class="layui-form-label">生产班别</label>
			  <div class="layui-input-block">
			  <input type="text"  value="" name="team" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">试产地点</label>
			  <div class="layui-input-block">
			  <input type="text"  value="" name="trialsite" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  </div>
			  <div class="layui-form-item">
			  <label class="layui-form-label">投入数量</label>
			  <div class="layui-input-block">
			  <input type="text"  onChange="calc()" id="number" name="number" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">良品数量</label>
			  <div class="layui-input-block">
			  <input type="text"  onChange="calc()" id="goodnumber" name="goodnumber" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">直通率</label>
			  <div class="layui-input-block">
			  <input type="text"   id="goodrate" name="goodrate" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-input-block">
			  <button type="submit" value="提交" name="trydate" class="layui-btn" >提交</button>
			  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              <a class="layui-btn" href="/npi.test/HEAD_ToHeadMain" >返回</a>
			  </div>
			 
    </form>
     </div>
		<script type="text/javascript" src="js/layui.all.js" ></script>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/jquery.validate.js" ></script>
		<script type="text/javascript" src="js/messages_zh.js" ></script>
		<script type="text/javascript" src="lay/modules/laydate.js" ></script>
		<script >
			$().ready(function() {
	// 在键盘按下并释放及提交后验证提交表单
	  $("#form1").validate({
		  	rules: {
	    	province: "required",
	    	cusname: "required",
	     	 proname:"required",
	     	 modeltype:"required",
	      trydate: {
	        required:true,
	        dateISO:true
	      },
	      trytime: "required",
	      team:"required",
	     trialsite: "required",
		 number: {
			 required: true,
			 number:true
			 },
	    goodnumber: {
	    	 number:true,
			  required: true,
				 }
	    },
	    messages: {
	    	province: "请选择阶段！",
	    	cusname:"客户名称不能为空！",
	      proname: "专案名称不能为空！",
	      modeltype: {
	        required: "不能为空！",
	    	number:"必须为数字！"	   
	    	},
	      trydate: {
	        required:  "不能为空！",
	        dateISO: "日期格式不正确！"
	      },
	      trytime: "不能为空!",	   
	      team:"不能为空!",
	     trialsite:"不能为空!",
		number: {
			 required: "不能为空!",
			 number: "必须为数字!" },
	    goodnumber: {
	    	  number: "必须为数字!",
			  required: "不能为空!"
				 }
	    }
	});
});
		</script>
		<script >
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //执行一个laydate实例
			  laydate.render({
			    elem: '#trytime' //指定元素
			     ,type: 'time'
			  });
			   laydate.render({
			    elem: '#trydate' //指定元素
			  });
			});
		
		function calc(){
			  a = document.getElementById("number").value;
			  b =document.getElementById("goodnumber").value;
			 document.getElementById("goodrate").value=((b/a)*100).toFixed(2)  + '%'  ;
		 }
		 window.onload = calc;
		 var arr_province = ["--请选择--","EV","DV","PV","MP"];
		 var arr_stage = [
		 				 ["--请选择--"],
		                 ["--请选择--","EV1","EV2","EV3","EV4","EV5","EV6"],
		                 ["--请选择--","DV1","DV2","DV3","DV4","DV5","DV6"],
		                 ["--请选择--","PV1","PV2","PV3","PV4","PV5","PV6"],
		                 ["--请选择--","MP1"]
		             ];
		 //网页加载  完成，初始化菜单
		 window.onload = init;//传入函数地址
		 function init(){
		     //首先获取对象
		     var province = document.form1.province;
		     var stage = document.form1.stage;
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
		     stage.length = arr_stage[index].length;
		     //循环将数组中的数据写入<option>标记中
		     for (var j = 0; j<arr_stage[index].length;j++) {
		     	stage.options[j].text = arr_stage[index][j];
		     	stage.options[j].value = arr_stage[index][j];
		     }
		 }
		 function  changeSelect(index){
		     //选择对象
		     var stage = document.form1.stage;
		      var province = document.form1.province;
		     //修改省份列表的选择项
		     province.selectedIndex = index;
		     //指定城市中<option>标记的个数
		     stage.length = arr_stage[index].length;
		     //循环将数组中的数据写入<option>标记中
		     for (var j = 0; j<arr_stage[index].length;j++) {
		     	stage.options[j].text = arr_stage[index][j];
		     	stage.options[j].value = arr_stage[index][j];
		     }
		 }

		 
		 
	 </script>
		</body>
		</html>