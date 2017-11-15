<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		      <meta charset="utf-8">
			  <title>信息展示</title>
			  <meta name="renderer" content="webkit">
			  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			   <link rel="stylesheet" href="css/layui.css"  media="all">
		</head>
		<body> 
			<fieldset class="layui-elem-field layui-field-title" >
		  <legend>信息展示</legend>
		</fieldset>
		        <!-- 筛选条件 -->
		        <div style="margin-left:5cm;">
          <form action="/npi.test/ITEM_ToItemsMain"  name="form1" id="form1" method="post">
        	阶段选择：<select name="province" id="province"  style="width: 100px;"  onchange="changeSelect(this.selectedIndex)">
		             <option selected  disabled="disabled">-- 请选择 --</option>
		            </select>
        	<select name="stage" id="stage" style="width: 100px;">
        	 <option selected  disabled="disabled">-- 请选择 --</option>
        	 </select>
        	<input type="submit"/>
            </form>
		</div>
		
		<br />
		<form action="/npi.test/HEAD_DoHeadMain" id="mainheadform" method="post">
		<!-- 表格 -->
			<div style="margin-left:5cm;padding-top: 1cm; font-size: 15px;">
				 客户名称：${allmessagescusname}
				 专案名称：${allmessagesproname}
			</div>
	 	<div  style="margin-left:5%; width:90%;">
	     <table class="layui-table">
	     <thead>
	   		 <tr>
	      <th lay-data="{field:'id',width:'10px'}">序号</th>
	      <th lay-data="{field:'stage0',width:'100px'}">阶段</th>
	       <th lay-data="{field:'insproject',width:'50px'}">检讨项目</th>
	      <th lay-data="{field:'item',width:'50px'}">错误</th>
	      <th lay-data="{field:'items',width:'50px'}">错误点</th>
	      <th lay-data="{field:'problems',width:'50px'}">不良问题点</th>
	      <th lay-data="{field:'ng',width:'50px'}">不良数</th>
	      <th lay-data="{field:'defectlevels',width:'50px'}">缺陷等级</th>
	      <th lay-data="{field:'reason',width:'50px'}">原因分析</th>
	      <th lay-data="{field:'measures',width:'50px'}">改善对策</th>
	      <th lay-data="{field:'exhibitor',width:'50px'}">提出人</th>
	      <th lay-data="{field:'head',width:'50px'}">责任人</th>
	      <th lay-data="{field:'plantime',width:'50px'}">计划时间</th>
	      <th lay-data="{field:'finishtime',width:'50px'}">完成时间</th>
	      <th lay-data="{field:'confirm',width:'50px'}">效果确认</th>
	      <th lay-data="{field:'affect',width:'50px'}">成本影响</th>
	      <th lay-data="{field:'comment',width:'50px'}">备注</th>
	      <th lay-data="{field:'caozuo',width:'50px'}">操作</th>
	    </tr>
	  </thead>
	  <tbody>
	   <c:forEach items="${allmessageslist}" var="item" varStatus="status"> 
	  	<tr>
	  	<td>${status.index+1}</td>
	  	<td>${item.stage0} &nbsp; ${item.stage} </td>
	  	<td>${item.insproject}</td>
	  	<td>${item.item}</td>
	  	<td>${item.items}</td>
	  	<td>${item.problems}
	  	<br/><img src="images/${item.filenamea}" alt="[图片]" width="50px" height="50px"/></td>
	  	<td>${item.ng}</td>
	  	<td>${item.defectlevels}</td>
	  	<td>${item.reasons}</td>
	  	<td>${item.measures}
	  	<br/><img src="images/${item.filenameb}" alt="[图片]" width="50px" height="50px" /></td>
	  	<td>${item.exhibitor}</td>
	  	<td>${item.head}</td>
	  	<td>${item.plantime}</td>
	  	<td>${item.finishtime}</td>
	  	<td>${item.confirm}</td>
	  	<td>${item.affect}</td>
	  	<td>${item.comment}</td>
	  	<td>
	  	  <a href="/npi.test/ITEM_DoItemMain?aid=${item.id}">改善对策</a> <br/>
	  	  <a href="/npi.test/ITEM_DoItemMain?eid=${item.id}">${exhibitor}</a>  <br/>
		  <a href="/npi.test/ITEM_DoItemComm?cid=${item.id}&zid=${zid}">备注</a>
	    </td>
	  	</tr>
	   </c:forEach>
		  </tbody>
		</table>
		</div>
		</form>
		<script src="js/layui.all.js" charset="utf-8"></script>
	    <script src="js/jquery.js" charset="utf-8"></script>
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