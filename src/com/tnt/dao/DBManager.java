package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

	private static Connection con;

	public static Connection getcon() throws SQLException {
		try {
			Class.forName(DBIntializer.DRIVER);
			con = DriverManager.getConnection(DBIntializer.CON_STRING, DBIntializer.USERNAME, DBIntializer.PASSWORD);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public void closeConnection() throws SQLException {
		con.close();
	}
}