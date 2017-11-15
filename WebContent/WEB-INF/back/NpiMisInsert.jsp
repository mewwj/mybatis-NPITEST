<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/layui.css"  media="all">
		
<title>信息</title>
<style type="text/css">
	input{
		border: 0;
		height: 35px;
	}
	td{
		height: 40px;
	}
	select{
		height: 35px;
	}
	#msg1,#msg2{
		font-size: 18px;
		font-family: "微软雅黑";
	}
</style>
</head>
<body> 
 <form  action="/npi.test/ITEM_DoItemsInsert" method="post" name="form1" id="form1" enctype="multipart/form-data" >
		   <c:forEach items="${insertheadlist}" var="item" varStatus="status"> 
					<div style="margin-left: 20%; width: 60%;float:left ; ">
						<div style="text-align: center;padding-top:1cm; margin-top: 40px;margin-bottom: 40px;">
							<a style="font-size: 30px;"><strong>检讨信息添加</strong></a>
						</div>
									<br />
					<!-- 表头信息的展示 -->
					
					<div id="msg1" style="width: 30%;float: left;  margin-left: 20%;line-height:30px">
					   <a>阶段:</a> 
					   <input type="text" value="${item.stage0}" readonly="readonly" name="stage0" class="head" /><br />
		      		   <a>专案名称:</a> 
		      		   <input type="text" readonly="readonly" value="${item.proname}"  name="proname" /><br />
		  		   	   <a>机种代码:</a> 
		  		   	   <input type="text" readonly="readonly" value="${item.modeltype}"  name="modeltype" /><br />
		  		   	   <a>试产时间:</a> 
		  		   	   <input type="text" readonly="readonly" value="${item.trytime}"  name="trytime" /><br />
		              	 <a>生产班别:</a> 
		              	 <input type="text" readonly="readonly" value="${item.team}"  name="team" />
		  			</div>
		            <div id="msg2" style="width: 30%;float: left; line-height:30px">
		               	 <a >客户名称:</a> 
		               	 <input type="text" readonly="readonly" value="${item.cusname}" name="cusname" /><br />
		               	 <a >试产地点:</a> 
		               	 <input type="text" readonly="readonly" value="${item.trialsite}" name="trialsite" /><br />
		     	 		 <a >投入数量:</a>
		     			  <input type="text" readonly="readonly" value="${item.number}" name="number" /><br />
		     			 <a >良品数量:</a> 
		     			 <input type="text" readonly="readonly" value="${item.goodnumber}" name="goodnumber" /><br />
		     			  <a>直通率:</a> 
		     			  <input type="text" readonly="readonly" value="${item.goodrate}" name="goodrater" /><br />
		     	    </div>
		     	    <div  style="float: left; height: 50px; width: 100%;">
		     	    </div>
		     </div>
 </c:forEach>
 <hr style="width: 80%;" />
<div  name="allmsg" > 
		<div style="width: 80%;margin-left:6cm ; margin-top: 20px;"  class="layui-btn-group">
			<a class="layui-btn layui-btn-small" id="addTable">
		      <i class="layui-icon">&#xe608;</i> 添加行
			</a>
			<a class="layui-btn layui-btn-small" id="deleteTable">
		     <i class="layui-icon">&#xe640;</i> 删除行
			</a>
		<button class="layui-btn layui-btn-small" lay-submit="" lay-filter="demo1"  style="margin-left: 8cm;">立即提交</button>
		</div>
<br /><br />
	<div style="margin-left:5cm ; ">
		<table id="table1"  style="width: 95%;" class="layui-table">
		<tr>
		<td>选择</td>
		<td>检讨项目</td>
		<td>问题	</td>
		<td>问题点</td>
		<td>不良问题点</td>
		<td>图片</td>
		<td>不良数</td>
		<td width="100px">缺陷等级</td>
		<td>提出人</td>
		<td>计划时间(格式：XXXX-XX-XX)</td>
		</tr>
		    <tr>
			  <td><input type="checkbox"  name="check" id="check" ></td>
              <td ><select name="insproject0" >
	<option value ="" disabled="disabled" selected="selected">--请选择--</option>
  	<option value ="设计方面">设计方面</option>
  	<option value ="软件方面">软件方面</option>
  	<option value="工艺方面">工艺方面</option>
  	<option value="作业方面">作业方面</option>
  	<option value="来料方面">来料方面</option>
	<option value="客户方面">客户方面</option>	  
	<option value="其他方面">其他方面</option>	  
		  </select></td>
              <td><select name="item" >
	<option value ="" disabled="disabled" selected="selected">--请选择--</option>
  	<option value ="机构部分">机构部分</option>
  	<option value ="电子部分">电子部分</option>
  	<option value ="喇叭部分">喇叭部分</option>
  	<option value="包装部分">包装部分</option>
  	<option value="其他部分">其他部分</option>
		  </select></td>
              <td><select name="items0" >
	<option value ="" disabled="disabled" selected="selected">--请选择--</option>
  	<option value ="SoundBar">SoundBar</option>
  	<option value ="WOOFER">WOOFER</option>
  	</select></td>
        <td><input type="text" name="problems0"/></td>
        <td><input id="pic" name="pic" type="file" /></td>
        <td><input type="text" style="width:50px" name="ng0"/></td>
        <td><input type="text" style="width:100px" name="defectlevels0"/></td>
        <td><input type="text" style="width:50px" name="exhibitor0"/></td>
        <td><input type="time" name="plantime0" id="plantime" ></td>
		 </tr>
		</table>
		 <input type="button" value="全选" id="selAll" class="layui-btn layui-btn-small"/>  
        <input type="button" value="全不选" id="unselAll" class="layui-btn layui-btn-small"/>  
		  </div>
