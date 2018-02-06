<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
		  <meta charset="utf-8">
		  <title>信息展示</title>
		  <meta name="renderer" content="webkit">
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  	<link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/search.css" rel="stylesheet">
	    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	    <script src="js/jquery.js"></script>
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    	<!--[if lt IE 7] -->
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <!--[endif]-->
		  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<style type="text/css">
	div{
		border: none;
	}
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:13px;
	color:#333333;
	border: 1px solid #000000;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 10px;
	border: 1px solid #000000;
}
table.gridtable td {
	border-width: 1px;
	padding: 5px;
	border-style: solid;
	border-color: #0F0F0F;
	background-color: #ffffff;
}
</style>
</head>
<body> 
	<table border='0' cellpadding='0' cellspacing='0'width="98%" style="margin-left:2px;margin-right:2px;" align='center'>                         
		<tr>
			<td height='27px'  style="border-bottom:3px solid #000000;"><b>當前位置：</b>產品設計改善報告  >检讨信息展示</td>
				<td align='right' style=""><font color="red"></font></td>
		</tr>
		<tr><td height='5px' colspan='2' ></td></tr>
		</table>
<div style="margin:10 10 10 10;">
    	<form action="/npi.test/LIST_DoListServlet"  name="form1" id="form1" method="post" class="form-inline" >
			<div style="margin:10 10 10 10; border: solid 1px #a9c9ee">
			<table cellspacing="0" cellpadding="0" width='100%' border="0" >
				<tbody>
					<tr style="height: 40px; width: 60%;">
				<td style="width: 8%; text-align: right;">
			    <label for="InputkehuName">客户名称:</label>
			    </td>
			    <td style="width: 20%;">
			    <input type="text"  id="InputkehuName" name="cusname" placeholder="客户名称">
			    </td>
			    <td style="width: 8%; text-align: right;">
			    <label for="Inputproname">专案名称:</label>
			    </td>
			    <td style="width: 20%;">
			    <input type="text"  id="InputzhuananName" name="proname" placeholder="专案名称">
			    </td>
			    <td style="width: 8%; text-align: right;">
			    <label for="Inputmodeltype">机种代码:</label>
			    </td>
			    <td style=" width: 20%;">
			    <input type="text" id="Inputmodeltype" name="modeltype" placeholder="机种代码">
				</td>
				<td style="width: 16%;"></td>
				</tr>
				<tr>
					<tr style="height:30px;background-color:#e3ecfc">
						<td colspan="7">
					<label for="Inputstage">阶段选择:</label>
				  	<select name="province" id="province"  style="width: 100px;"  onchange="changeSelect(this.selectedIndex)">
						<option   disabled="disabled">-- 请选择 --</option>
					</select>
					<select name="stage" id="stage"  style="width: 100px;">
					    <option   disabled="disabled">-- 请选择 --</option>
			    	</select>
			    	<button type="submit">查询</button>
	   			 		<p style="color: red; font-size: 14px;">${messageheadlist}</p>	
	   			 	</td>	
	   			 </tr>
				</tbody>
			</table>
		</div>	
		</form>	

