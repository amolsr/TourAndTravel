package com.tnt.cont;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tnt.dao.*;
import com.tnt.model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5363800644178880307L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		User u = new User();
		u.setEmailId(request.getParameter("email"));
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(request.getParameter("password").getBytes());
			BigInteger Hash = new BigInteger(1, md.digest());
			String HashWord = Hash.toString(16);
			while (HashWord.length() < 32) {
				HashWord = "0" + HashWord;
			}
			u.setPassword(HashWord);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		UserDao dao = UserDao.getUserDao();
		try {
			String email = dao.retrive(u.getEmailId(), u.getPassword());
			if (email != null) {
				HttpSession session = request.getSession();
				session.setAttribute("Email", email);
				response.getWriter().print("Success");
			} else {
				response.getWriter().print("Invalid User");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}