package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tnt.model.User;

public class UserDao {
	private static UserDao U = new UserDao();

	public static UserDao getU() {
		return U;
	}

	public int create(User u) {
		int i = 0;
		try (Connection con = Dao.getcon();) {
			if (!(U.check(u.getFname(), u.getLname(), u.getEmail()))) {
				PreparedStatement ps = con
						.prepareStatement("INSERT INTO User (fname, lname, email, pass) VALUES (?, ?, ?, ?) ");
				ps.setString(1, u.getFname());
				ps.setString(2, u.getLname());
				ps.setString(3, u.getEmail());
				ps.setString(4, u.getPass());
				i = ps.executeUpdate();
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public boolean log(String email, String pass) {
		try (Connection con = Dao.getcon();) {
			PreparedStatement ps = con.prepareStatement("select * from User where email= BINARY ? and pass= BINARY ?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery(); // Fetch from database using executeQuery
			if (rs.next()) {
				return true;
			}
			return false;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	public boolean check(String fname, String lname, String email) {
		try (Connection con = Dao.getcon();) {
			PreparedStatement st = con.prepareStatement(
					"select * from User where fname= BINARY ? and lname= BINARY ? and email = BINARY ?");
			st.setString(1, fname);
			st.setString(2, lname);
			st.setString(3, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
			return false;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
