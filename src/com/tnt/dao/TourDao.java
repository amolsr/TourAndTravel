package com.tnt.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tnt.model.Tour;

public class TourDao {
	private static TourDao T = new TourDao();

	public static TourDao getTourDao() {
		return T;
	}

	private TourDao() {
	};

	public int create(Tour t) {
		int i = 0;
		String sql = "INSERT INTO Tour ( PackageName, PackageType, PackageLocation, From, TO, PackagePrice, PackageFeatures, PackageDetails, PackageImage) VALUES(? ,? ,? ,? ,? ,? ,? ,?, ? ) ";
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, t.getPackageName());
			ps.setString(2, t.getPackageType());
			ps.setString(3, t.getPackageLocation());
			ps.setDate(4, new Date((t.getFrom()).getTime()));
			ps.setDate(5, new Date((t.getTo()).getTime()));
			ps.setInt(6, t.getPackagePrice());
			ps.setString(7, t.getPackageFeatures());
			ps.setString(8, t.getPackageDetails());
			ps.setString(9, t.getPackageImage());
			i = ps.executeUpdate();
			if (i > 0) {
				System.out.println("A new tour was inserted successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}

	public Tour[] retriveFour() {
		Tour[] arr = null;
		String sql = "SELECT * from Tour order by rand() limit 4";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Tour[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Tour();
					arr[i].setId(rs.getInt("PackageId"));
					arr[i].setPackageName(rs.getString("PackageName"));
					arr[i].setPackageType(rs.getString("PackageType"));
					arr[i].setPackageLocation(rs.getString("PackageLocation"));
					arr[i].setFrom(new java.util.Date(rs.getDate("From").getTime()));
					arr[i].setTo(new java.util.Date(rs.getDate("to").getTime()));
					arr[i].setPackagePrice(rs.getInt("PackagePrice"));
					arr[i].setPackageFeatures(rs.getString("PackageFeatures"));
					arr[i].setPackageDetails(rs.getString("PackageDetails"));
					arr[i].setPackageImage(rs.getString("PackageImage"));
					arr[i].setCreationDate(rs.getString("Creationdate"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println("Dao " + e);
			e.printStackTrace();
		}
		return arr;
	}

	public Tour[] getAllTour() {
		Tour[] arr = null;
		String sql = "SELECT * FROM Tour;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Tour[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Tour();
					arr[i].setId(rs.getInt("PackageId"));
					arr[i].setPackageName(rs.getString("PackageName"));
					arr[i].setPackageType(rs.getString("PackageType"));
					arr[i].setPackageLocation(rs.getString("PackageLocation"));
					arr[i].setFrom(new java.util.Date(rs.getDate("From").getTime()));
					arr[i].setTo(new java.util.Date(rs.getDate("to").getTime()));
					arr[i].setPackagePrice(rs.getInt("PackagePrice"));
					arr[i].setPackageFeatures(rs.getString("PackageFeatures"));
					arr[i].setPackageDetails(rs.getString("PackageDetails"));
					arr[i].setPackageImage(rs.getString("PackageImage"));
					arr[i].setCreationDate(rs.getString("Creationdate"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println("Dao " + e);
			e.printStackTrace();
		}
		return arr;
	}

	public Tour getTourById(Integer i) {
		Tour t = null;
		String sql = "SELECT * FROM Tour WHERE PackageId = BINARY ? ;";
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, i);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				t = new Tour();
				t.setId(rs.getInt("PackageId"));
				t.setPackageName(rs.getString("PackageName"));
				t.setPackageType(rs.getString("PackageType"));
				t.setPackageLocation(rs.getString("PackageLocation"));
				t.setFrom(new java.util.Date(rs.getDate("From").getTime()));
				t.setTo(new java.util.Date(rs.getDate("to").getTime()));
				t.setPackagePrice(rs.getInt("PackagePrice"));
				t.setPackageFeatures(rs.getString("PackageFeatures"));
				t.setPackageDetails(rs.getString("PackageDetails"));
				t.setPackageImage(rs.getString("PackageImage"));
				t.setCreationDate(rs.getString("Creationdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

//	public void Update(Tour t) {
//		try (Connection con = DBManager.getcon();) {
//			String sql = "UPDATE Tour SET Password = ?, FullName = ?, MobileNumber = ? WHERE EmailId = BINARY ?;";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, t.getPackageName());
//			ps.setString(2, t.getPackageType());
//			ps.setString(3, t.getPackageLocation());
//			ps.setDate(4, new Date((t.getFrom()).getTime()));
//			ps.setDate(5, new Date((t.getTo()).getTime()));
//			ps.setInt(6, t.getPackagePrice());
//			ps.setString(7, t.getPackageFeatures());
//			ps.setString(8, t.getPackageDetails());
//			ps.setString(9, t.getPackageImage());
//			int rowsUpdated = ps.executeUpdate();
//			if (rowsUpdated > 0) {
//				System.out.println("An existing user was updated successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}

//	public void delete(Integer id) {
//		try (Connection con = DBManager.getcon();) {
//			String sql = "DELETE FROM 'Tour' WHERE 'PackageId' = ?";
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.setInt(1, id);
//			int rowsDeleted = statement.executeUpdate();
//			if (rowsDeleted > 0) {
//				System.out.println("A Tour was deleted successfully!");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
}
