<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title></title>
		<link rel="stylesheet" href="css/layui.css"  media="all">
			    	<!--[if lt IE 7]>
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <![endif]-->
<style type="text/css">
div{
	border:none;
  }
</style>
</head>
<body bgcolor="#FFFFFF" topmargin="5">
<div>
  	<table border='0' cellpadding='0' cellspacing='0'width="98%" style="margin-left:2px;margin-right:2px;" align='center'>                         
        <tr>
            <td height='27px'  style="border-bottom:3px solid #000000;"><b>當前位置：</b>產品設計改善報告  > 检讨信息展示</td>
            <td align='right' style=""><font color="red"></font></td>
        </tr>
        <tr><td height='5px' colspan='2' ></td></tr>
    </table>
<div style=" padding:5 5 5 5; margin:10 10 10 10; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">
        <c:forEach items="${oneitemlist}" var="item" varStatus="status">
        	<div>
                <div style=" padding:5 5 5 5; margin:10 10 10 10; border: solid 1px #a9c9ee;text-align: center; " cellpadding="0"  cellspacing="0">
                	<div>
        		  		         <div style="float: left;">
        		  		        	<img src="images/${item.filenamea}"  width="150px" height="150px" style="padding-right:20px; border: dotted;"/>
        		  		         </div>
        		  		      客户名称：${item.cusname}    
				        	专案名称：${item.proname}<br />
				        	阶段：${item.stage0}${item.stage} <br/>
				        	不良数：${item.ng}<br />
				        	缺陷等级：${item.defectlevels}<br />
				        	计划时间：${item.plantime}<br />
				        	完成时间：${item.finishtime}<br />
				        	提出人：${item.exhibitor}<br />
				        	责任人：${item.head}<br />
				        	原因分析：${item.reasons}<br />
				        	改善对策：${item.measures}<br />
				        	效果确认：${item.confirm}<br />
				        	成本影响：${item.affect}<br />
				        	备注：${item.comment}<br />
				    </div>    	
                </div>
            </div>    
		         <div style="text-align: center;">
		        	<form action="/npi.test/ITEM_DoItemCommInsert" method="post" class="layui-form" name="form1">
		            <div style="text-align: center; padding-left:18%;">
		        		<br /> <input name="id" value="${item.id}" readonly="readonly" style="width: 0; border: 0;" />
		        		<br /> <input name="zid" value="${zid}" readonly="readonly" style="width: 0; border: 0;" />
					    <label class="layui-form-label">PM备注：</label>
					     <input type="text" name="pmcomm"  class="layui-input" style="width: 500px;"/>
		        	</div>
		        <br />
				        <button  type="submit" class="layui-btn layui-btn-small">提交</button>
				        <button type="reset" class="layui-btn layui-btn-small">重置</button>
		        <br />
		        <br />
		         </form>
		       </div>
</c:forEach> 
</div> 
</div>	
</body>
</html>
