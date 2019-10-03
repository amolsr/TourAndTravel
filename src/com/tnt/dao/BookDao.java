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

//	public int create(Book b) {
//		int i = 0;
//		try (Connection con = DBManager.getcon();) {
//			String sql = "INSERT INTO `Book` () VALUES(?, ?, ?, ?) ";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, b.getFullName());
//			ps.setString(2, b.getMobileNumber());
//			ps.setString(3, b.getEmailId());
//			ps.setString(4, b.getPassword());
//			i = ps.executeUpdate();
//			if (i > 0) {
//				System.out.println("A new Booking was inserted successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		return i;
//	}

	public Book[] getAllBooking() {
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
					arr[i].setBookingId(rs.getInt("BookingId"));
					arr[i].setPackageId(rs.getInt("PackageId"));
					arr[i].setUserEmail(rs.getString("UserEmail"));
					arr[i].setComment(rs.getString("Comment"));
					arr[i].setRegDate(rs.getDate("RegDate"));
					arr[i].setStatus(rs.getString("status"));
					arr[i].setUpdationDate(rs.getDate("UpdationDate"));
					arr[i].setCancelledBy(rs.getString("CancelledBy"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

//	public void Update(Book b) {
//		try (Connection con = DBManager.getcon();) {
//			String sql = "UPDATE `Users` SET `Password` = ?, `FullName` = ?, `MobileNumber` = ? WHERE `EmailId` = BINARY ?;";
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.setString(1, b.getPassword());
//			statement.setString(2, b.getFullName());
//			statement.setString(3, b.getMobileNumber());
//			statement.setString(4, b.getEmailId());
//			int rowsUpdated = statement.executeUpdate();
//			if (rowsUpdated > 0) {
//				System.out.println("An existing user was updated successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
}
