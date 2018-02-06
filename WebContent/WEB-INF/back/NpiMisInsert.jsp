<%@ page language="java" contentType="text/html; charset=gbk"  pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>信息添加</title>
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
	FONT-SIZE: 12px; FONT-FAMILY: "Verdana", "Arial", "细明体", "sans-serif";
     }
table
{
    FONT-SIZE: 12px; FONT-FAMILY: "Verdana", "Arial", "细明体", "sans-serif";
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
                    <!-- 操作菜單　開始 -->             
                   <!-- 頭部菜單 Start -->
	                    <table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>                         
                          <tr>
                            <td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 检讨信息添加</td>
                            <td class='menubarAA_menu_td' align='right'><font color="red"></font></td>
                          </tr>                         
                        </table>
                    <!-- 頭部菜單 End -->
                    
                    
  	
<form  action="/npi.test/ITEM_DoItemsInsert" method="post" name="form1" id="form1" enctype="multipart/form-data" 
			class="form-horizontal required-validate">
<div style=" padding: 2 5 5 5; margin: 2 10 10 10;  cellpadding="0"  cellspacing="0">                   
<div style=" padding: 2 5 5 5; margin: 2 10 10 10;  cellpadding="0"  cellspacing="0">
	<c:forEach items="${insertheadlist}" var="item" varStatus="status"> 
	 <table style="width: 100%; padding: 0 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
                                                                <tr style="height:30px;">
                                                                    <td style="width:10%; text-align:right;">
                                                                     	 阶段：
                                                                    </td>
                                                                    <td style="width:30%">
                                                                       <input type="text" value="${item.stage0}" readonly="readonly" name="stage0" id="msginput" style="border: none;"/> <input type="text" value="${item.stage}" readonly="readonly" name="stage" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                    <td style="width:13%; text-align:right;">
                                                                                                                                                                                                专案名称：
                                                                    </td>
                                                                    <td style="width:30%">
                                                                       <input type="text" readonly="readonly" value="${item.proname}"  name="proname" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                </tr> 
                                                                
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                               机种代码：
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.modeltype}"  name="modeltype" id="msginput" style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                试产时间：
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.trytime}"  name="trytime" id="msginput" style="border: none;" />
                                                                    </td>
                                                                  
                                                                </tr>
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                             生产班别：
                                                                    </td>
                                                                    <td>
                                                                      <input type="text" readonly="readonly" value="${item.team}"  name="team" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                客户名称:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.cusname}" name="cusname"  id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                  
                                                                </tr>
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                               试产地点:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.trialsite}" name="trialsite" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                                投入数量:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.number}" name="number" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                  
                                                                </tr>
                                                                   <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                              良品数量:
                                                                    </td>
                                                                    <td>
                                                                       <input type="text" readonly="readonly" value="${item.goodnumber}" name="goodnumber" id="msginput"  style="border: none;"/>
                                                                    </td>
                                                                     <td style="text-align:right;">
                                                                                                                                                                                               良品数量:
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
		<button type="button"  id="selAll" class="btn btn-default"><i class="fa fa-toggle-on fa-lg"></i>全选</button>  
		<button type="button"  id="unselAll" class="btn btn-default"><i class="fa fa-toggle-off fa-lg"></i>取消全选</button>
	  	<button type="button" class="btn btn-default" id="deleteTable"><i class="fa fa-trash-o fa-lg"></i>删除行</button>
	  	<button type="button" class="btn btn-default" id="addTable"><i class="fa fa-plus-square-o fa-lg"></i>增加行</button>
	  	<button type="submit" class="btn btn-default"><i class="fa fa-send fa-lg"></i>提交</button>
		</div>
</div>
<div class="row clearfix"  style="border:1px solid #96c2f1;background:#eff7ff;margin: 10 10 10 10;" >
<table>
<tbody>
<tr>
    <td style="width: 200px;"><label for="insproject">选择问题点</label></td>
    <td><select  name="insproject">
    		<option disabled selected>--请选择--</option>
		  	<option value="设计方面">设计方面</option>
			<option value="软件方面">软件方面</option>
			<option value="工艺方面">工艺方面</option>
			<option value="作业方面">作业方面</option>
			<option value="来料方面">来料方面</option>
			<option value="客户方面">客户方面</option>	  
			<option value="其他方面">其他方面</option>	 
    	</select> 
    </td>
    <td><select  name="item">
    		<option disabled selected>--请选择--</option>
			<option value ="机构部分">机构部分</option>
			<option value ="电子部分">电子部分</option>
			<option value ="喇叭部分">喇叭部分</option>
			<option value="包装部分">包装部分</option>
			<option value="其他部分">其他部分</option>	 
    		</select>
    </td>
    <td><select  name="items">
    		<option  disabled selected>--请选择--</option>
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
			<th>选择</th>
			<th>不良问题点</th>
			<th>图片</th>
			<th>不良数</th>
			<th>缺陷等级</th>
			<th>提出人</th>
			<th>计划时间</th>
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