<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		  <title></title>
		  <link rel="stylesheet" href="css/layui.css"  media="all">
		  <link rel="stylesheet" href="css/modules/laydate/default/laydate.css" />
		  
		  <style type="text/css">
      .layui-table{
        width:80%;
      	margin-left: 2cm;
      	margin-right: 2cm;
      } 
    </style>
	</head>
	<body>
		  <c:forEach items="${oneitemlist}" var="item" varStatus="status">
        <form action="/npi.test/ITEM_DoItemsUpdate" enctype="multipart/form-data" method="post" name="form1">
        <div style="width:60%; margin-left:20%; margin-right:20%;float:left; ">
		    <div id="001" align="center" style="padding: 10px;">
		         		<a style="color: #007DDB;font-size: 30px; padding: 1cm;">������Ϣ</a>
		    </div>
        	<div id="a" style=" float:left;  width: 100%; ">
        	    <div id="msg" style=" width:50%; float:left;padding: 25px; padding-left:7cm ;font-family: '΢���ź�';font-size: 18px;">
	            	       	 <a style="color:cornflowerblue;">�ͻ����ƣ�</a><input type="text" name="cusname" readonly="readonly" id="cusname" value="${item.cusname}"  style="border: 0;" ><br />
	            	        <a style="color:cornflowerblue;">������Ŀ��</a><input type="text" name="insproject" readonly="readonly" id="insproject" value="${item.insproject}" style="border: 0;"/><br />
	                         <a style="color:cornflowerblue;">ר�����ƣ�</a><input type="text" name="proname" id="proname" readonly="readonly" value="${item.proname}"  style="border: 0;" ><br />
	                         <a style="color:cornflowerblue;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�׶Σ�</a><input type="text" name="stage0" id="stage0" readonly="readonly" value="${item.stage0}"  style="border: 0;" ><br/>
	        	              <a style="color:cornflowerblue;">&nbsp;&nbsp;&nbsp;&nbsp;����㣺</a> <input type="text" name="item" id="item"  readonly="readonly" value="${item.item}" style="border:0;width: 100px;">
	        		         <input type="text" name="items" id="items"  readonly="readonly" value="${item.items}" style="border: 0;" ><br />
	                        <a style="color:cornflowerblue;">��������㣺</a><input type="text"  name="problems" id="problems" readonly="readonly" value="${item.problems}"  style="border: 0;" ><br />
	            	        <a style="color:cornflowerblue;">&nbsp;&nbsp;&nbsp;&nbsp;��������</a><input type="text" name="ng" id="ng" readonly="readonly" value="${item.ng}"  style="border: 0;" ><br />
	            	        <a style="color:cornflowerblue;"> ȱ�ݵȼ���</a><input type="text" name="defectlevels" readonly="readonly" id="defectlevels" style="border: 0;" value="${item.defectlevels}"><br />
	                        <a style="color:cornflowerblue;">&nbsp;&nbsp;&nbsp;&nbsp;����ˣ�</a>
	                        <input type="text" name="exhibitor" id="exhibitor"  readonly="readonly" value="${item.exhibitor}"  style="border: 0;" ><br />
	                        <a style="color:cornflowerblue;">�ƻ�ʱ�䣺</a>
	                        <input type="text" name="plantime" id="plantime" readonly="readonly" value="${item.plantime}"  style="border: 0;" ><br />
        	    </div>
			  <div id="b" style= "float:left;width: 200px; height: 200px;">
			        <img src="images/${item.filenamea}" alt="[ͼƬ]" width="200px" height="200px"/>
			   </div>
        	</div>
        </div>	
 
 
        		<div style="margin-top: 30px;">
        			<input type="text"   style="border: 0;" width="0" ><br /><br /><br /><br />
        		<table class="layui-table" style=" width:60%; margin-left:20%; margin-right: 20%;padding-top:30px ;">
        	<tr>
        		<th colspan="4" style="padding-left: 3cm;font-size: 25px ;"> �����������Ϣ</th>
        	</tr>
        	<tr>
        		<td align="right"> ԭ�����</td>
        		<td colspan="3">
        			<input type="text" name="reasons" id="reasons" value="${item.reasons}"   class="layui-input">
        			 <input type="text" name="id" id="id" readonly="readonly" value="${item.id}"  style="border: 0;width:0px" >
        		</td>
        		</tr>
        		<tr>
        		<td align="right">���ƶԲ�</td>
        		<td colspan="3">
        			<input type="text" name="measures" id="measures" value="${item.measures}"   class="layui-input">
        		</td>
        	</tr>
        	<tr>
        		<td align="right">ͼƬ
        		</td>
        		<td colspan="3">
        			 <input id="filenameb" name="filenameb" type="file"  width="30px"/>
        		</td>
        		</tr>
        		<tr>
        		<td align="right">������</td>
        		<td colspan="3">
        			<input type="text" name="head" id="head" value="${item.head}"   class="layui-input">
        		</td>
        	</tr>
        	<tr>
              <td colspan="4" align="center">
              	<button class="layui-btn" lay-submit="" lay-filter="demo1">�����ύ</button>
                <button type="reset" class="layui-btn layui-btn-primary">����</button>
              </td>
        	</tr>
        </tbody>
        </table>
        </div>
        </form>
        </c:forEach>
    <script src="lay/modules/laydate.js" charset="utf-8"></script>
	<script src="js/layui.all.js" charset="utf-8"></script>
    <script src="js/jquery-3.2.1.js"></script>
    <script>
              layui.use('laydate', function(){
				var laydate = layui.laydate;
				  //ִ��һ��laydateʵ��
				  laydate.render({
					    elem: '#plantime' //ָ��Ԫ��
				  });
				  laydate.render({
				  elem: '#finishtime' //ָ��Ԫ��
				  });
			});
				</script>
	</body>
</html>
