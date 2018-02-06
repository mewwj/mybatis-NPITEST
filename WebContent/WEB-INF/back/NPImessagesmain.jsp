<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
		  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		  <title>信息展示</title>
		  <meta name="renderer" content="webkit">
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  	<link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/search.css" rel="stylesheet">
	    	    <link href="css/Site_Css.css" rel="stylesheet">
	    <link href="css/qblue_css.css" rel="stylesheet">
	    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	    <script src="js/jquery.js"></script>
<style type="text/css">
div{
border:none;
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
	                    <table border='0' cellpadding='0' cellspacing='0' width='100%' align='center'>                         
                          <tr>
                            <td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 检讨信息展示</td>
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
                                                          <form action="/npi.test/ITEM_ToItemsMain"  name="form1" id="form1" method="post" class="form-inline">		
                                                           <table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
                                                           
                                                           		 <tr style="height:30px;background-color:#e3ecfc">
                                                                    <td style="text-align:right;">
                                                                                                                                                                                               阶段选择：
                                                                    </td>
                                                                    <td  colspan="3">
                                                                        <select  id="province" name="province" onchange="changeSelect(this.selectedIndex)" style="width:150px;">
																			<option selected  disabled="disabled">-- 请选择 --</option>
																		</select>			
																		<select name="stage" id="stage"  style="width:150px;">
																        	 <option selected  disabled="disabled">-- 请选择 --</option>
																        </select>	
																        
																        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="text_input_button">查询</button>
                                                                    </td>
                                                                  
                                                                </tr>  
                                                           </table>  
                                                            </form>	    
                                                            <div style="line-height:5px;">&nbsp;</div>   
                                                            <form action="/npi.test/ExcelExportServlet" id="mainheadform" method="post">
                                                            <div style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee">
                                                            	<h4><b>客户名称：${allmessagescusname}	专案名称：${allmessagesproname}</b>
                                                            	<button type="submit" class="text_input_button" ><a class="fa fa-file-excel-o fa-lg"></a>导出</button>  
                                                            	</h4> 
                                                            </div>                                                             
                                                             <div style="line-height:5px;">&nbsp;</div>                                                        
                                                             <!-- 查詢框　結束 -->                                                                                                                                                                                 
                                                            
                                                               <!-- 查詢內容顯示 開始 -->                                             
                                                               <table class="dgdatagridStyle" cellspacing="0" rules="all" border="1" style="width:100%;border-collapse:collapse;">
																	<tr align="center">
																		<th class="dgdatagridThStyle" style="width:40px; text-align:center;"><input type="checkbox" name="checkall" onclick="swapCheck()" style="border:0px" ></th>
																		<th class="dgdatagridThStyle" style="width:40px">序号</th>
																		<td class="dgdatagridThStyle">阶段</td>
																		<td class="dgdatagridThStyle">检讨项目</td>
																		<td class="dgdatagridThStyle">错误</td>
																		<td class="dgdatagridThStyle">错误点</td>																		
																		<td class="dgdatagridThStyle">不良问题点</td>
																		<td class="dgdatagridThStyle">不良数</td>
																		<td class="dgdatagridThStyle">缺陷等级</td>
																		<td class="dgdatagridThStyle">原因分析</td>
																		<td class="dgdatagridThStyle">改善对策</td>
																		<td class="dgdatagridThStyle">提出人</td>
																		<td class="dgdatagridThStyle">责任人</td>
																		<td class="dgdatagridThStyle">计划时间</td>
																		<td class="dgdatagridThStyle">完成时间</td>
																		<td class="dgdatagridThStyle">效果确认</td>
																		<td class="dgdatagridThStyle">成本影响</td>
																		<!--<td class="dgdatagridThStyle">备注</td>
																		<td class="dgdatagridThStyle">PM备注</td>-->
																		<td class="dgdatagridThStyle">操作</td>																		
																	</tr>
																	 <c:forEach items="${allmessageslist}" var="item" varStatus="status"> 
																	  	<tr>
																	  	<td class="dgdatagridTdNewStyle" style="text-align:center;"><input type="checkbox" name="check" value="${item.id}" style="border:0px"/></td>
																	  	<td class="dgdatagridTdNewStyle">${status.index+1}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.stage0} &nbsp; ${item.stage} </td>
																	  	<td class="dgdatagridTdNewStyle">${item.insproject}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.item}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.items}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.problems}
																	  	<br/><img src="images/${item.filenamea}"  width="100" height="100"/></td>
																	  	<td class="dgdatagridTdNewStyle">${item.ng}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.defectlevels}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.reasons}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.measures}
																	  	<br/><img src="images/${item.filenameb}"  width="100" height="100" /></td>
																	  	<td class="dgdatagridTdNewStyle">${item.exhibitor}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.head}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.plantime}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.finishtime}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.confirm}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.affect}</td>
																	  	<!--<td class="dgdatagridTdNewStyle">${item.comment}</td>
																	  	<td class="dgdatagridTdNewStyle">${item.pmcomm}</td>-->
																	  	<td class="dgdatagridTdNewStyle">
																	  	  <a href="/npi.test/ITEM_DoItemMain?aid=${item.id}">改善对策</a> <br/>
																	    </td>
																	  	</tr>
																	   </c:forEach>																
																</table>                                                                                                                                                      
                                                               <!-- 查詢內容顯示 結束 -->  
                                                            </form>                                                                    
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