package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tnt.dao.EnquiryDao;
import com.tnt.model.Enquiry;

/**
 * Servlet implementation class CreateEnquiry
 */
@WebServlet("/CreateEnquiry")
public class CreateEnquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Enquiry e = new Enquiry();
		EnquiryDao E = EnquiryDao.getEnquiryDao();
		HttpSession session = request.getSession();
//		e.setUserEmail(String.valueOf(session.getAttribute("Email")));
//		e.setIssue(request.getParameter("issue"));
//		e.setDescription(request.getParameter("description"));
//		if (i.getIssue().equals("")) {
//			response.getWriter().print("Please Select Issue.");
//		} else {
//			try {
//				E.create(e);
//			} catch (Exception e1) {
//				response.getWriter().print("Error");
//			}
//			response.getWriter().print("Success");
//		}
	}
}
