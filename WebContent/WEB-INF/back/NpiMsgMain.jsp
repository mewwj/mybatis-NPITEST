<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	  <title>信息展示</title>
	  <meta name="renderer" content="webkit">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	   <link rel="stylesheet" href="css/layui.css"  media="all">
	    <link href="css/Site_Css.css" rel="stylesheet">
	    <link href="css/qblue_css.css" rel="stylesheet">
	   	    	<!-- [if lt IE 7]>
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <![endif] -->
<style type="text/css">
div{
border:none;
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
                            <td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 检讨信息维护</td>
                            <td class='menubarAA_menu_td' align='right'><font color="red"></font></td>
                          </tr>
                          <tr><td height='5px' colspan='2'></td></tr>
                        </table>
                    <!-- 頭部菜單 End -->
        			<!-- 筛选条件 -->
					
					<table cellspacing="0" cellpadding="0" width='100%' align="center" border="0">
                        <tbody>
                            <tr>
                                <td bgcolor="#ffffff">
                                    <table cellspacing="0" cellpadding="0" width='100%' border="0" style="border:solid 1px #a9c9ee;">
                                        <tbody>
                                            <tr>                                                
                                                <td style='padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px;
                                                    height: 100px' valign="top"> 
                                                    	<form action="/npi.test/ITEM_ToItemsMain2"  name="form1" id="form1" method="post">
														<table style="width: 100%; padding: 5 5 5 5;" cellpadding="0"  cellspacing="0">
															<tbody>
																<tr style="height:30px;">
																	<td style="width:15%; text-align:right;">
																		客户名称:
																	</td>
																	<td style="width:35%;">
																		<input name="cusname">
																	</td>
																	<td style="width:15%; text-align:right;">
																		专案名称:
																	</td>
																	<td style="width:35%;">
																		<input name="proname"> 
																	</td>
																</tr>
																<tr style="height:30px;background-color:#e3ecfc">
											                         <td style="text-align:right;">
											                         	阶段选择：
																	</td>
																	<td>
																		<select name="province" id="province"  style="width: 100px;" onchange="changeSelect(this.selectedIndex)">
																           <option selected  disabled="disabled">-- 请选择 --</option>
																           </select>
														        			<select name="stage" id="stage" style="width: 100px;">
														        			 <option selected  disabled="disabled">-- 请选择 --</option>
														        	 		</select>
																	</td>	
																	<td colspan="2" align="center">
																		<input type="submit"  class="text_input_button"/> 
																	</td>																	
																</tr>
																<tr style="height:30px;">
                                                                </tr>   
															</tbody>
														</table>
														</form>
														
														
														<form action="/npi.test/ITEM_DoItemMain2" id="mainheadform" method="post">
														<div style="background-color:#e3ecfc;height:30px;">
															<table>
																<tbody>
																	<tr>
																	<td align="left" >
                                                                          <input type="submit" class="text_input_button" name="delete" id="delete" value="删除"></input>                                   
                                                                    </td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="height: 20px;">
														</div>
																<!-- 表格 -->																
															    <table class="dgdatagridStyle" cellspacing="0" rules="all" border="1" style="width:100%;border-collapse:collapse;">
															        <thead>
															   		 <tr>
															      <th class="dgdatagridThStyle" style="width:40px"><input type="checkbox" name="checkall" onclick="swapCheck()" > </th>
															      <th class="dgdatagridThStyle">阶段</th>
															      <th class="dgdatagridThStyle">检讨项目</th>
															      <th class="dgdatagridThStyle">错误</th>
															      <th class="dgdatagridThStyle">错误点</th>
															      <th class="dgdatagridThStyle">不良问题点</th>
															      <th class="dgdatagridThStyle">不良数</th>
															      <th class="dgdatagridThStyle">缺陷等级</th>
															      <th class="dgdatagridThStyle">原因分析</th>
															      <th class="dgdatagridThStyle">改善对策</th>
															      <th class="dgdatagridThStyle">提出人</th>
															      <th class="dgdatagridThStyle">责任人</th>
															      <th class="dgdatagridThStyle">计划时间</th>
															      <th class="dgdatagridThStyle">完成时间</th>
															      <th class="dgdatagridThStyle">效果确认</th>
															      <th class="dgdatagridThStyle">成本影响</th>
															      <th class="dgdatagridThStyle">备注</th>
															      <th class="dgdatagridThStyle">操作</th>
															    </tr>
															  </thead>
															  <tbody>
															   <c:forEach items="${allmessageslist}" var="item" varStatus="status"> 
															  	<tr>
															  	<td class="dgdatagridTdNewStyle" style="text-align:center;"><input type="checkbox" name="checkbox" value="${item.id}" /></td>
															  	<td class="dgdatagridTdNewStyle">${item.stage0} &nbsp; ${item.stage} </td>
															  	<td class="dgdatagridTdNewStyle">${item.insproject}</td>
															  	<td class="dgdatagridTdNewStyle">${item.item}</td>
															  	<td class="dgdatagridTdNewStyle">${item.items}</td>
															  	<td class="dgdatagridTdNewStyle">${item.problems}
															  	<br/><img src="images/${item.filenamea}" alt="[图片]" width="100px" height="100px"/></td>
															  	<td class="dgdatagridTdNewStyle">${item.ng}</td>
															  	<td class="dgdatagridTdNewStyle">${item.defectlevels}</td>
															  	<td class="dgdatagridTdNewStyle">${item.reasons}</td>
															  	<td class="dgdatagridTdNewStyle">${item.measures}
															  	<br/><img src="images/${item.filenameb}" alt="[图片]" width="100px" height="100px"/></td>
															  	<td class="dgdatagridTdNewStyle">${item.exhibitor}</td>
															  	<td class="dgdatagridTdNewStyle">${item.head}</td>
															  	<td class="dgdatagridTdNewStyle">${item.plantime}</td>
															  	<td class="dgdatagridTdNewStyle">${item.finishtime}</td>
															  	<td class="dgdatagridTdNewStyle">${item.confirm}</td>
															  	<td class="dgdatagridTdNewStyle">${item.affect}</td>
															  	<td class="dgdatagridTdNewStyle">${item.comment}</td>
															  	<td class="dgdatagridTdNewStyle">
															  	  <a href="/npi.test/ITEM_DoItemMain2?aid=${item.id}">更新</a> <br/>
															  	  <a href="/npi.test/ITEM_DoItemMain2?did=${item.id}">删除</a>  <br/>
															    </td>
															  	</tr>
															   </c:forEach>
															</tbody>
														</table>
														</form>
														
					
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>				
					  
					  


			</td>
		</tr>
	</table>
</div>	
		<script src="js/layui.all.js" charset="utf-8"></script>
	    <script src="js/jquery.js" charset="utf-8"></script>
 <script type="text/javascript">  
        //checkbox 全选/取消全选  
        var isCheckAll = false;  
        function swapCheck() {  
            if (isCheckAll) {  
                $("input[type='checkbox']").each(function() {  
                    this.checked = false;  
                });  
                isCheckAll = false;  
            } else {  
                $("input[type='checkbox']").each(function() {  
                    this.checked = true;  
                });  
                isCheckAll = true;  
            }  
        }  
</script>
<script >
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