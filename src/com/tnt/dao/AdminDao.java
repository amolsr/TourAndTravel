package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tnt.model.Admin;

public class AdminDao {
	private static final Logger logger = LoggerFactory.getLogger(AdminDao.class);
	private static AdminDao A = new AdminDao();

	public static AdminDao getAdminDao() {
		return A;
	}

	private AdminDao() {
		// TODO Auto-generated constructor stub
	};

	public int create(Admin a) {
		int i = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO Admin (User, Password) VALUES(?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, a.getUser());
			ps.setString(2, a.getPass());
			i = ps.executeUpdate();
			if (i > 0) {
				logger.info("A new admin was inserted successfully!");
			}
		} catch (Exception e) {
			logger.error("Error creating admin: {}", e.getMessage(), e);
		}
		return i;
	}

	public String retrive(String user, String pass) {
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM Admin WHERE \"User\" = ? AND Password = ?");
			ps.setString(1, user);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return rs.getString("User");
			}
		} catch (Exception e) {
			logger.error("Error retrieving admin: {}", e.getMessage(), e);
		}
		return null;
	}

	public void Update(Admin a) {
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE Admin SET Password = ? WHERE \"User\" = ?;";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, a.getPass());
			statement.setString(2, a.getUser());
			int rowsUpdated = statement.executeUpdate();
			if (rowsUpdated > 0) {
				logger.info("An existing admin was updated successfully!");
			}
		} catch (Exception e) {
			logger.error("Error updating admin: {}", e.getMessage(), e);
		}
	}
}
