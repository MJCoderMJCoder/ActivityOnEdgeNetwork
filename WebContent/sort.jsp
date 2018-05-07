<%@page import="com.aoe.entity.Project"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  声明必须位于 HTML5 文档中的第一行,使用非常简单: -->
<!DOCTYPE html>
<html>
<head>
<!-- 对于中文网页需要使用 <meta charset="utf-8"> 声明编码，否则会出现乱码。 -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>子项目的AOE</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/Sort" metdod="post">
		<table style="width: 100%;" border="0" cellpadding="10">
			<tr>
				<td align="center" width="9%"></td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(0).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(1).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(2).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(3).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(4).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(5).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(6).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(7).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(8).getSubprojectName()%></h4>
				</td>
				<td align="center" width="9%">
					<h4><%=((Project) session.getAttribute("project")).getSubprojects().get(9).getSubprojectName()%></h4>
				</td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(0).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="1TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="1TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(1).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="2TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="2TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(2).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="3TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="3TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(3).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="4TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="4TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(4).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="5TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="5TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(5).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="6TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="6TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(6).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="7TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="7TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(7).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="8TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="8TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(8).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="9TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="9TO10"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="9%"><h4><%=((Project) session.getAttribute("project")).getSubprojects().get(9).getSubprojectName()%></h4></td>
				<td align="center" width="9%"><input type="number" name="10TO1"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO2"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO3"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO4"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO5"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO6"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO7"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO8"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number" name="10TO9"
					step="0.1" min="0" placeholder="0" style="width: 100%"></td>
				<td align="center" width="9%"><input type="number"
					name="10TO10" step="0.1" min="0" placeholder="0"
					style="width: 100%"></td>
			</tr>
			<tr>
				<td align="center" width="99%" colspan="11"><input
					type="submit" value="下一步"></td>
			</tr>
		</table>
	</form>
</body>
</html>