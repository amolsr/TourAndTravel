package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tnt.dao.BookDao;
import com.tnt.model.Book;

/**
 * Servlet implementation class ManageBook
 */
@WebServlet("/Admin/ManageBook")
public class ManageBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Book[] arr = BookDao.getBookDao().getAllBooking();
		request.setAttribute("Book", arr);
		request.getRequestDispatcher("DashBoard?content=book").forward(request, response);
	}

}
