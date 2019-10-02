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
 * Servlet implementation class PackageDetails
 */
@WebServlet("/PackageDetails")
public class PackageDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("pkgid");
		TourDao T = TourDao.getTourDao();
		Tour t = T.getTourById(Integer.parseInt(id));
		if (t != null) {
			request.setAttribute("Package", t);
			request.getRequestDispatcher("Index?content=detail").forward(request, response);
		} else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	}

}
