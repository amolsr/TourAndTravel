package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tnt.model.Booking;

public class BookingDao {
	private static BookingDao B = new BookingDao();

	public static BookingDao getBookDao() {
		return B;
	}

	private BookingDao() {
		// TODO Auto-generated constructor stub
	};

	public int create(Booking b) throws Exception {
		int i = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO Booking( PackageId , UserEmail , Comment) VALUES(?, ?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, b.getPackageId());
			ps.setString(2, b.getUserEmail());
			ps.setString(3, b.getComment());
			i = ps.executeUpdate();
			if (i > 0) {
				System.out.println("A new Booking was inserted successfully!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return i;
	}

	public Booking getBookingById(Integer i) {
		Booking b = null;
		String sql = "SELECT * FROM Booking WHERE BookingId = BINARY ? ;";
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, i);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				b = new Booking();
				b.setBookingId(rs.getInt("BookingId"));
				b.setPackageId(rs.getInt("PackageId"));
				b.setUserEmail(rs.getString("UserEmail"));
				b.setComment(rs.getString("Comment"));
				b.setRegDate(rs.getDate("RegDate"));
				b.setStatus(rs.getString("status"));
				b.setUpdationDate(rs.getDate("UpdationDate"));
				b.setCancelledBy(rs.getString("CancelledBy"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public Booking[] getAllBooking() {
		Booking[] arr = null;
		String sql = "SELECT * FROM Booking;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Booking[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Booking();
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

	public void Update(Booking b) {
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE Booking SET status = ? , CancelledBy = ? WHERE BookingId = ? ;";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, b.getStatus());
			statement.setString(2, b.getCancelledBy());
			statement.setInt(3, b.getBookingId());
			int rowsUpdated = statement.executeUpdate();
			if (rowsUpdated > 0) {
				System.out.println("An existing Booking was updated successfully!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
