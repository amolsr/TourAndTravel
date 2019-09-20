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

import com.tnt.dao.UserDao;
import com.tnt.model.User;

@WebServlet("/Register")
public class Register extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4456636163296084835L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserDao U = UserDao.getU();
		User u = new User();
		u.setFname(request.getParameter("first"));
		u.setLname(request.getParameter("last"));
		u.setEmail(request.getParameter("email"));
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(request.getParameter("password").getBytes());
			BigInteger Hash = new BigInteger(1, md.digest());
			String HashWord = Hash.toString(16);
			while (HashWord.length() < 32) {
				HashWord = "0" + HashWord;
			}
			u.setPass(HashWord);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if (!((u.getFname().equals("")) || (u.getLname().equals("")) || (u.getEmail().equals(""))
				|| (u.getPass().equals("")))) {
			int i = U.create(u);
			if (i > 0) {
				response.getWriter().print("Success");
			} else
				response.getWriter().print("User Exist");
		}
	}
}
