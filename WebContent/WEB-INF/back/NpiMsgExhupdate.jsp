<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>信息展示</title>
	<meta name="renderer" content="webkit">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="css/Site_Css.css" rel="stylesheet">
	<link href="css/qblue_css.css" rel="stylesheet">
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
							<td height='27px' class='menubarAA_function_text'><b>當前位置：</b>產品設計改善報告 > 效果确认</td>
							<td class='menubarAA_menu_td' align='right'>
								<font color="red"></font>
							</td>
						</tr>
						<tr>
							<td height='5px' colspan='2'></td>
						</tr>
					</table>
					<!-- 頭部菜單 End -->

					<!-- 操作菜單　結束 -->

					<!-- 內容開始 -->
					<!-- 選項卡 Start -->
					
					<table cellspacing="0" cellpadding="0" width='100%' align="center" border="0">
						<tbody>
							<tr>
								<td bgcolor="#ffffff">
									<table id="bigger" cellspacing="5" cellpadding="5" width='100%' border="0" style="border:solid 1px #a9c9ee;">
										<tbody>
											<tr>
												<td style='padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px';valign="top">
													<!--內容框Start-->
													<!-- 查詢框　開始 -->
													<!-- 展示专案信息  -->
													<c:forEach items="${exhitemlist}" var="item" varStatus="status">
														<table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
															<tr style="height:25px;background-color:#e3ecfc;">
																<td rowspan="4" style="margin: 10px;"><img src="images/${item.filenamea}" alt="[图片]" width="150px" height="150px" /></td>
																<td>客户名称:${item.cusname}</td>
																<td>专案名称:${item.proname}</td>
																<td>阶段:${item.stage0}>>${item.stage}</td>
															</tr>
															<tr >	
																<td style="border-top:solid 1px #a9c9ee;">不良数：:${item.ng}</td>
																<td style="border-top:solid 1px #a9c9ee;">缺陷等级：:${item.defectlevels}</td>
																<td style="border-top:solid 1px #a9c9ee;">计划时间：:${item.plantime}</td>
															</tr>
															<tr style="height:25px;background-color:#e3ecfc;">
																<td>完成时间：:${item.finishtime}</td>
																<td>提出人：:${item.exhibitor}</td>
																<td>责任人：:${item.head}</td>
															</tr>
															<tr>
																<td style="border-top:solid 1px #a9c9ee;">原因分析:${item.reasons}</td>
																<td style="border-top:solid 1px #a9c9ee;">改善对策:${item.measures}</td>
																<td style="border-top:solid 1px #a9c9ee;"></td>
															</tr>
														</table>
													<div style="line-height:5px;">&nbsp;</div>
													<div style="line-height:28px; border:solid 1px #4297d7;background-color:#4597d7;">&nbsp;&nbsp;<b>效果确认</b></div>
													<div style="line-height:5px;">&nbsp;</div>
														
													<!--进行效果确认 -->
													<form action="/npi.test/ITEM_XiaoGuoQueRen" method="post"  name="form1">
														<table style="width: 100%; padding: 5 5 5 5; border: solid 1px #a9c9ee" cellpadding="0" cellspacing="0">
															<tr>
																<td colspan="3">
																	<input name="id" value="${item.id}" readonly="readonly" style="width: 0; border: 0;" />
																    <input name="cusname" value="${item.cusname}" readonly="readonly" style="width: 0; border: 0; "/>
																    <input name="proname" value="${item.proname}"  readonly="readonly" style="width: 0; border: 0;"/><br/>
																</td>
															</tr>
															<tr style="height:25px;background-color:#e3ecfc;">
																<td>
																<label for="confirm">效果确认：</label>
																<input type="text" name="confirm"  class="text_input_zy" />
																</td>
																<td>
																<label for="affect">成本影响：</label>
																<input type="text" name="affect" class="text_input_zy" />
																</td>
																<td>
																<label for="comment">备注：</label>
																<input type="text" name="comment"  class="text_input_zy"/>
																</td>
															</tr>
															<tr>
																<td colspan="3" style="text-align: center;border-top:solid 1px #a9c9ee;">
																	<button  type="submit"  class="text_input_button">提交</button>
																	<button type="reset"  class="text_input_button">重置</button>
																</td>
															</tr>
														</table>
													</form>
													</c:forEach> 
													<div style="line-height:5px;">&nbsp;</div>
													<!-- 查詢框　結束 -->

													<!-- 查詢內容顯示 開始 -->

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
</body>

</html>