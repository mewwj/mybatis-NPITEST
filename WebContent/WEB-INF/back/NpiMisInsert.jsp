<%@ page language="java" contentType="text/html; charset=gbk"  pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>��Ϣ���</title>
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrapValidator.css" />
	<link rel="stylesheet" href="css/bootstrap-datepicker.css" />
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.css" />
	<link rel="stylesheet" href="css/timepicker.less" />
	<link rel="stylesheet" href="css/bootstrap-timepicker.css" />

	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    	<!--[if lt IE 7]>
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <![endif]-->
<style type="text/css">
BODY {
	FONT-SIZE: 12px; FONT-FAMILY: "Verdana", "Arial", "ϸ����", "sans-serif";
     }
table
{
    FONT-SIZE: 12px; FONT-FAMILY: "Verdana", "Arial", "ϸ����", "sans-serif";
}
div{
border:none;
}
table.zhuanan {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.zhuanan th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.zhuanan td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>	       
</head>
<body bgcolor="#FFFFFF" topmargin="5">
    <div style="width:100%;">     
        <table border="0" cellpadding="0" cellspacing="0" width="100%">            
            <tr>
                <td>
                    <!-- �����ˆΡ��_ʼ -->             
                   <!-- �^���ˆ� Start -->
	                    <table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>                         
                          <tr>
                            <td height='27px' class='menubarAA_function_text'><b>��ǰλ�ã�</b>�aƷ�OӋ���ƈ��  > ������Ϣ���</td>
                            <td class='menubarAA_menu_td' align='right'><font color="red"></font></td>
                          </tr>                         
                        </table>
                    <!-- �^���ˆ� End -->
                    
                    
  	
<form  action="/npi.test/ITEM_DoItemsInsert" method="post" name="form1" id="form1" enctype="multipart/form-data" 
			class="form-horizontal required-validate">
<div style=" padding: 2 5 5 5; margin: 2 10 10 10;  cellpadding="0"  cellspacing="0">                   
<div style=" padding: 2 5 5 5; margin: 2 10 10 10;  cellpadding="0"  cellspacing="0">
	<c:forEach items="${insertheadlist}" var="item" varStatus="status"> 
	 <table style="width: 100%; padding: 0 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
                                                                <tr style="height:30px;">
                                                                    <td style="width:10%; text-align:right;">
                                                                     	 �׶Σ�
                                                                    </td>
                                                                    <td style="width:30%">
                                                                       <input type="text" value="${item.stage0}" readonly="readonly" name="stage0" id="msginput" style="border: none;"/> <input type="text" value="${item.stage}" readonly="readonly" name="stage" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                    <td style="width:13%; text-align:right;">
                                                                                                                                                                                                ר�����ƣ�
                                                                    </td>
                                                                    <td style="width:30%">
                                                                       <input type="text" readonly="readonly" value="${item.proname}"  name="proname" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                </tr> 
                                                                
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                               ���ִ��룺
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.modeltype}"  name="modeltype" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                �Բ�ʱ�䣺
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.trytime}"  name="trytime" id="msginput" style="border: none;" />
                                                                    </td>
                                                                  
                                                                </tr>
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                             �������
                                                                    </td>
                                                                    <td>
                                                                      <input type="text" readonly="readonly" value="${item.team}"  name="team" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                �ͻ�����:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.cusname}" name="cusname"  id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                  
                                                                </tr>
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                               �Բ��ص�:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.trialsite}" name="trialsite" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                Ͷ������:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.number}" name="number" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                  
                                                                </tr>
                                                                   <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                              ��Ʒ����:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.goodnumber}" name="goodnumber" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                               ��Ʒ����:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.goodrate}" name="goodrate" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                  
                                                                </tr>                                                                                                                                                                
                                                            </table>  
</c:forEach>
</div>

<div class="row clearfix" style="border:1px solid #96c2f1;background:#eff7ff;margin: 10 10 10 10;" >
	<div class="col-md-1"></div>
		<div class="btn-group col-md-10"  >
		<button type="button"  id="selAll" class="btn btn-default"><i class="fa fa-toggle-on fa-lg"></i>ȫѡ</button>  
		<button type="button"  id="unselAll" class="btn btn-default"><i class="fa fa-toggle-off fa-lg"></i>ȡ��ȫѡ</button>
	  	<button type="button" class="btn btn-default" id="deleteTable"><i class="fa fa-trash-o fa-lg"></i>ɾ����</button>
	  	<button type="button" class="btn btn-default" id="addTable"><i class="fa fa-plus-square-o fa-lg"></i>������</button>
	  	<button type="submit" class="btn btn-default"><i class="fa fa-send fa-lg"></i>�ύ</button>
		</div>