</div>  
 </form>
 <script src="js/layui.all.js" charset="utf-8" type="text/javascript"></script>
<script src="js/jquery.js" charset="utf-8" ></script>
<script src="lay/modules/laydate.js" type="text/javascript"></script>
 <script>
 	layui.use('laydate', function(){
  var laydate = layui.laydate;
  //常规用法
  laydate.render({
    elem: '#plantime'
  });
  
 </script> 
<script>
	
  $(document).ready(function(){
    	 var i=1;
    $("#addTable").click(function(){
         var tr="<tr><td><input type=\"checkbox\" style=\"width:15px\" name=\"check\"/ id=\"check\" >"+
              "</td><td><select name=\"insproject"+ i +"\">"+
			   "<option disabled=\"disabled\" selected=\"selected\">--请选择--</option>"+
		  		 "<option value =\"设计方面\">设计方面</option>"+
		  		"<option value =\"软件方面\">软件方面</option>"+
		  		"<option value=\"工艺方面\">工艺方面</option>"+
		  		"<option value=\"作业方面\">作业方面</option>"+
			  	"<option value=\"来料方面\">来料方面</option>"+
				"<option value=\"客户方面\">客户方面</option>"+	  
				"<option value=\"其他方面\">其他方面</option>"+	  
		        "</select></td>"+
              "<td><select name=\"item"+ i +"\">"+
				"<option disabled=\"disabled\" selected=\"selected\">--请选择--</option>"+
			  	"<option value =\"机构部分\">机构部分</option>"+
			  	"<option value =\"电子部分\">电子部分</option>"+
			  	"<option value =\"喇叭部分\">喇叭部分</option>"+
			  	"<option value=\"包装部分\">包装部分</option>"+
			  	"<option value=\"其他部分\">其他部分</option>"+
		 		 "</select></td>"+
              "</td><td><select name=\"items"+ i +"\">"+
				"<option disabled=\"disabled\" selected=\"selected\">--请选择--</option>"+
			  	"<option value =\"Soundbar\">Soundbar</option>"+
			  	"<option value =\"WOOFER\">WOOFER</option>"+
		 		 "</select></td>"+
              "</td><td><input type=\"text\" name=\"problems"+ i +"\"/>"+
              "</td><td><input id=\"pic\" name=\"pic"+ i +"\" type=\"file\"/>"+
              "</td><td><input type=\"text\" style=\"width:50px\" name=\"ng"+ i +"\"/>"+
              "</td><td><input type=\"text\" style=\"width:100px\" name=\"defectlevels"+ i + "\"/>"+
              "</td><td><input type=\"text\" name=\"exhibitor"+ i + "\"/>"+
              "</td><td><input type=\"time\" name=\"plantime"+ i + "\" id=\"plantime\" ></td><tr>";
              i++;
        $("#table1").append(tr);　
    });
    $("#deleteTable").click(function(){
        var check = document.getElementsByName("check");
        for(var i=0;i<check.length;i++){
            if(check[i].checked){
                 document.getElementById('table1').deleteRow(i+1);
                 i--;
            }
        }
    });
             $("#selAll").click(function () { //":checked"匹配所有的复选框
              $("#table1 :checkbox").prop("checked", true);    //"#div1 :checked"之间必须有空格checked是设置选中状态。如果为true则是选中fo否则false为不选中
            });
            $("#unselAll").click(function () {
               $("#table1 :checkbox").prop("checked", false);
            });
    
  });
</script>
</body>
</html>