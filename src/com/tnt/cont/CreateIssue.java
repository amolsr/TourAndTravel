package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tnt.dao.IssueDao;
import com.tnt.model.Issue;

/**
 * Servlet implementation class CreateIssue
 */
@WebServlet("/CreateIssue")
public class CreateIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Issue i = new Issue();
		IssueDao I = IssueDao.getIssueDao();
		HttpSession session = request.getSession();
		i.setUserEmail(String.valueOf(session.getAttribute("Email")));
		i.setIssue(request.getParameter("issue"));
		i.setDescription(request.getParameter("description"));
		if (i.getIssue().equals("")) {
			response.getWriter().print("Please Select Issue.");
		} else {
			try {
				I.create(i);
			} catch (Exception e) {
				response.getWriter().print("Error");
			}
			response.getWriter().print("Success");
		}
	}

}
