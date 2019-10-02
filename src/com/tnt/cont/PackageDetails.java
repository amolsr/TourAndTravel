package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PackageDetails
 */
@WebServlet("/PackageDetails")
public class PackageDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String n1 = request.getParameter("pkgid");
		System.out.println(n1);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
