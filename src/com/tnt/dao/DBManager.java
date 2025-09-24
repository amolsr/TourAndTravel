package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DBManager {
	private static final Logger logger = LoggerFactory.getLogger(DBManager.class);
	private static Connection con;

	public static Connection getcon() throws SQLException {
		try {
			// Check if existing connection is valid before creating a new one
			if (con != null && !con.isClosed()) {
				return con;
			}
			con = DriverManager.getConnection(System.getenv("DATABASE_HOST"), System.getenv("DBUSER"), System.getenv("DBPASS"));
		} catch (Exception e) {
			logger.error("Failed to create database connection", e);
			throw new SQLException("Database connection failed", e);
		}
		return con;
	}

	public static void closeConnection() throws SQLException {
		if (con != null && !con.isClosed()) {
			con.close();
		}
	}

	public static Integer[] count() {
		Integer[] I = null;
		String sql = "SELECT (SELECT COUNT(*) FROM Users) as Users, (SELECT COUNT(*) FROM Booking) as Booking, (SELECT COUNT(*) FROM Enquiry) as Enquiry, (SELECT COUNT(*) FROM Tour) as Tour, (SELECT COUNT(*) FROM Issues) as Issues;";
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
			logger.error("Error counting database records: {}", e.getMessage(), e);
		}
		return I;
	}
}