<div style="margin:10 10 10 10">
	<table class=" gridtable" >
    <thead>
    	<tr>
    		<th id="head1" colspan="34" rowspan="2" style="text-align: center;" >
    			<h3 >设计改善报告</h3>
    		</th>
    	</tr>
    	<tr></tr>
    	<c:forEach items="${headlist}" var="item" varStatus="status"> 
    	<tr>
       <th colspan="34" >
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
      <th colspan="3">客户名称</th>
      <th colspan="3">${item.cusname}</th>
      <th colspan="3">专案名称</th>
      <th colspan="3">${item.proname}</th>
      <th colspan="3">机种代码</th>
      <th colspan="3">${item.modeltype}</th>
      <th colspan="4">试产日期</th>
      <th colspan="4">${item.stage}&nbsp;&nbsp;${item.trydate}</th>
      <th colspan="4">试产时间</th>
      <th colspan="4">${item.trytime}</th>
    </tr>
    <tr>
      <th colspan="3">生产班别</th>
      <th colspan="3">${item.team}</th>
      <th colspan="3">试产地点</th>
      <th colspan="3">${item.trialsite}</th>
      <th colspan="3">投入数量</th>
      <th colspan="3">${item.number}</th>
      <th colspan="4">良品数量</th>
      <th colspan="4">${item.goodnumber}</th>
      <th colspan="4">直通率</th>
      <th colspan="4">${item.goodrate}</th>
    </tr>
    </c:forEach>
   </thead>
    	<tr>
    		<th colspan="1">检讨项目</th>
    		<th colspan="1">序号</th>
    		<th colspan="4">不良问题点(潜在隐患)</th>
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
    		<th colspan="3">PM备注</th>
    	</tr>
    <tbody>
    	<tr>
    	<td rowspan="${countdesignaspectlist}">设计方面 </td>
    	<td colspan="34">机构部分</td>
     </tr>
     <!-- 详细信息 -->
     <tr>
     	<td colspan="34">SOUNDBAR</td>
     </tr>
     <c:forEach items="${designinstsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
      <c:forEach items="${designinstwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
    	<td colspan="34">电子部分</td>
    </tr>
    <tr>
     	<td colspan="34">SOUNDBAR</td>
     </tr>
     <c:forEach items="${designelecsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
     <c:forEach items="${designelecwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="34">喇叭部分</td>
    </tr>
     <c:forEach items="${designhornsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="34">包装部分</td>
    </tr>
    
     <c:forEach items="${designpacksoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
     <tr>
    	<td colspan="34">其他部分</td>
    </tr>
    <tr>
     	<td colspan="34">SOUNDBAR</td>
     </tr>
      <c:forEach items="${designothsoundbarlist}" var="item" varStatus="status"> 
    <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
      <c:forEach items="${designothwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
    	<td rowspan="${softwaredesignaspectlist}">软件方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
     <c:forEach items="${softwaresoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
     <c:forEach items="${softwarewooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${technologicalaspects}">工艺方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
     <c:forEach items="${techsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
     
     <c:forEach items="${techwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${operationlaspects}">作业方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
     <c:forEach items="${operasoundbarlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
     <c:forEach items="${operawooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${incomingmaterialslaspects}">来料方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
          <c:forEach items="${incomsoundbarlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
      <c:forEach items="${incomwooferlist}" var="item" varStatus="status"> 

     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${customeraspects}">客户方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
     <c:forEach items="${cusmsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
      <c:forEach items="${cusmwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
        <tr>
    	<td rowspan="${otheraspects}">其他方面</td>
     	<td colspan="34">SOUNDBAR</td>
    </tr>
      <c:forEach items="${othsoundbarlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
     <tr>
     	<td colspan="34">WOOFER</td>
     </tr>
     
      <c:forEach items="${othwooferlist}" var="item" varStatus="status"> 
     <tr>
    	<td colspan="1">${status.index+1}</td>
    	<td colspan="4">${item.problems}</td>
    	<td colspan="1">${item.ng}</td>
    	<td colspan="1">${item.defectlevels}</td>
    	<td colspan="4">${item.reasons}</td>
    	<td colspan="4">${item.measures}</td>
    	<td colspan="2">${item.exhibitor}</td>
    	<td colspan="2">${item.head}</td>
    	<td colspan="2">${item.plantime}</td>
    	<td colspan="2">${item.finishtime}</td>
    	<td colspan="2">${item.confirm}</td>
    	<td colspan="2">${item.affect}</td>
    	<td colspan="3">${item.comment}</td>
    	<td colspan="3">${item.pmcomm}</td>
    </tr>
    </c:forEach>
    
    </tbody>
  </table>
  </div>
</div>  
	<script src="js/jquery-3.2.1.js" charset="utf-8"></script>
	<script type="text/javascript">
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