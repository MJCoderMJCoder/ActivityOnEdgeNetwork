<%@page import="com.aoe.entity.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  声明必须位于 HTML5 文档中的第一行,使用非常简单: -->
<!DOCTYPE html>
<html>
<head>
<!-- 对于中文网页需要使用 <meta charset="utf-8"> 声明编码，否则会出现乱码。 -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>子项目输入</title>
</head>
<body>
	<br />
	<br />
	<form action="<%=request.getContextPath()%>/Subproject" method="post">

		<table style="width: 100%;" border="0" cellpadding="10">
			<tr>
				<td align="center" colspan="2" width="100%"><h2
						style="font-weight: bold;">
						<strong><%=((Project) session.getAttribute("project")).getProjectName()%></strong>
					</h2></td>
			</tr>
			<tr>
				<td align="center" width="30%"></td>
				<td align="center" width="70%"><h4>子项目名称</h4></td>
			</tr>
			<tr>
				<td align="right" width="30%">1.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName1" autocomplete="on" required /></td>
			</tr>
			<tr>
				<td align="right" width="30%">2.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName2" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">3.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName3" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">4.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName4" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">5.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName5" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">6.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName6" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">7.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName7" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">8.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName8" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">9.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName9" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="right" width="30%">10.</td>
				<td align="center" width="70%"><input type="text"
					name="subprojectName10" autocomplete="on" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2" width="100%"><input
					type="submit" value="下一步"></td>
			</tr>
		</table>
	</form>
</body>
</html>