<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
          
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
  <meta charset="utf-8">
  <title>展示界面</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
</head>
<style type="text/css">
		.layui-table{
		width:90%;
		margin-left:3cm;
		}
		#select{
			margin-left:5cm ;
			width: 80%;
		}
</style>
	<body> 
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>设计改善报告</legend>
        </fieldset>
        <div id="select" >
        <form action="/npi.test/LIST_DoListServlet"  name="form1" id="form1" method="post">
        	客户名称：<input type="text" name="cusname" />
        	专案名称：<input type="text" name="proname" />
        	机种代码：<input type="text" name="modeltype" />
        	阶段选择：<select name="province" id="province"  style="width: 100px;">
		           <option selected  disabled="disabled">-- 请选择 --</option>
		           </select>
        	<select name="stage" id="stage" style="width: 100px;">
        	 <option selected  disabled="disabled">-- 请选择 --</option>
        	 </select>
        	<input type="submit" />${messageheadlist}
            </form>
        </div>
	
	<table class="layui-table" >
			<style type="text/css">
		    #head1{
		        text-align:center;/** 设置水平方向居中 */
		        font-size:20px
		    }
		  </style>
    <thead>
    	<tr>
    		<th id="head1" colspan="31" rowspan="2" >
    			设计改善报告
    		</th>
    	</tr>
    	<tr></tr>
    	<c:forEach items="${headlist}" var="item" varStatus="status"> 
    	<tr>
       <th colspan="31" >
       <input type="radio" id="flag1" value="EV">EV &nbsp;&nbsp;&nbsp;
       <input type="radio" id="flag2" value="DV">DV &nbsp;&nbsp;&nbsp;
       <input type="radio" id="flag3" value="PV">PV &nbsp;&nbsp;&nbsp;
       <input type="radio" id="flag4" value="MP">MP &nbsp;&nbsp;&nbsp;
        </th>
        </tr>
			<script>
						var a="${item.stage0}"; 
					   var c=a.split(","); 
					   for(var i=1;i<=4;i++) 
					   { 
					    var flag=document.getElementById("flag"+i).value; 
					    for(var j=0;j<c.length;j++) 
					    { 
					     if(c[j]==flag) 
					     { 
					      document.getElementById("flag"+i).checked=true; 
					     } 
					    } 
			   } 
			</script>
			<!-- 表头信息的展示 -->
    <tr>
      <th lay-data="{field:'id'}" colspan="3">客户名称</th>
      <th lay-data="{field:'username'}" colspan="3">${item.cusname}</th>
      <th lay-data="{field:'sex'}" colspan="3">专案名称</th>
      <th lay-data="{field:'city'}" colspan="3">${item.proname}</th>
      <th lay-data="{field:'sign'}"colspan="3">机种代码</th>
      <th lay-data="{field:'experience' }" colspan="3">${item.modeltype}</th>
      <th lay-data="{field:'score' }" colspan="3">试产日期</th>
      <th lay-data="{field:'classify'}" colspan="3">${item.stage}&nbsp;&nbsp;${item.trydate}</th>
      <th lay-data="{field:'wealth'}" colspan="3">试产时间</th>
      <th lay-data="{field:'wealth'}" colspan="4">${item.trytime}</th>
    </tr>
    <tr>
      <th lay-data="{field:'id'}" colspan="3">生产班别</th>
      <th lay-data="{field:'username'}" colspan="3">${item.team}</th>
      <th lay-data="{field:'sex'}" colspan="3">试产地点</th>
      <th lay-data="{field:'city'}" colspan="3">${item.trialsite}</th>
      <th lay-data="{field:'sign'}" colspan="3">投入数量</th>
      <th lay-data="{field:'experience' }" colspan="3">${item.number}</th>
      <th lay-data="{field:'score' }" colspan="3">良品数量</th>
      <th lay-data="{field:'classify'}" colspan="3">${item.goodnumber}</th>
      <th lay-data="{field:'wealth'}" colspan="3">直通率</th>
      <th lay-data="{field:'wealth'}" colspan="4">${item.goodrate}</th>
    </tr>
    </c:forEach>
   </thead>
    	<tr>
    		<th colspan="1">检讨项目</th>
    		<th colspan="1">序号</th>
    		<th colspan="4">不良问题点（潜在隐患）</th>
    		<th colspan="1">不良数</th>
    		<th colspan="1">缺陷等级</th>
    		<th colspan="4">原因分析</th>
    		<th colspan="4">改善对策</th>
    		<th colspan="2">提出人</th>
    		<th colspan="2">责任人</th>
    		<th colspan="2">计划时间</th>
    		<th colspan="2">完成时间</th>
    		<th colspan="2">效果确认</th>
    		<th colspan="2">成本影响</th>
    		<th colspan="3">备注</th>
    	</tr>
    <tbody>
    	<tr>
    	<td rowspan="${countdesignaspectlist}">设计方面</td>
    	<td colspan="30">机构部分</td>
     </tr>
     <!-- 详细信息 -->
     <tr>
     	<td colspan="30">SOUNDBAR</td>
     </tr>
     <c:forEach items="${designinstsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
      <c:forEach items="${designinstwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
    	<td colspan="30">电子部分</td>
    </tr>
    <tr>
     	<td colspan="30">SOUNDBAR</td>
     </tr>
     <c:forEach items="${designelecsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     <c:forEach items="${designelecwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="30">喇叭部分</td>
    </tr>
    <tr>
     	<td colspan="30">SOUNDBAR</td>
     </tr>
     
     <c:forEach items="${designhornsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     <c:forEach items="${designhornwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="30">包装部分</td>
    </tr>
    <tr>
     	<td colspan="30">SOUNDBAR</td>
     </tr>
     <c:forEach items="${designpacksoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     <c:forEach items="${designpackwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="30">其他部分</td>
    </tr>
    <tr>
     	<td colspan="30">SOUNDBAR</td>
     </tr>
      <c:forEach items="${designothsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
      <c:forEach items="${designothwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
    	<td rowspan="${softwaredesignaspectlist}">软件方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
     <c:forEach items="${softwaresoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     <c:forEach items="${softwarewooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${technologicalaspects}">工艺方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
     <c:forEach items="${techsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     
     <c:forEach items="${techwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${operationlaspects}">作业方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
     <c:forEach items="${operasoundbarlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     <c:forEach items="${operawooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${incomingmaterialslaspects}">来料方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
          <c:forEach items="${incomsoundbarlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
      <c:forEach items="${incomwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${customeraspects}">客户方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
     <c:forEach items="${cusmsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
      <c:forEach items="${cusmwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${otheraspects}">其他方面</td>
     	<td colspan="30">SOUNDBAR</td>
    </tr>
      <c:forEach items="${othsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
     <tr>
     	<td colspan="30">WOOFER</td>
     </tr>
     
      <c:forEach items="${othwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">2</td>
    	<td colspan="4">3</td>
    	<td colspan="1">4</td>
    	<td colspan="1">5</td>
    	<td colspan="4">6</td>
    	<td colspan="4">7</td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="2"></td>
    	<td colspan="3"></td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
	<script type="text/javascript" src="js/layui.all.js" ></script>
	<script src="js/jquery-3.2.1.js" charset="utf-8"></script>
	<script type="text/javascript">
	function calc(){
		  a = document.getElementById("number").value;
		  b =document.getElementById("goodnumber").value;
		 document.getElementById("goodrate").value=((b/a)*100).toFixed(2)  + '%'  ;
	 }
			 window.onload = calc;
			var arr_province = ["--请选择--","EV","DV","PV","MP"];
			  var arr_stage = [
                  ["--请选择--","EV1","EV2","EV3","EV4","EV5","EV6"],
                  ["--请选择--","DV1","DV2","DV3","DV4","DV5","DV6"],
                  ["--请选择--","PV1","PV2","PV3","PV4","PV5","PV6"],
                  ["--请选择--","MP1"],
                  ];
  //网页加载完成，初始化菜单
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