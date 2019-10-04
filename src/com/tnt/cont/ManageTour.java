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
 * Servlet implementation class ManageTour
 */
@WebServlet("/Admin/ManageTour")
public class ManageTour extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TourDao T = TourDao.getTourDao();
		Tour[] arr = T.getAllTour();
		req.setAttribute("Tour", arr);
		req.getRequestDispatcher("DashBoard?content=tour").forward(req, resp);
	}

}
