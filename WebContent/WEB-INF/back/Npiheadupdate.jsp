<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<link rel="stylesheet" href="css/layui.css"  media="all">
  <link rel="stylesheet" href="css/modules/laydate/default/laydate.css" />
  
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
	</head>
	<body>
     <!-- NPI表头维护界面 -->     
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 5px;">
	  <legend>表头数据更新</legend>
	</fieldset>
	<!--  action="/npi.test/HEAD_DoHeadInsert"-->
	      	<form  name="form1" action="/npi.test/HEAD_DoHeadUpdate" >
	      	     
	      	     <c:forEach items="${updateheadlist}" var="item" varStatus="status">
	      	     <div class="layui-form-item">
			    <label class="layui-form-label">id</label>
			    <div class="layui-input-inline">
				<input type="text" name="id" readonly="readonly"  value="${item.id}" border=none;>
			    </div>
			  </div>
			  
			    <div class="layui-form-item">
			    <label class="layui-form-label">阶段</label>
			    <div class="layui-input-inline">
				<input type="text" name="stage0"   value="${item.stage0}" class="layui-input" style="width: 200px;">
				<input type="text" name="stage"   value="${item.stage}" class="layui-input" style="width: 200px;">
			    </div>
			  </div>
			  
			   <div class="layui-form-item">
			    <label class="layui-form-label">客户名称</label>
			    <div class="layui-input-block">
			      <input type="text" name="cusname"  value="${item.cusname}" class="layui-input" style="width: 300px;">
    		    </div>
  		       </div>
  		    
			   <div class="layui-form-item">
			  <label class="layui-form-label">专案名称</label>
			  <div class="layui-input-block">
			  <input type="text"  value="${item.proname}" name="proname" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			 <div class="layui-form-item">
			  <label class="layui-form-label">机种代码</label>
			  <div class="layui-input-block">
			  <input type="text"  value="${item.modeltype}" name="modeltype" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">试产日期</label>
			  <div class="layui-input-block">
			  <input type="text" value="${item.trydate}" id="trydate" name="trydate" class="layui-input" style="width: 300px;">
			  </div>
			  </br>
			  <div class="layui-form-item">
			    <label class="layui-form-label">试产时间</label>
			    <div class="layui-input-block">
			      <input type="text" id="trytime" name="trytime" value="${item.trytime}"  class="layui-input" style="width: 300px;">
			          <script>
								
								</script>
    		  </div>
  		    </div>
  		    
			  <div class="layui-form-item">
			  <label class="layui-form-label">生产班别</label>
			  <div class="layui-input-block">
			  <input type="text"  value="${item.team}" name="team" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">试产地点</label>
			  <div class="layui-input-block">
			  <input type="text"  value="${item.trialsite}" name="trialsite" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  </div>
			  <div class="layui-form-item">
			  <label class="layui-form-label">投入数量</label>
			  <div class="layui-input-block">
			  <input type="text"  value="${item.number}" onChange="calc()" id="number" name="number" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">良品数量</label>
			  <div class="layui-input-block">
			  <input type="text"  onChange="calc()" value="${item.goodnumber}" id="goodnumber" name="goodnumber" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-form-item">
			  <label class="layui-form-label">直通率</label>
			  <div class="layui-input-block">
			  <input type="text"   id="goodrate" name="goodrate" value="${item.goodrate}" class="layui-input" style="width: 300px;">
			  </div>
			  </div>
			  
			  <div class="layui-input-block">
			  <input type="submit" value="提交" name="trydate" class="layui-btn" ></input>
			  <input type="reset"  value="重置"  class="layui-btn layui-btn-primary"></input>
			  </div>
			  </c:forEach>
    </form>
      <script type="text/javascript" src="js/layui.all.js" ></script>
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
		<script language="JavaScript">
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
	 </script>
		</body>
</html>