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

	private UserDao() {
	};

	public int create(User u) {
		int i = 0;
		try (Connection con = Dao.getcon();) {
			if (!(U.check(u.getEmail()))) {
				PreparedStatement ps = con
						.prepareStatement("INSERT INTO User (fname, mobile, email, pass) VALUES (?, ?, ?, ?) ");
				ps.setString(1, u.getFname());
				ps.setString(2, u.getMobile());
				ps.setString(3, u.getEmail());
				ps.setString(4, u.getPass());
				i = ps.executeUpdate();
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public String log(String email, String pass) {
		try (Connection con = Dao.getcon();) {
			PreparedStatement ps = con.prepareStatement("select * from User where email= BINARY ? and pass= BINARY ?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery(); // Fetch from database using executeQuery
			if (rs.next()) {
				return rs.getString("email");
			}
			return null;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public boolean check(String email) {
		try (Connection con = Dao.getcon();) {
			PreparedStatement st = con.prepareStatement("select * from User where email = BINARY ?");
			st.setString(1, email);
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
