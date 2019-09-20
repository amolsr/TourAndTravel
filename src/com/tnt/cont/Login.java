package com.tnt.cont;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

		UserDao dao = new UserDao();
		try {
			if (dao.log(u.getEmail(), u.getPass())) {
				PreparedStatement st = Dao.getcon().prepareStatement("select * from User where email=? and pass=?");
				st.setString(1, u.getEmail());
				st.setString(2, u.getPass());
				ResultSet rs = st.executeQuery();
				while (rs.next()) {
					u.setFname(rs.getString("fname"));
					u.setLname(rs.getString("lname"));
				}
				HttpSession session = request.getSession();
				session.setAttribute("User", u);
				response.getWriter().print("Success");
			} else {
				response.getWriter().print("Invalid User");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}