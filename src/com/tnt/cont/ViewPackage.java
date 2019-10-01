package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tnt.dao.TourDao;
import com.tnt.model.Tour;

/**
 * Servlet implementation class ViewPackage
 */
@WebServlet("/ViewPackage")
public class ViewPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TourDao T = TourDao.getTourDao();
		Tour[] arr = T.getAllTour();
		request.setAttribute("Tour", arr);
		request.getRequestDispatcher("Index?content=package").forward(request, response);
	}

}
