package com.tnt.cont;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tnt.dao.UserDao;
import com.tnt.model.User;

/**
 * Servlet implementation class ManageUser
 */
@WebServlet("/Admin/ManageUser")
public class ManageUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao T = UserDao.getUserDao();
		User[] arr = T.getAllUser();
		request.setAttribute("User", arr);
		request.getRequestDispatcher("DashBoard?content=user").forward(request, response);
	}

}
