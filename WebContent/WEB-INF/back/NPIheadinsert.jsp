<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<title>信息展示</title>
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/search.css" rel="stylesheet">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrapValidator.css" />
	<link rel="stylesheet" href="css/bootstrap-datepicker.css" />
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.css" />
	<link rel="stylesheet" href="css/timepicker.less" />
	<link rel="stylesheet" href="css/bootstrap-timepicker.css" />
	  <link href="css/Site_Css.css" rel="stylesheet">
    <link href="css/qblue_css.css" rel="stylesheet">
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    	<!-- [if lt IE 7]-- >
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <!-- [endif] -->
<style type="text/css">
div{
border: none;
}
input,select{
border:1px #0088CC solid;
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
	                      	<table border='0' cellpadding='0' cellspacing='0' width="100%" align='center'>                         
						        <tr>
						            <td height='27px'  class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 专案信息添加</td>
						            <td align='right' class='menubarAA_menu_td'><font color="red"></font></td>
						        </tr>
						        <tr><td height='5px' colspan='2' ></td></tr>
						    </table>
		                    <!-- 頭部菜單 End -->
              
                    <!-- 操作菜單　結束 -->
	<!--  action="/npi.test/HEAD_DoHeadInsert"-->
<div style="padding: 5 5 5 5; margin: 10 10 10 10; border: solid 1px #a9c9ee; text-align:center;" cellpadding="0"  cellspacing="0"">
<form class="form-horizontal required-validate" role="form" id="form1" name="form1" action="/npi.test/HEAD_DoHeadInsert">
    
    <div class="form-group">
	    <label for="InputCusname" class="col-sm-1 control-label">客户名称</label>
	    
	    <input type="text" name="cusname" id="InputCusname">
	    
  	</div>
  	<div class="form-group">
	    <label for="InputProname" class="col-sm-1 control-label">专案名称</label>
	   
	    <input type="text" name="proname"  id="InputProname">
	    
  	</div>
  	<div class="form-group row">
    	<label for="SelectStage" class="col-sm-1 control-label">选择阶段</label>
    	
			<select name="province" id="province"    onchange="changeSelect(this.selectedIndex)">
				<option selected  disabled="disabled" >-- 请选择 --</option>
			</select>
			<select name="stage" id="stage" >
			    <option selected  disabled="disabled" >-- 请选择 --</option>
			</select>
    	
  	</div>
  	<div class="form-group">
	    <label for="InputModel" class="col-sm-1 control-label">机种代码</label>
	   
	    <input type="text" name="modeltype"  id="InputModel">
	   
  	</div>
  	<div class="form-group">
		<label for="InputDate" class="col-sm-1 control-label">试产日期</label>
		
    	<input  type="text" id="trydate" name="trydate" class="form_datetime" >
		
	</div>
	<div class="form-group">
		<label for="InputTime" class="col-sm-1 control-label">试产时间</label>
		
		<input type="text"  id="trytime" name="trytime"  class=" form_datetime" >
		
	</div>
	<div class="form-group">
		<label for="InputTeam" class="col-sm-1 control-label">生产班别</label>
		
		<input type="text"  id="team" name="team"  >
		
	</div>
	<div class="form-group">
		<label for="InputTeam" class="col-sm-1 control-label">试产地点</label>
		
		<input type="text"  id="trialsite" name="trialsite"  >
		
	</div>
	<div class="form-group">
		<label for="InputTeam" class="col-sm-1 control-label">投入数量</label>
		
		<input type="text"  id="number" name="number"  >
		
	</div>
	<div class="form-group">
		<label for="InputTeam" class="col-sm-1 control-label">良品数量</label>
		
		<input type="text"  id="goodnumber" name="goodnumber" >
		
	</div>
	<div class="form-group">
		<label for="InputTeam" class="col-sm-1 control-label"></label>
		<div class="col-sm-3">
		<button type="submit" class="text_input_button">提交</button>
		<button type="reset" class="text_input_button">重置</button>
		 <input type="button" class="text_input_button" onclick='window.location.href="/npi.test/HEAD_ToHeadMain"' value="返回" />          
	
		</div>
	</div>
        
	</form>
	</div>
 	</table>  
</div>  	
		<script type="text/javascript" src="js/jquery.js" ></script>
		<script type="text/javascript" src="js/formvali.js" ></script>
		<script type="text/javascript" src="js/bootstrapValidator.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js" ></script>
		<script type="text/javascript" src="js/bootstrap-datepicker.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap-timepicker.js" ></script>
		
<script >
		 var arr_province = ["--请选择--","EV","DV","PV","MP"];
		 var arr_stage = [
		 				 ["--请选择--"],
		                 ["--请选择--","EV1","EV2","EV3","EV4","EV5","EV6"],
		                 ["--请选择--","DV1","DV2","DV3","DV4","DV5","DV6"],
		                 ["--请选择--","PV1","PV2","PV3","PV4","PV5","PV6"],
		                 ["--请选择--","MP1"]
		             ];
		 //网页加载  完成，初始化菜单
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
		      var province = document.form1.province;
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