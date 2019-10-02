package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tnt.model.Book;

public class BookDao {
	private static BookDao B = new BookDao();

	public static BookDao getBookDao() {
		return B;
	}

	private BookDao() {
		// TODO Auto-generated constructor stub
	};

	public int create(Book b) {
		int i = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO `Book` () VALUES(?, ?, ?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, b.getFullName());
			ps.setString(2, b.getMobileNumber());
			ps.setString(3, b.getEmailId());
			ps.setString(4, b.getPassword());
			i = ps.executeUpdate();
			if (i > 0) {
				System.out.println("A new Booking was inserted successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public Book[] retrive() {
		Book[] arr = null;
		String sql = "SELECT * FROM `Book`;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Book[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Book();
					arr[i].setBookingId((rs.getInt("id")));
					arr[i].setName((rs.getString("FullName")));
					arr[i].setMobileNumber(rs.getString("MobileNumber"));
					arr[i].setEmailId(rs.getString("EmailId"));
					arr[i].setFrom((rs.getDate("RegDate")));
					arr[i].setUpdationDate(rs.getString("UpdationDate"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return arr;
	}

	public void Update(Book b) {
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE `Users` SET `Password` = ?, `FullName` = ?, `MobileNumber` = ? WHERE `EmailId` = BINARY ?;";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, b.getPassword());
			statement.setString(2, b.getFullName());
			statement.setString(3, b.getMobileNumber());
			statement.setString(4, b.getEmailId());
			int rowsUpdated = statement.executeUpdate();
			if (rowsUpdated > 0) {
				System.out.println("An existing user was updated successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
