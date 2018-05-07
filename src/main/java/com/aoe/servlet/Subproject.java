package com.aoe.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aoe.entity.Project;

/**
 * Servlet implementation class Subproject
 */
@WebServlet(asyncSupported = true, description = "子项目输入和持续时间", urlPatterns = { "/Subproject" })
public class Subproject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Subproject() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<com.aoe.entity.Subproject> subprojects = new ArrayList<com.aoe.entity.Subproject>();
		for (int i = 1; i <= 10; i++) {
			// String subprojectName, float duration, int sequence
			subprojects.add(
					new com.aoe.entity.Subproject(request.getParameter("subprojectName" + i), 0, -6003, null, null));
		}
		((Project) request.getSession().getAttribute("project")).setSubprojects(subprojects);
		// 请求转发,转发是在服务器端转发的，客户端是不知道的
		request.getRequestDispatcher("/sort.jsp").forward(request, response);
	}

}
