package com.aoe.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Project
 */
@WebServlet(asyncSupported = true, description = "项目名称和优先级", urlPatterns = { "/Project" })
public class Project extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Project() {
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
		request.getSession().removeAttribute("project");
		String projectName = request.getParameter("projectName");
		String priority = request.getParameter("priority");
		com.aoe.entity.Project project = new com.aoe.entity.Project(projectName, Integer.parseInt(priority), null, null,
				null, null, 0);
		request.getSession().setAttribute("project", project);
		// 请求转发,转发是在服务器端转发的，客户端是不知道的
		request.getRequestDispatcher("/subproject.jsp").forward(request, response);
	}

}
