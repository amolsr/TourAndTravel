package com.tnt.cont;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tnt.dao.BookingDao;
import com.tnt.model.Booking;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/CreateBooking")
public class CreateBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @throws IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Booking b = new Booking();
		BookingDao B = BookingDao.getBookDao();
		HttpSession session = request.getSession();
		b.setPackageId(Integer.parseInt(request.getParameter("PackageId")));
		b.setUserEmail(String.valueOf(session.getAttribute("Email")));
		b.setComment(request.getParameter("Comment"));
		if (b.getUserEmail().equals("null")) {
			response.getWriter().print("Login");
		} else {
			try {
				B.create(b);
			} catch (Exception e) {
				response.getWriter().print("Error");
			}
			response.getWriter().print("Success");
		}
	}
}
