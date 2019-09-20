package com.tnt.dao;

import java.sql.*;

public class Dao {
	static String url = "jdbc:mysql://SG-tnt-1138-master.servers.mongodirector.com:3306/tnt";
	private static Connection con;

	public static Connection getcon() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, "sgroot", "YtnHaozxhC&WGX1A");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

}
