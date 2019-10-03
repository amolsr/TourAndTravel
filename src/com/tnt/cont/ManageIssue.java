package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tnt.dao.IssueDao;
import com.tnt.model.Issue;

/**
 * Servlet implementation class ManageIssue
 */
@WebServlet("/Admin/ManageIssue")
public class ManageIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Issue[] arr = IssueDao.getIssueDao().getAllIssue();
		request.setAttribute("Issue", arr);
		request.getRequestDispatcher("DashBoard?content=issue").forward(request, response);
	}

}
