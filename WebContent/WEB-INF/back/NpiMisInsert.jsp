<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/layui.css"  media="all">
		
<title>��Ϣ</title>
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
		font-family: "΢���ź�";
	}
</style>
</head>
<body> 
 <form  action="/npi.test/ITEM_DoItemsInsert" method="post" name="form1" id="form1" enctype="multipart/form-data" >
		   <c:forEach items="${insertheadlist}" var="item" varStatus="status"> 
					<div style="margin-left: 20%; width: 60%;float:left ; ">
						<div style="text-align: center;padding-top:1cm; margin-top: 40px;margin-bottom: 40px;">
							<a style="font-size: 30px;"><strong>������Ϣ���</strong></a>
						</div>
									<br />
					<!-- ��ͷ��Ϣ��չʾ -->
					
					<div id="msg1" style="width: 30%;float: left;  margin-left: 20%;line-height:30px">
					   <a>�׶�:</a> 
					   <input type="text" value="${item.stage0}" readonly="readonly" name="stage0" class="head" /><br />
		      		   <a>ר������:</a> 
		      		   <input type="text" readonly="readonly" value="${item.proname}"  name="proname" /><br />
		  		   	   <a>���ִ���:</a> 
		  		   	   <input type="text" readonly="readonly" value="${item.modeltype}"  name="modeltype" /><br />
		  		   	   <a>�Բ�ʱ��:</a> 
		  		   	   <input type="text" readonly="readonly" value="${item.trytime}"  name="trytime" /><br />
		              	 <a>�������:</a> 
		              	 <input type="text" readonly="readonly" value="${item.team}"  name="team" />
		  			</div>
		            <div id="msg2" style="width: 30%;float: left; line-height:30px">
		               	 <a >�ͻ�����:</a> 
		               	 <input type="text" readonly="readonly" value="${item.cusname}" name="cusname" /><br />
		               	 <a >�Բ��ص�:</a> 
		               	 <input type="text" readonly="readonly" value="${item.trialsite}" name="trialsite" /><br />
		     	 		 <a >Ͷ������:</a>
		     			  <input type="text" readonly="readonly" value="${item.number}" name="number" /><br />
		     			 <a >��Ʒ����:</a> 
		     			 <input type="text" readonly="readonly" value="${item.goodnumber}" name="goodnumber" /><br />
		     			  <a>ֱͨ��:</a> 
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
		      <i class="layui-icon">&#xe608;</i> �����
			</a>
			<a class="layui-btn layui-btn-small" id="deleteTable">
		     <i class="layui-icon">&#xe640;</i> ɾ����
			</a>
		<button class="layui-btn layui-btn-small" lay-submit="" lay-filter="demo1"  style="margin-left: 8cm;">�����ύ</button>
		</div>
<br /><br />
	<div style="margin-left:5cm ; ">
		<table id="table1"  style="width: 95%;" class="layui-table">
		<tr>
		<td>ѡ��</td>
		<td>������Ŀ</td>
		<td>����	</td>
		<td>�����</td>
		<td>���������</td>
		<td>ͼƬ</td>
		<td>������</td>
		<td width="100px">ȱ�ݵȼ�</td>
		<td>�����</td>
		<td>�ƻ�ʱ��(��ʽ��XXXX-XX-XX)</td>
		</tr>
		    <tr>
			  <td><input type="checkbox"  name="check" id="check" ></td>
              <td ><select name="insproject0" >
	<option value ="" disabled="disabled" selected="selected">--��ѡ��--</option>
  	<option value ="��Ʒ���">��Ʒ���</option>
  	<option value ="�������">�������</option>
  	<option value="���շ���">���շ���</option>
  	<option value="��ҵ����">��ҵ����</option>
  	<option value="���Ϸ���">���Ϸ���</option>
	<option value="�ͻ�����">�ͻ�����</option>	  
	<option value="��������">��������</option>	  
		  </select></td>
              <td><select name="item" >
	<option value ="" disabled="disabled" selected="selected">--��ѡ��--</option>
  	<option value ="��������">��������</option>
  	<option value ="���Ӳ���">���Ӳ���</option>
  	<option value ="���Ȳ���">���Ȳ���</option>
  	<option value="��װ����">��װ����</option>
  	<option value="��������">��������</option>
		  </select></td>
              <td><select name="items0" >
	<option value ="" disabled="disabled" selected="selected">--��ѡ��--</option>
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
		 <input type="button" value="ȫѡ" id="selAll" class="layui-btn layui-btn-small"/>  
        <input type="button" value="ȫ��ѡ" id="unselAll" class="layui-btn layui-btn-small"/>  
		  </div>
</div>  
 </form>
 <script src="js/layui.all.js" charset="utf-8" type="text/javascript"></script>
<script src="js/jquery.js" charset="utf-8" ></script>
<script src="lay/modules/laydate.js" type="text/javascript"></script>
 <script>
 	layui.use('laydate', function(){
  var laydate = layui.laydate;
  //�����÷�
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
			   "<option disabled=\"disabled\" selected=\"selected\">--��ѡ��--</option>"+
		  		 "<option value =\"��Ʒ���\">��Ʒ���</option>"+
		  		"<option value =\"�������\">�������</option>"+
		  		"<option value=\"���շ���\">���շ���</option>"+
		  		"<option value=\"��ҵ����\">��ҵ����</option>"+
			  	"<option value=\"���Ϸ���\">���Ϸ���</option>"+
				"<option value=\"�ͻ�����\">�ͻ�����</option>"+	  
				"<option value=\"��������\">��������</option>"+	  
		        "</select></td>"+
              "<td><select name=\"item"+ i +"\">"+
				"<option disabled=\"disabled\" selected=\"selected\">--��ѡ��--</option>"+
			  	"<option value =\"��������\">��������</option>"+
			  	"<option value =\"���Ӳ���\">���Ӳ���</option>"+
			  	"<option value =\"���Ȳ���\">���Ȳ���</option>"+
			  	"<option value=\"��װ����\">��װ����</option>"+
			  	"<option value=\"��������\">��������</option>"+
		 		 "</select></td>"+
              "</td><td><select name=\"items"+ i +"\">"+
				"<option disabled=\"disabled\" selected=\"selected\">--��ѡ��--</option>"+
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
        $("#table1").append(tr);��
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
             $("#selAll").click(function () { //":checked"ƥ�����еĸ�ѡ��
              $("#table1 :checkbox").prop("checked", true);    //"#div1 :checked"֮������пո�checked������ѡ��״̬�����Ϊtrue����ѡ��fo����falseΪ��ѡ��
            });
            $("#unselAll").click(function () {
               $("#table1 :checkbox").prop("checked", false);
            });
    
  });
</script>
</body>
</html>