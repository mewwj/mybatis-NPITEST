<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<link rel="stylesheet" href="css/layui.css"  media="all">
		 <style type="text/css">
      .layui-table{
        width:80%;
      	margin-left: 2cm;
      	margin-right: 2cm;
      } 
    </style>
	</head>
	<body>
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 5px;">
        <legend style="margin-left:100px; font-size:30px; ">效果确认</legend>
        </fieldset>
        <c:forEach items="${exhitemlist}" var="item" varStatus="status">
        		  <h2 style="font-size: 25px; text-align: center;">效果确认</h2>
        		  <br />
        		  <br />
        	<div style="width: 100%; float: left;padding-bottom: 60px;">
                <div style="width: 80%; float: left;margin-left: 10%;">
        		  	<div id="001" style="float: left; width: 30%; line-height:30px;margin-left: 25%;padding-left: 10%;padding-bottom: 30px;">
        		  		         客户名称：${item.cusname}<br />
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
				        	
        		  	</div>
        		  	<div style="float: left; width: 20%;width: 150px; height：150px;margin-right: 5%;">
			     	     <img src="images/${item.filenamea}" alt="[图片]" width="150px" height="150px"/><br />
				    </div>
                </div>
            </div>
            
            <hr />
		         <div style=" text-align: center;">
		        	<form action="/npi.test/ITEM_DoItemsUpdate" method="post" enctype="multipart/form-data" class="layui-form" name="form1">
		            <div style="text-align: center;align-items: center; padding-left: 38%;">
		        		<br /> <input name="id" value="${item.id}" readonly="readonly" style="width: 0; border: 0;" />
		        		<input name="cusname" value="${item.cusname}" readonly="readonly" style="width: 0; border: 0; "/>
		        		<input name="proname" value="${item.proname}"  readonly="readonly" style="width: 0; border: 0;"/><br/>
							<div class="layui-form-item">
					    <label class="layui-form-label">效果确认：</label>
					    <div class="layui-input-block">
					      <input type="text" name="confirm"  class="layui-input"  style="width: 300px;" />
					    </div>
					  </div>
					  	    <div class="layui-form-item">
					    <label class="layui-form-label">成本影响：</label>
					    <div class="layui-input-block">
					      <input type="text" name="affect" class="layui-input" style="width: 300px;"  />
					    </div>
					  </div>
					   <div class="layui-form-item">
					    <label class="layui-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注：</label>
					    <div class="layui-input-block">
					     <input type="text" name="comment"  class="layui-input" style="width: 300px;"/>
					    </div>
					  </div>
		        </div>
		        <br />
				        <button  type="submit" class="layui-btn layui-btn-small"  >提交</button>
				        <button type="reset" class="layui-btn layui-btn-small">重置</button>
		        <br />
		        <br />
		         </form>
		       </div>
    </c:forEach> 
	</body>
</html>
