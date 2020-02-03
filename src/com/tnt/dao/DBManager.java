package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {

	private static Connection con;

	public static Connection getcon() throws SQLException {
//		try {
//			Class.forName(DBIntializer.DRIVER);
//			con = DriverManager.getConnection(DBIntializer.CON_STRING, DBIntializer.USERNAME, DBIntializer.PASSWORD);
//		} catch (Exception e) {
//			System.out.println(e);
//		}
		return con;
	}

	public void closeConnection() throws SQLException {
		con.close();
	}

	public static Integer[] count() {
		Integer[] I = null;
		String sql = "SELECT (SELECT COUNT(*) FROM `Users`) as Users, (SELECT COUNT(*) FROM `Booking`) as Booking, (SELECT COUNT(*) FROM `Enquiry`) as Enquiry, (SELECT COUNT(*) FROM `Tour`) as Tour, (SELECT COUNT(*) FROM `Issues`) as Issues;";
		try (Connection con = DBManager.getcon()) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			ResultSetMetaData meta = rs.getMetaData();
			int colCount = meta.getColumnCount();
			I = new Integer[colCount];
			if (rs.next()) {
				for (int col = 1; col <= colCount; col++) {
					Integer value = rs.getInt(col);
					if (value != null) {
						I[col - 1] = Integer.valueOf(value);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return I;
	}
}