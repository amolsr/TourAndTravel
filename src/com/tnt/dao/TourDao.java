package com.tnt.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

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
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO `Tour` ( `PackageName`, `PackageType`, `PackageLocation`, `From`, `TO`, `PackagePrice`, `PackageFeatures`, `PackageDetails`, `PackageImage`) VALUES(? ,? ,? ,? ,? ,? ,? ,?, ? ) ";
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

	public String[][] retriveFour() {
		String[][] arr = null;
		try (Connection con = DBManager.getcon();) {
			PreparedStatement ps = con.prepareStatement("SELECT * from `Tour` order by rand() limit 4");
			ResultSet rs = ps.executeQuery();
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new String[totalRows][10];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i][0] = rs.getString("PackageId");
					arr[i][1] = rs.getString("PackageName");
					arr[i][2] = rs.getString("PackageType");
					arr[i][3] = rs.getString("PackageLocation");
					arr[i][4] = rs.getString("PackagePrice");
					arr[i][5] = rs.getString("PackageFeatures");
					arr[i][6] = rs.getString("PackageDetails");
					arr[i][7] = rs.getString("PackageImage");
					arr[i][8] = rs.getString("Creationdate");
					arr[i][9] = rs.getString("UpdationDate");
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return arr;
	}

	public void Update(Tour t) {
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE `Tour` SET `Password` = ?, `FullName` = ?, `MobileNumber` = ? WHERE `EmailId` = BINARY ?;";
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
			int rowsUpdated = ps.executeUpdate();
			if (rowsUpdated > 0) {
				System.out.println("An existing user was updated successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public String[][] getAllTour() {
		String[][] arr = null;
		String sql = "SELECT * FROM `Tour`;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new String[totalRows][10];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i][0] = rs.getString("PackageId");
					arr[i][1] = rs.getString("PackageName");
					arr[i][2] = rs.getString("PackageType");
					arr[i][3] = rs.getString("PackageLocation");
					arr[i][4] = rs.getString("PackagePrice");
					arr[i][5] = rs.getString("PackageFeatures");
					arr[i][6] = rs.getString("PackageDetails");
					arr[i][7] = rs.getString("PackageImage");
					arr[i][8] = rs.getString("Creationdate");
					arr[i][9] = rs.getString("UpdationDate");
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return arr;
	}

	public void delete(Integer id) {
		try (Connection con = DBManager.getcon();) {
			String sql = "DELETE FROM 'Tour' WHERE 'PackageId' = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1, id);
			int rowsDeleted = statement.executeUpdate();
			if (rowsDeleted > 0) {
				System.out.println("A Tour was deleted successfully!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
