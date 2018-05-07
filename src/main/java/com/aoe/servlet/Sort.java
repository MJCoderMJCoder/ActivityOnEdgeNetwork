package com.aoe.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aoe.entity.AOE;
import com.aoe.entity.Project;
import com.aoe.entity.Subproject;

/**
 * Servlet implementation class Sort
 */
@WebServlet(asyncSupported = true, description = "排序并填写权值", urlPatterns = { "/Sort" })
public class Sort extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sort() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * 迭代设置子项目的最晚开始时间l(i)【边活动】
	 * 
	 * @param subproject
	 */
	private void setAoeLatest(Subproject subproject, List<AOE> aoesLatest) {
		if (subproject.getOriginAoes().size() > 0) {
			for (AOE aoe : subproject.getOriginAoes()) {
				aoe.setSubproject2subproject(
						aoe.getOrigin().getSubprojectName() + "→" + subproject.getSubprojectName());
				aoe.setLatest(subproject.getLatest() - aoe.getDuration());
				if (!aoesLatest.contains(aoe)) {
					aoesLatest.add(aoe);
				}
				setAoeLatest(aoe.getOrigin(), aoesLatest);
			}
		}
	}

	/**
	 * 迭代设置子项目的最早开始时间e(i)【边活动】
	 * 
	 * @param subproject
	 */
	private void setAoeEarliest(Subproject subproject, List<AOE> aoesEarliest) {
		if (subproject.getDestinationAoes().size() > 0) {
			for (AOE aoe : subproject.getDestinationAoes()) {
				aoe.setSubproject2subproject(
						subproject.getSubprojectName() + "→" + aoe.getDestination().getSubprojectName());
				aoe.setEarliest(subproject.getEarliest());
				if (!aoesEarliest.contains(aoe)) {
					aoesEarliest.add(aoe);
				}
				setAoeEarliest(aoe.getDestination(), aoesEarliest);
			}
		}
	}

	/**
	 * 迭代设置子项目的最晚发生时间Vl(j)【顶点事件】
	 * 
	 * @param subproject
	 */
	private void setSubprojectLatest(Subproject subproject) {
		if (subproject.getOriginAoes().size() > 0) {
			for (AOE aoe : subproject.getOriginAoes()) {
				if (aoe.getOrigin().getLatest() < 0) {
					aoe.getOrigin().setLatest(subproject.getLatest());
				}
				aoe.getOrigin()
						.setLatest(Math.min(subproject.getLatest() - aoe.getDuration(), aoe.getOrigin().getLatest()));
				setSubprojectLatest(aoe.getOrigin());
			}
		}
	}

	/**
	 * 迭代设置子项目的最早发生时间Ve(j)【顶点事件】
	 * 
	 * @param subproject
	 */
	private void setSubprojectEarliest(Subproject subproject) {
		if (subproject.getDestinationAoes().size() > 0) {
			for (AOE aoe : subproject.getDestinationAoes()) {
				aoe.getDestination().setEarliest(
						Math.max(aoe.getDuration() + subproject.getEarliest(), aoe.getDestination().getEarliest()));
				setSubprojectEarliest(aoe.getDestination());
			}
		}
	}

	/**
	 * 查找AOE的起始节点
	 * 
	 * @param subprojects
	 * @return
	 */
	private Subproject originSubproject(List<Subproject> subprojects) {
		for (Subproject subproject : subprojects) {
			if (subproject.getOriginAoes().size() <= 0) {
				return subproject;
			}
		}
		return null;
	}

	/**
	 * 查找AOE的终止节点
	 * 
	 * @param subprojects
	 * @return
	 */
	private Subproject destinationSubproject(List<Subproject> subprojects) {
		for (Subproject subproject : subprojects) {
			if (subproject.getDestinationAoes().size() <= 0) {
				return subproject;
			}
		}
		return null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Project project = ((Project) request.getSession().getAttribute("project"));
		List<Subproject> subprojects = ((List<Subproject>) project.getSubprojects());
		for (int i = 1; i <= 10; i++) { // 代表矩阵的一行
			// String subprojectName, float duration, int sequence
			List<AOE> aoes = new ArrayList<AOE>();
			for (int j = 1; j <= 10; j++) { // 代表矩阵的一列
				String duration = request.getParameter(i + "TO" + j); // 行列所代表的的单元格
				if (duration.length() > 0) {
					aoes.add(new AOE(Float.parseFloat(request.getParameter(i + "TO" + j)), null, subprojects.get(j - 1),
							null, 0, 0));
				}
			}
			// 由subprojects.get(i - 1)指向最终节点的AOE（ subprojects的destinationAoes为0代表终结点。）
			subprojects.get(i - 1).setDestinationAoes(aoes);
		}
		for (int j = 1; j <= 10; j++) { // 代表矩阵的一列
			List<AOE> aoes = new ArrayList<AOE>();
			for (int i = 1; i <= 10; i++) { // 代表矩阵的一行
				String duration = request.getParameter(i + "TO" + j); // 行列所代表的的单元格
				if (duration.length() > 0) {
					aoes.add(new AOE(Float.parseFloat(request.getParameter(i + "TO" + j)), subprojects.get(i - 1), null,
							null, 0, 0));
				}
			}
			// 指向subprojects.get(j - 1)节点的AOE（ subprojects的originAoes为0代表起始点。）
			subprojects.get(j - 1).setOriginAoes(aoes);
		}
		// 计算子项目的最早发生时间Ve(j)【顶点事件】
		Subproject originSubproject = originSubproject(subprojects); // 起始节点
		project.setOriginSubproject(originSubproject);
		originSubproject.setEarliest(0);
		for (AOE aoe : originSubproject.getDestinationAoes()) {
			aoe.getDestination().setEarliest(Math.max(aoe.getDuration(), aoe.getDestination().getEarliest()));
			setSubprojectEarliest(aoe.getDestination());
		}
		// 计算子项目的最晚发生时间Vl(j)【顶点事件】
		Subproject destinationSubproject = destinationSubproject(subprojects); // 终止节点
		destinationSubproject.setLatest(destinationSubproject.getEarliest());
		for (AOE aoe : destinationSubproject.getOriginAoes()) {
			if (aoe.getOrigin().getLatest() < 0) {
				aoe.getOrigin().setLatest(destinationSubproject.getLatest());
			}
			aoe.getOrigin().setLatest(
					Math.min(destinationSubproject.getLatest() - aoe.getDuration(), aoe.getOrigin().getLatest()));
			setSubprojectLatest(aoe.getOrigin());
		}
		// 计算子项目的最早开始时间e(i)【边活动】
		List<AOE> aoesEarliest = new ArrayList<AOE>();
		for (AOE aoe : originSubproject.getDestinationAoes()) {
			aoe.setSubproject2subproject(
					originSubproject.getSubprojectName() + "→" + aoe.getDestination().getSubprojectName());
			aoe.setEarliest(originSubproject.getEarliest());
			if (!aoesEarliest.contains(aoe)) {
				aoesEarliest.add(aoe);
			}
			setAoeEarliest(aoe.getDestination(), aoesEarliest);
		}
		project.setAoesEarliest(aoesEarliest);
		// 计算子项目的最晚开始时间l(i)【边活动】
		List<AOE> aoesLatest = new ArrayList<AOE>();
		for (AOE aoe : destinationSubproject.getOriginAoes()) {
			aoe.setSubproject2subproject(
					aoe.getOrigin().getSubprojectName() + "→" + destinationSubproject.getSubprojectName());
			aoe.setLatest(destinationSubproject.getLatest() - aoe.getDuration());
			if (!aoesLatest.contains(aoe)) {
				aoesLatest.add(aoe);
			}
			setAoeLatest(aoe.getOrigin(), aoesLatest);
		}
		project.setAoesLatest(aoesLatest);
		// 请求转发,转发是在服务器端转发的，客户端是不知道的
		request.getRequestDispatcher("/criticalPath.jsp").forward(request, response);
	}
}
