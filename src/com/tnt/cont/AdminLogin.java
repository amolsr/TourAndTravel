package com.tnt.cont;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tnt.dao.AdminDao;
import com.tnt.model.Admin;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/Admin/LogIn")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Admin a = new Admin();
		a.setUser(request.getParameter("uname"));
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(request.getParameter("pass").getBytes());
			BigInteger Hash = new BigInteger(1, md.digest());
			String HashWord = Hash.toString(16);
			while (HashWord.length() < 32) {
				HashWord = "0" + HashWord;
			}
			a.setPass(HashWord);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		AdminDao dao = AdminDao.getAdminDao();
		try {
			String user = dao.retrive(a.getUser(), a.getPass());
			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("User", user);
				response.getWriter().print("Success");
			} else {
				response.getWriter().print("Invalid User");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDao A = AdminDao.getAdminDao();
		Admin a = new Admin();
		a.setUser(req.getParameter("uname"));
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(req.getParameter("pass").getBytes());
			BigInteger Hash = new BigInteger(1, md.digest());
			String HashWord = Hash.toString(16);
			while (HashWord.length() < 32) {
				HashWord = "0" + HashWord;
			}
			a.setPass(HashWord);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if (!((a.getUser().equals("")) || (a.getPass().equals("")))) {
			int i = A.create(a);
			if (i > 0) {
				resp.getWriter().print("Success");
			} else
				resp.getWriter().print("Admin Exist");
		}
	}
}
