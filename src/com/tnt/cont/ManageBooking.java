package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tnt.dao.BookingDao;
import com.tnt.model.Booking;

/**
 * Servlet implementation class ManageBook
 */
@WebServlet("/Admin/ManageBooking")
public class ManageBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookingDao B = BookingDao.getBookDao();
		if (request.getParameter("bkid") != null) {
			Integer id = Integer.parseInt(request.getParameter("bkid"));
			Booking b = B.getBookingById(id);
			b.setStatus("CONFIRMED");
			B.Update(b);
		} else if (request.getParameter("bckid") != null) {
			Integer id = Integer.parseInt(request.getParameter("bckid"));
			Booking b = B.getBookingById(id);
			b.setStatus("CANCELED");
			b.setCancelledBy("a");
			B.Update(b);
		} else {
			Booking[] arr = B.getAllBooking();
			request.setAttribute("Booking", arr);
			request.getRequestDispatcher("DashBoard?content=book").forward(request, response);
		}

	}

}
