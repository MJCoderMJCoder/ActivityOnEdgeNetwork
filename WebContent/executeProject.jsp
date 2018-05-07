<%@page import="java.util.Calendar"%>
<%@page import="com.aoe.entity.Project"%>
<%@page import="java.util.ArrayList"%>
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
<title>执行已有项目</title>
</head>
<body>
	<!--JSP声明-->
	<%!float progress[] = { 0, 0, 0 };%>
	<table style="width: 100%;" border="0" cellpadding="10">
		<tr>
			<td align="center"><h4>项目名称</h4></td>
			<td align="center"><h4>优先级</h4></td>
			<td align="center"><h4>最早完成时间</h4></td>
			<td align="center"><h4>时间进度</h4></td>
		</tr>
		<%
			// 设置每隔6秒刷新一次
			response.setIntHeader("Refresh", 6);
			List<Project> projects = (List<Project>) request.getSession().getAttribute("projects");
			for (int i = 0; i < projects.size(); i++) {
				if (i > 0) {
					if (progress[i - 1] >= projects.get(i - 1).getEarliestFinishTime()) {
						if (progress[i] / projects.get(i).getEarliestFinishTime() >= 1) {
							progress[i] = projects.get(i).getEarliestFinishTime();
						} else {
							progress[i] += 0.1;
						}
					}
				} else {
					if (progress[i] / projects.get(i).getEarliestFinishTime() >= 1) {
						progress[i] = projects.get(i).getEarliestFinishTime();
					} else {
						progress[i] += 0.1;
					}
				}
				out.print("	<tr>");
				out.print("	<td align=\"center\">" + projects.get(i).getProjectName() + "</td>");
				if (projects.get(i).getPriority() == 1) {
					out.print("	<td align=\"center\">低</td>");
				} else if (projects.get(i).getPriority() == 2) {
					out.print("	<td align=\"center\">中</td>");
				} else if (projects.get(i).getPriority() == 3) {
					out.print("	<td align=\"center\">高</td>");
				}
				out.print("	<td align=\"center\">" + projects.get(i).getEarliestFinishTime() + "分钟</td>");
				out.print("	<td id=\"progress" + i + "\" align=\"center\">"
						+ progress[i] / projects.get(i).getEarliestFinishTime() * 100 + " %</td>");
				out.print("	</tr>");
			}

			if (projects.size() < 3) {
				out.print(
						"<tr><td align=\"center\" colspan=\"4\"><br/><br/><br/>是否还需执行新的项目？</td></tr><tr><td align=\"center\" colspan=\"2\"><a href=\"./project.jsp\" target=\"_top\">是</a></td><td align=\"center\" colspan=\"2\">否</td></tr>");
			} else {
				out.print("<tr><td align=\"center\" colspan=\"4\"><br/><br/><br/>系统不能运行多于三个的项目</td></tr>");
			}

			int totalTime = 0;
			for (int i = 0; i < projects.size(); i++) {
				totalTime += projects.get(i).getEarliestFinishTime();
				if (progress[i] >= projects.get(i).getEarliestFinishTime()) {
					if (i >= projects.size() - 1) {
						out.print("<tr><td align=\"center\" colspan=\"4\"><br/><br/><br/>项目已在最短最合理的排序情况下运行完毕<br/>共耗时："
								+ totalTime + "分钟</td></tr>");
					}
				} else {
					break;
				}
			}
		%>
	</table>
</body>
</html>