package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

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
			String sql = "INSERT INTO `Users` (`FullName`, `MobileNumber`, `EmailId`, `Password`) VALUES(?, ?, ?, ?) ";
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
		try (Connection con = Dao.getcon();) {
			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM `Users` WHERE `EmailId` = BINARY ? AND `Password` = BINARY ?");
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

	public void Update(User u) {
		try (Connection con = Dao.getcon();) {
			String sql = "UPDATE `Users` SET `Password` = ?, `FullName` = ?, `MobileNumber` = ? WHERE `EmailId` = BINARY ?;";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, u.getPassword());
			statement.setString(2, u.getFullName());
			statement.setString(3, u.getMobileNumber());
			statement.setString(4, u.getEmailId());
			int rowsUpdated = statement.executeUpdate();
			if (rowsUpdated > 0) {
				System.out.println("An existing user was updated successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public String[][] getAllUser() {
		String[][] arr = null;
		String sql = "SELECT * FROM `Users`;";
		try (Connection con = Dao.getcon();) {
			Statement statement = con.createStatement();
			ResultSet result = statement.executeQuery(sql);
			result.last();
			int totalRows = result.getRow();
			result.beforeFirst();
			arr = new String[totalRows][6];
			if (totalRows != 0) {
				int i = 0;
				while (result.next()) {
					arr[i][0] = result.getString("id");
					arr[i][1] = result.getString("FullName");
					arr[i][2] = result.getString("MobileNumber");
					arr[i][3] = result.getString("EmailId");
					arr[i][3] = result.getString("RegDate");
					arr[i][3] = result.getString("UpdationDate");
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return arr;
	}

	public void delete(String email) {
		try (Connection con = Dao.getcon();) {
			String sql = "DELETE FROM 'Users' WHERE 'EmailId' = BINARY ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, email);
			int rowsDeleted = statement.executeUpdate();
			if (rowsDeleted > 0) {
				System.out.println("A user was deleted successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
