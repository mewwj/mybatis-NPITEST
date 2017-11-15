<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	  <meta charset="utf-8">
	  <title>信息展示</title>
	  <meta name="renderer" content="webkit">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	   <link rel="stylesheet" href="css/layui.css"  media="all">
	   <script type="text/javascript" src="lay/modules/laydate.js" ></script>
  		<script type="text/javascript" src="js/layui.all.js" ></script>
	  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
	</head>
	<body> 
	<fieldset class="layui-elem-field layui-field-title" >
  <legend style="margin-left:7cm;">专案信息展示</legend>
</fieldset>
             <!-- 选择查找 -->
	          <form action="/npi.test/HEAD_ToHeadMainDelete"  name="form1" id="form1" method="post" >
	          	<div style="margin-left: 3cm;">
	        	客户名称：<input type="text" name="cusname" />
	        	专案名称：<input type="text" name="proname" />
	        	阶段选择：<select name="province" id="province"  style="width: 100px;" onchange="changeSelect(this.selectedIndex)">
				       <option selected  disabled="disabled">-- 请选择 --</option>
				       </select>
			        	  <select name="stage" id="stage" style="width: 100px;">
			        	<option selected  disabled="disabled">-- 请选择 --</option>
	        	 </select>
	        	<input type="submit"  value="查找"/>
	        	</div>
	            </form>
		<br/>
		<form action="/npi.test/HEAD_DoHeadMain" id="mainheadform" method="post">
		<!-- 表格 -->
		<div style="width: 90%; margin-left:2cm ;">
	     <table class="layui-table" id="table1" style="width: 90%; margin-left:5% ;" lay-data="{height:600,page: true,limit:20}">
	    <thead>
	    <tr>
	      <th lay-data="{field:'id', width:80}">序号</th>
	      <th lay-data="{field:'stage', width:80}">阶段</th>
	      <th lay-data="{field:'cusname', width:150}">客户名称</th>
	      <th lay-data="{field:'proname', width:150}">专案名称</th>
	      <th lay-data="{field:'modeltype', width:150}">机种代码</th>
	      <th lay-data="{field:'trydate', width:150}">试产日期</th>
	      <th lay-data="{field:'trytime', width:150}">试产时间</th>
	      <th lay-data="{field:'team', width:150}">生产班别</th>
	      <th lay-data="{field:'trialsite', width:150}">试产地点</th>
	      <th lay-data="{field:'number', width:80}">投入数量</th>
	      <th lay-data="{field:'goodnumber', width:80}">良品数量</th>
	      <th lay-data="{field:'goodrate', width:80}">良品率</th>
	      <th lay-data="{field:'caozuo', width:240}">操作</th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${mainheadlist}" var="item" varStatus="status"> 
	  	<tr>
	  	<td>${status.index+1}</td>
	  	<td>${item.stage}</td>
	  	<td>${item.cusname}</td>
	  	<td>${item.proname}</td>
	  	<td>${item.modeltype}</td>
	  	<td>${item.trydate}</td>
	  	<td>${item.trytime}</td>
	  	<td>${item.team}</td>
	  	<td>${item.trialsite}</td>
	  	<td>${item.number}</td>
	  	<td>${item.goodnumber}</td>
	  	<td>${item.goodrate}</td>
	  	<td>
		  <a href="/npi.test/HEAD_DoHeadMain?did=${item.id}">删除</a> 
	    <td>
	  	</tr>
	    </c:forEach>
	  </tbody>
	</table>
	</div>
	</form>
	
	<script src="js/layui.all.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script src="js/jquery-3.2.1.js" charset="utf-8"></script>
	<script >
			function calc(){
			  a = document.getElementById("number").value;
			  b =document.getElementById("goodnumber").value;
			 document.getElementById("goodrate").value=((b/a)*100).toFixed(2)  + '%'  ;
		 }
		 window.onload = calc;
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