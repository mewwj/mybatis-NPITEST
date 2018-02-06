<%@ page language="java" contentType="text/html; charset=gbk"  pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>信息展示</title>
	  	<link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/search.css" rel="stylesheet">
	    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	    <script src="js/jquery.js"></script>
	    <link href="css/Site_Css.css" rel="stylesheet">
        <link href="css/qblue_css.css" rel="stylesheet">
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    	<!--[if lt IE 7]>
	      <script src="https://cdn.bootcss.com/html5shiv/r23/html5.js"></script>
	      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
	       <![endif]-->
		<style type="text/css" >
		div{
			border: none;
		}
		label{
		      margin-right:0px;
		      padding-right:0px;
		      font-family:"微软雅黑","黑体","宋体";
		      font-size:16px;
		      color: #0088CC;      
		}
		#msg{
			font-family: verdana,arial,sans-serif;
			font-size:16px;
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
                            <td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告  > 改善对策</td>
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
                                                          <c:forEach items="${oneitemlist}" var="item" varStatus="status">
																<form action="/npi.test/ITEM_DoItemsUpdate" enctype="multipart/form-data" method="post" name="form1" class="form-horizontal">
																<table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
	                                                                <tr style="height:30px;">
	                                                                    <td style="width:10%; text-align:right;">
	                                                                     	 客户名称：
	                                                                    </td>
	                                                                    <td style="width:30%">
	                                                                       <input type="text" name="cusname" readonly="readonly" id="cusname" value="${item.cusname}"  style="border: none;" />
	                                                                    </td>
	                                                                    <td style="width:13%; text-align:right;">
	                                                                                                                                                                                                检讨项目：
	                                                                    </td>
	                                                                    <td style="width:30%">
	                                                                       <input type="text" name="insproject" readonly="readonly" id="insproject" value="${item.insproject}" style="border: none;"/>
	                                                                    </td>
	                                                                </tr> 
	                                                                <tr style="height:30px;background-color:#e3ecfc">
	                                                                    <td style="text-align:right;">
	                                                                     	 专案名称：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="proname" id="proname" readonly="readonly" value="${item.proname}"  style="border: none;" />
	                                                                    </td>
	                                                                    <td style="text-align:right;">
	                                                                                                                                                                                                阶段：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="stage0" id="stage0" readonly="readonly" value="${item.stage0}"  style="border:none;" />
	                                                                    </td>
	                                                                </tr> 
	                                                                 <tr style="height:30px;">
	                                                                    <td style="text-align:right;">
	                                                                     	 问题点：
	                                                                    </td>
	                                                                    <td>
	                                                                       	<input type="text" name="item" id="item" readonly="readonly" value="${item.item}"  style="border:none;width: 80px;" />
																			<input type="text" name="items" id="items"  readonly="readonly" value="${item.items}" style="border:none;" />
	                                                                    </td>
	                                                                    <td style="text-align:right;">
	                                                                                                                                                                                                不良问题点：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="problems" id="problems" readonly="readonly" value="${item.problems}"  style="border:none;" />
	                                                                    </td>
	                                                                </tr> 
	                                                                <tr style="height:30px;background-color:#e3ecfc">
	                                                                    <td style="text-align:right;">
	                                                                     	 不良数：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="ng" id="ng" readonly="readonly" value="${item.ng}"  style="border: 0;" />
	                                                                    </td>
	                                                                    <td style="text-align:right;">
	                                                                                                                                                                                                缺陷等级：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="defectlevels" readonly="readonly" id="defectlevels" style="border: 0;" value="${item.defectlevels}" />
	                                                                    </td>
	                                                                </tr> 
	                                                                 <tr style="height:30px;">
	                                                                    <td style="text-align:right;">
	                                                                     	 提出人：
	                                                                    </td>
	                                                                    <td>
	                                                                       <input type="text" name="exhibitor" id="exhibitor"  readonly="readonly" value="${item.exhibitor}"  style="border: none;" />
	                                                                    </td>
	                                                                    <td style="text-align:right;">
	                                                                                                                                                                                                计划时间：
	                                                                    </td>
	                                                                    <td>
	                                                      					<input type="text" name="plantime" id="plantime" readonly="readonly" value="${item.plantime}"  style="border: none;" />
	                                                                    </td>
	                                                                </tr> 
	                                                              
	                                                             </table>
	                                                             
	                                                             <div style="line-height:5px;">&nbsp;</div> 	
	                                                             <div style="line-height:28px; border:solid 1px #4297d7;background-color:#4597d7;">&nbsp;&nbsp;<b>責任人添加信息</b></div>
	                                                             <div style="line-height:5px;">&nbsp;</div>
	                                                             <table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0"  cellspacing="0">     
		                                                                <tr style="height:30px;">
		                                                                    <td style="width:10%; text-align:right;">
		                                                                     	 原因分析：
		                                                                    </td>
		                                                                    <td style="width:30%">
		                                                                       <input type="text" name="reasons" id="reasons" value="${item.reasons}"   class="text_input_zy" />
        																	   <input type="text" name="id" id="id" readonly="readonly" value="${item.id}"  style="border: 0;width:0px" />
		                                                                    </td>
		                                                                    <td style="width:13%; text-align:right;">
		                                                                                                                                                                                                改善对策：
		                                                                    </td>
		                                                                    <td style="width:30%">
		                                                                       <input type="text" name="measures" id="measures" value="${item.measures}"   class="text_input_zy" />
		                                                                    </td>
		                                                                </tr> 
		                                                                
		                                                                <tr style="height:30px;background-color:#e3ecfc">
		                                                                    <td style="text-align:right;">
		                                                                                                                                                                                               图片：
		                                                                    </td>
		                                                                    <td>
		                                                                         <input type="file" name="filenameb" id="filenameb" value="${item.filenameb}" class="text_input_zy">
		                                                                    </td>
			                                                                  <td style="text-align:right;">
			                                                                                                                                                                                               责任人：
			                                                                    </td>
			                                                                    <td>
			                                                                       <input type="text" name="head" id="head" value="${item.head}" class="text_input_zy"/>
			                                                                    </td>
		                                                                </tr>
		                                                                <tr style="height:30px;">
		                                                                   
		                                                                    <td colspan="4" align="center" style="border-top:solid 1px #a9c9ee;">
		                                                                    <button type="submit" class="text_input_button">提交</button>	<button type="reset" class="text_input_button">重置</button>
		                                                                                                                                         
		                                                                    </td>
		                                                                   
		                                                                </tr>                                                                                                 
		                                                            </table>  					
														</form>
													</c:forEach>
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
    
    
     

			

</body>
</html>
