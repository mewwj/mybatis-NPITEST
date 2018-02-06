	<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
	     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
	     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
		  <title>信息展示</title>
		  <meta name="renderer" content="webkit">
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	    <link href="css/Site_Css.css" rel="stylesheet">
	    <link href="css/qblue_css.css" rel="stylesheet">
<style type="text/css">
div{
border:none;
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
                            <td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 专案信息维护</td>
                            <td class='menubarAA_menu_td' align='right'><font color="red"></font></td>
                          </tr>
                          <tr><td height='5px' colspan='2'></td></tr>
                        </table>
                    <!-- 頭部菜單 End -->
              
                    <!-- 操作菜單　結束 -->
                    
                    <!-- 內容開始 -->
                    <!-- 選項卡 Start -->
                    <table cellspacing="0" cellpadding="0" width='100%' align="center" border="0">
                        <tbody>
                            <tr>
                                <td bgcolor="#ffffff">
                                    <table cellspacing="0" cellpadding="0" width='100%' border="0" style="border:solid 1px #a9c9ee;">
                                        <tbody>
                                            <tr>                                                
                                                <td style='padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px;
                                                    height: 100px' valign="top">                                                   
                                                        <!--內容框Start-->
                                                            <!-- 查詢框　開始 -->
                                                            <form action="/npi.test/HEAD_ToHeadMain"  name="form1" id="form1" method="post" >
                                                           <table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
                                                                <tr style="height:30px;">
                                                                    <td style="width:13%; text-align:right;">
                                                                     	 客户名称：
                                                                    </td>
                                                                    <td style="width:35%">
                                                                      <input type="text"  id="InputkehuName" name="cusname">
                                                                    </td>
                                                                    <td style="width:15%; text-align:right;">
                                                                        		 专案名称：
                                                                    </td>
                                                                    <td style="width:35%">
                                                                       <input type="text" name="proname" id="InputzhuananName" >
                                                                    </td>
                                                                </tr> 
                                                                
                                                                <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                       	  阶段选择：
                                                                    </td>
                                                                    <td  colspan="3">
                                                                         <select name="province" id="province"  style="width: 100px;" class="form-control" onchange="changeSelect(this.selectedIndex)">
																			<option   disabled="disabled">-- 请选择 --</option>
																		</select>
																		<select name="stage" id="stage" class="form-control" style="width: 100px;">
																		    <option   disabled="disabled">-- 请选择 --</option>
																    	</select>
                                                                    </td>
                                                                  
                                                                </tr>
                                                                <tr style="height:30px;">
                                                                   
                                                                    <td colspan="4" align="center" style="border-top:solid 1px #a9c9ee;">
                                                                        <button type="submit" class="text_input_button">查询专案信息</button>
                                                                    </td>
                                                                   
                                                                </tr>                                                                                 
                                                            </table>  
                                                            </form>	    
                                                            <div style="line-height:5px;">&nbsp;</div>   
                                                                                                                         
                                                                                                                  
                                                             <!-- 查詢框　結束 -->                                                                                                                                                                                 
                                                            
                                                               <!-- 查詢內容顯示 開始 -->                                             
                                                               
                                                                  <table class="dgdatagridStyle" cellspacing="0" rules="all" border="1" style="width:100%;border-collapse:collapse;">
																			<thead>
																			    <tr class="info">
																			      <th class="dgdatagridThStyle" style="width:40px">序号</th>
																			      <th class="dgdatagridThStyle">阶段</th>
																			      <th class="dgdatagridThStyle">客户名称</th>
																			      <th class="dgdatagridThStyle">专案名称</th>
																			      <th class="dgdatagridThStyle">机种代码</th>
																			      <th class="dgdatagridThStyle">试产日期</th>
																			      <th class="dgdatagridThStyle">试产时间</th>
																			      <th class="dgdatagridThStyle">生产班别</th>
																			      <th class="dgdatagridThStyle">试产地点</th>
																			      <th class="dgdatagridThStyle">投入数量</th>
																			      <th class="dgdatagridThStyle">良品数量</th>
																			      <th class="dgdatagridThStyle">良品率</th>
																			      <th class="dgdatagridThStyle">操作</th>
																			    </tr>
																			</thead>
																			<tbody>
																			  <c:forEach items="${mainheadlist}" var="item" varStatus="status"> 
																			  	<tr>
																			  	<td class="dgdatagridTdNewStyle">${status.index+1}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.stage}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.cusname}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.proname}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.modeltype}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.trydate}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.trytime}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.team}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.trialsite}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.number}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.goodnumber}</td>
																			  	<td class="dgdatagridTdNewStyle">${item.goodrate}</td>
																			  	<td class="dgdatagridTdNewStyle">
																				  <a href="/npi.test/HEAD_DoHeadMain?did=${item.id}">删除</a> 
																			    </td>
																			  	</tr>
																			    </c:forEach>
																			</tbody>
																			</table>  
                                                               <!-- 查詢內容顯示 結束 -->  
                                                            <!--內容框End-->
                                                                          
                                                </td>                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>                          
                        </tbody>
                    </table>
                    <!--選項卡 End-->
                    <!-- 內容結束 -->
                </td>
            </tr>
         </table>  
      
    </div>   
    
    
     

			

		
		<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
		<script src="js/jquery.js" charset="utf-8"></script>
		<script >
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
	        var province = document.form1.zprovince;
	        var city = document.form1.zstage;
	
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
	        var city = document.form1.zstage;
	        //修改省份列表的选择项
	         var province = document.form1.zprovince;
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