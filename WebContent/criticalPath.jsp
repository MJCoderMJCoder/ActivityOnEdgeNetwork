<%@page import="com.aoe.entity.Subproject"%>
<%@page import="javax.lang.model.element.Element"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.aoe.entity.AOE"%>
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
<title>关键路径计算</title>
</head>
<body>
	<table style="width: 100%;" border="0" cellpadding="10">
		<tr>
			<td align="center" width="9%"><h4>顶点事件</h4></td>
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
			<td align="center" width="9%"><h4>
					最早发生时间<br />Ve(j)
				</h4></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(0).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(1).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(2).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(3).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(4).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(5).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(6).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(7).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(8).getEarliest()%></td>
			<td align="center" width="9%"><%=((Project) session.getAttribute("project")).getSubprojects().get(9).getEarliest()%></td>
		</tr>
		<tr>
			<td align="center" width="9%"><h4>
					最晚发生时间<br />Vl(j)
				</h4></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(0).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(0).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(1).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(1).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(2).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(2).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(3).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(3).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(4).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(4).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(5).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(5).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(6).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(6).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(7).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(7).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(8).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(8).getLatest())%></td>
			<td align="center" width="9%"><%=(((Project) session.getAttribute("project")).getSubprojects().get(9).getLatest() < 0 ? 0.0
					: ((Project) session.getAttribute("project")).getSubprojects().get(9).getLatest())%></td>
		</tr>
	</table>
	<br />
	<hr />
	<br />
	<table style="width: 100%;" border="0" cellpadding="10">
		<tr>
			<td align="center"><h4>边/活动</h4></td>
			<%
				List<AOE> aoesEarliest = ((Project) session.getAttribute("project")).getAoesEarliest();
				for (AOE aoe : aoesEarliest) {
					out.print("<td align=\"center\"><h4>" + aoe.getSubproject2subproject() + "</h4></td>");
				}
			%>
		</tr>
		<tr>
			<td align="center"><h4>
					最早开始时间<br />e(i)
				</h4></td>
			<%
				for (AOE aoe : aoesEarliest) {
					out.print("<td align=\"center\">" + aoe.getEarliest() + "</td>");
				}
			%>
		</tr>
	</table>
	<br />
	<hr />
	<br />
	<table style="width: 100%;" border="0" cellpadding="10">
		<tr>
			<td align="center"><h4>边/活动</h4></td>
			<%
				List<AOE> aoesLatest = ((Project) session.getAttribute("project")).getAoesLatest();
				for (AOE aoe : aoesLatest) {
					out.print("<td align=\"center\"><h4>" + aoe.getSubproject2subproject() + "</h4></td>");
				}
			%>
		</tr>
		<tr>
			<td align="center"><h4>
					最晚开始时间<br />l(i)
				</h4></td>
			<%
				for (AOE aoe : aoesLatest) {
					out.print("<td align=\"center\">" + aoe.getLatest() + "</td>");
				}
			%>
		</tr>
	</table>
	<br />
	<hr />
	<br />
	<table style="width: 100%;" border="0" cellpadding="10">
		<%
			Subproject originSubproject = ((Project) session.getAttribute("project")).getOriginSubproject(); // 起始节点
			List<AOE> criticalAoes = new ArrayList<AOE>(); //关键的路径段（经过粗略性排序）
			for (AOE aoeLaty : aoesLatest) {
				for (AOE aoeEarly : aoesEarliest) {
					if (aoeLaty.getSubproject2subproject().equals(aoeEarly.getSubproject2subproject())
							&& aoeLaty.getLatest() == aoeEarly.getEarliest()) {
						System.out.print("aoeLaty：" + aoeLaty.getSubproject2subproject() + "\t\t" + aoeLaty.getLatest()
								+ "；\t\t");
						System.out.println(
								"aoeEarly：" + aoeEarly.getSubproject2subproject() + "\t\t" + aoeEarly.getEarliest());
						if (!criticalAoes.contains(aoeLaty)) {
							if (criticalAoes.size() > 0) {
								boolean flag = true; //true表示可以往criticalAoes中插入；false为不可以。
								String prefix = aoeLaty.getSubproject2subproject().substring(0,
										aoeLaty.getSubproject2subproject().indexOf("→")); //前缀
								String suffix = aoeLaty.getSubproject2subproject()
										.substring(aoeLaty.getSubproject2subproject().indexOf("→") + 1); //后缀
								for (AOE aoe : criticalAoes) {
									if (aoe.getSubproject2subproject()
											.substring(aoe.getSubproject2subproject().indexOf("→") + 1)
											.equals(prefix)) {
										if (flag) {
											criticalAoes.add(criticalAoes.indexOf(aoe) + 1, aoeLaty);
										}
										flag = false;
										break;
									}
								}
								for (AOE aoe : criticalAoes) {
									if (aoe.getSubproject2subproject()
											.substring(0, aoe.getSubproject2subproject().indexOf("→")).equals(suffix)) {
										if (flag) {
											criticalAoes.add(criticalAoes.indexOf(aoe), aoeLaty);
										}
										flag = false;
										break;
									}
								}
								if (flag) {
									criticalAoes.add(aoeLaty);
								}
							} else {
								criticalAoes.add(aoeLaty);
							}
						}
					}
				}
			}
			for (AOE aoe : criticalAoes) {
				System.out.print(aoe.getSubproject2subproject() + "\t\t");
			}
			System.out.println("");

			List<AOE> pathNum = new ArrayList<AOE>(); //有几条关键路径(重复的关键路径段)
			for (int i = 0; i < criticalAoes.size(); i++) {
				for (int j = 0; j < criticalAoes.size(); j++) {
					if (i != j && criticalAoes.get(i).getSubproject2subproject()
							.substring(0, criticalAoes.get(i).getSubproject2subproject().indexOf("→"))
							.equals(criticalAoes.get(j).getSubproject2subproject().substring(0,
									criticalAoes.get(j).getSubproject2subproject().indexOf("→")))) {
						if (!pathNum.contains(criticalAoes.get(j))) {
							pathNum.add(criticalAoes.get(j));
						}
					}
				}
			}

			if (pathNum.size() > 0) {
				List<AOE> tempJudge = new ArrayList<AOE>(); //临时的为了判断是否已经使用过：如果aoe已经使用过则加入该缓存
				for (int j = 0; j < pathNum.size(); j++) {
					//pathNum.get(j).getSubproject2subproject();
					out.print("	<tr><td align=\"center\"><h4>关键路径</h4></td>");
					float duration = 0;
					String suffix = "";
					for (int i = 0; i < criticalAoes.size(); i++) {
						if (suffix.length() <= 0) {
							if (tempJudge.contains(criticalAoes.get(i))) {
								continue;
							} else {
								if (criticalAoes.get(i).getSubproject2subproject()
										.substring(0, criticalAoes.get(i).getSubproject2subproject().indexOf("→"))
										.equals(originSubproject.getSubprojectName())) {
									out.print("<td align=\"center\">" + criticalAoes.get(i).getSubproject2subproject()
											+ "</td>");
									suffix = criticalAoes.get(i).getSubproject2subproject()
											.substring(criticalAoes.get(i).getSubproject2subproject().indexOf("→") + 1);
									if (pathNum.contains(criticalAoes.get(i))) {
										tempJudge.add(criticalAoes.get(i));
									}
									duration += criticalAoes.get(i).getDuration();
								}
							}
						} else if (criticalAoes.get(i).getSubproject2subproject()
								.substring(0, criticalAoes.get(i).getSubproject2subproject().indexOf("→"))
								.equals(suffix)) {
							if (tempJudge.contains(criticalAoes.get(i))) {
								continue;
							} else {
								out.print("<td align=\"center\">" + criticalAoes.get(i).getSubproject2subproject()
										+ "</td>");
								suffix = criticalAoes.get(i).getSubproject2subproject()
										.substring(criticalAoes.get(i).getSubproject2subproject().indexOf("→") + 1);
								if (pathNum.contains(criticalAoes.get(i))) {
									tempJudge.add(criticalAoes.get(i));
								}
								duration += criticalAoes.get(i).getDuration();
							}
						}
					}
					out.print("<td align=\"center\">最早完成时间：" + duration + "分钟</td>");
					((Project) session.getAttribute("project")).setEarliestFinishTime(duration);
					out.print("</tr>");
				}
			} else {
				out.print("	<tr><td align=\"center\"><h4>关键路径</h4></td>");
				float duration = 0;
				String suffix = "";
				for (int i = 0; i < criticalAoes.size(); i++) {
					if (suffix.length() <= 0) {
						if (criticalAoes.get(i).getSubproject2subproject()
								.substring(0, criticalAoes.get(i).getSubproject2subproject().indexOf("→"))
								.equals(originSubproject.getSubprojectName())) {
							out.print(
									"<td align=\"center\">" + criticalAoes.get(i).getSubproject2subproject() + "</td>");
							suffix = criticalAoes.get(i).getSubproject2subproject()
									.substring(criticalAoes.get(i).getSubproject2subproject().indexOf("→") + 1);
							duration += criticalAoes.get(i).getDuration();
						}
					} else if (criticalAoes.get(i).getSubproject2subproject()
							.substring(0, criticalAoes.get(i).getSubproject2subproject().indexOf("→")).equals(suffix)) {
						out.print("<td align=\"center\">" + criticalAoes.get(i).getSubproject2subproject() + "</td>");
						suffix = criticalAoes.get(i).getSubproject2subproject()
								.substring(criticalAoes.get(i).getSubproject2subproject().indexOf("→") + 1);
						duration += criticalAoes.get(i).getDuration();
					}
				}
				out.print("<td align=\"center\">最早完成时间：" + duration + "分钟</td>");
				((Project) session.getAttribute("project")).setEarliestFinishTime(duration);
				out.print("</tr>");
			}
			//System.out.println("session >>> projects：" + request.getSession().getAttribute("projects"));
			if (request.getSession().getAttribute("projects") == null) {
				List<Project> projects = new ArrayList<Project>();
				projects.add(((Project) session.getAttribute("project")));
				request.getSession().setAttribute("projects", projects);
			} else {
				List<Project> projects = (List<Project>) request.getSession().getAttribute("projects");
				if (((Project) session.getAttribute("project")).getPriority() > projects.get(0).getPriority()) {
					projects.add(0, ((Project) session.getAttribute("project")));
				} else {
					if (projects.size() > 1) {
						if (((Project) session.getAttribute("project")).getPriority() > projects.get(1).getPriority()) {
							projects.add(1, ((Project) session.getAttribute("project")));
						} else {
							projects.add(((Project) session.getAttribute("project")));
						}
					} else {
						projects.add(((Project) session.getAttribute("project")));
					}
				}
				request.getSession().setAttribute("projects", projects);
			}
		%>
	</table>
	<br />
	<hr />
	<br />
	<table style="width: 100%;" border="0" cellpadding="10">
		<tr>
			<td align="center"><a href="./executeProject.jsp" target="_top"><h2>执行该项目</h2></a></td>
		</tr>
	</table>
</body>
</html>