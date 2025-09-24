package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tnt.dao.IssueDao;
import com.tnt.model.Issue;

/**
 * Servlet implementation class CreateIssue
 */
@WebServlet("/CreateIssue")
public class CreateIssue extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(CreateIssue.class);

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Issue i = new Issue();
		IssueDao I = IssueDao.getIssueDao();
		HttpSession session = request.getSession();
		
		// Check if user is logged in by validating session attribute
		String userEmail = (String) session.getAttribute("Email");
		if (userEmail == null) {
			response.getWriter().print("Please login first.");
			return;
		}
		
		i.setUserEmail(userEmail);
		i.setIssue(request.getParameter("issue"));
		i.setDescription(request.getParameter("description"));
		if (i.getIssue().equals("")) {
			response.getWriter().print("Please Select Issue.");
		} else {
			try {
				I.create(i);
				response.getWriter().print("Success");
			} catch (Exception e) {
				logger.error("Error during issue creation", e);
				response.getWriter().print("An error occurred. Please try again.");
			}
		}
	}

}
