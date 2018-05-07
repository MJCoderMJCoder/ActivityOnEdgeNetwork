<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  声明必须位于 HTML5 文档中的第一行,使用非常简单: -->
<!DOCTYPE html>
<html>
<head>
<!-- 对于中文网页需要使用 <meta charset="utf-8"> 声明编码，否则会出现乱码。 -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目输入</title>
</head>
<body>
	<br />
	<br />
	<form action="<%=request.getContextPath()%>/Project" method="post">

		<table style="width: 100%;" border="0" cellpadding="10">
			<tr>
				<td align="right" width="47%">项目名称：</td>
				<td align="left" width="53%"><input type="text"
					name="projectName" autocomplete="on" required /></td>
			</tr>
			<tr>
				<td align="right" width="47%">优&nbsp;先&nbsp;级&nbsp;&nbsp;：</td>
				<td align="left" width="53%"><input type="radio"
					name="priority" value="1">低 <input type="radio"
					name="priority" value="2" checked>中<input type="radio"
					name="priority" value="3">高</td>
			</tr>
			<tr>
				<td align="center" colspan="2" width="100%"><input
					type="submit" value="下一步"></td>
			</tr>
		</table>
	</form>
</body>
</html>