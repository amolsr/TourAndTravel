package com.tnt.cont;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tnt.dao.DBManager;

/**
 * Servlet implementation class Count
 */
@WebServlet(urlPatterns = "/Admin/Count")
public class Count extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer[] arr = DBManager.count();
		PrintWriter out = response.getWriter();
		String JsonString = this.gson.toJson(arr);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		out.print(JsonString);
		out.flush();
	}

}
