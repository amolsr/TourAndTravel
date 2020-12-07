package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tnt.model.User;

public class UserDao {
	private static UserDao U = new UserDao();

	public static UserDao getUserDao() {
		return U;
	}

	private UserDao() {
	};

	public int create(User u) {
		int i = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO Users (FullName, MobileNumber, EmailId, Password) VALUES(?, ?, ?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getMobileNumber());
			ps.setString(3, u.getEmailId());
			ps.setString(4, u.getPassword());
			i = ps.executeUpdate();
			if (i > 0) {
				System.out.println("A new user was inserted successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public String retrive(String email, String pass) {
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM Users WHERE EmailId = BINARY ? AND Password = BINARY ?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return rs.getString("EmailId");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	public User[] getAllUser() {
		User[] arr = null;
		String sql = "SELECT * FROM Users;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new User[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new User();
					arr[i].setId(rs.getInt("id"));
					arr[i].setFullName(rs.getString("FullName"));
					arr[i].setMobileNumber(rs.getString("MobileNumber"));
					arr[i].setEmailId(rs.getString("EmailId"));
					arr[i].setRegDate(rs.getString("RegDate"));
					arr[i].setUpdationDate(rs.getString("UpdationDate"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

//	public void Update(User u) {
//		try (Connection con = DBManager.getcon();) {
//			String sql = "UPDATE Users SET Password = ?, FullName = ?, MobileNumber = ? WHERE EmailId = BINARY ?;";
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.setString(1, u.getPassword());
//			statement.setString(2, u.getFullName());
//			statement.setString(3, u.getMobileNumber());
//			statement.setString(4, u.getEmailId());
//			int rowsUpdated = statement.executeUpdate();
//			if (rowsUpdated > 0) {
//				System.out.println("An existing user was updated successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}

//	public void delete(String email) {
//		try (Connection con = DBManager.getcon();) {
//			String sql = "DELETE FROM 'Users' WHERE 'EmailId' = BINARY ?";
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.setString(1, email);
//			int rowsDeleted = statement.executeUpdate();
//			if (rowsDeleted > 0) {
//				System.out.println("A user was deleted successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
}