</div>
<div class="row clearfix"  style="border:1px solid #96c2f1;background:#eff7ff;margin: 10 10 10 10;" >
<table>
<tbody>
<tr>
    <td style="width: 200px;"><label for="insproject">ѡ�������</label></td>
    <td><select  name="insproject">
    		<option disabled selected>--��ѡ��--</option>
		  	<option value="��Ʒ���">��Ʒ���</option>
			<option value="�������">�������</option>
			<option value="���շ���">���շ���</option>
			<option value="��ҵ����">��ҵ����</option>
			<option value="���Ϸ���">���Ϸ���</option>
			<option value="�ͻ�����">�ͻ�����</option>	  
			<option value="��������">��������</option>	 
    	</select> 
    </td>
    <td><select  name="item">
    		<option disabled selected>--��ѡ��--</option>
			<option value ="��������">��������</option>
			<option value ="���Ӳ���">���Ӳ���</option>
			<option value ="���Ȳ���">���Ȳ���</option>
			<option value="��װ����">��װ����</option>
			<option value="��������">��������</option>	 
    		</select>
    </td>
    <td><select  name="items">
    		<option  disabled selected>--��ѡ��--</option>
			<option value ="SoundBar">SoundBar</option>
			<option value ="WOOFER">WOOFER</option>
    	</select>
    </td>
 </tr>
</tbody>
</table>   	
</div>

<div class="row clearfix" style="border:1px solid #96c2f1;background:#eff7ff;margin: 10 10 10 10;" >
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<table id="table1" class="zhuanan" >
		<thead>
			<tr>
			<th>ѡ��</th>
			<th>���������</th>
			<th>ͼƬ</th>
			<th>������</th>
			<th>ȱ�ݵȼ�</th>
			<th>�����</th>
			<th>�ƻ�ʱ��</th>
			</tr>
		</thead>
		<tbody>
		    <tr>
			<td><input type="checkbox" name="check"  id="check" ></td>
		    <td><input type="text" name="problems0"  /></td>
		    <td><input id="pic" name="pic" type="file"  /></td>
		    <td><input type="text"  name="ng0" ></td>
		    <td><input type="text"  name="defectlevels0"  /></td>
		    <td><input type="text"  name="exhibitor0"  /></td>
		    <td><input type="text"  name="plantime0" id="plantime"  class="form_datetime" /></td>
			</tr>
		</tbody>	
	</table>
</div>	
</div>
</div>  
</form>
</td>
</tr>
</table>
</div>
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/bootstrapValidator.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datepicker.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap-timepicker.js" ></script>
<script>
 $(document).ready(function(){
	$('#plantime').datetimepicker({
			minView: "month",
            format: "yyyy-mm-dd",  
            clearBtn:true,  
            todayBtn:true,
            autoclose:true
});
  	
    	 var i=1;
    $("#addTable").click(function(){
         var tr="<tr><td><input type=\"checkbox\"  name=\"check\" id=\"check\" >"+
              "</td><td><input type=\"text\" name=\"problems"+ i +"\"  />"+
              "</td><td><input id=\"pic\"  name=\"pic"+ i +"\" type=\"file\"  />"+
              "</td><td><input type=\"text\"   name=\"ng"+ i +"\"  />"+
              "</td><td><input type=\"text\"   name=\"defectlevels"+ i + "\"  />"+
              "</td><td><input type=\"text\"  name=\"exhibitor"+ i + "\"  />"+
              "</td><td><input type=\"time\" name=\"plantime"+ i + "\" id=\"plantime\" class=\"form_datetime\" /></td><tr>";
              i++;
              $("#table1").append(tr);
              $("input[name^='plantim']").datetimepicker({
      			minView: "month",
                  format: "yyyy-mm-dd",  
                  clearBtn:true,  
                  todayBtn:true,
                  autoclose:true
      		});
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