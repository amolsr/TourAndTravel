package com.tnt.dao;

public interface DBIntializer {
	String DRIVER = "com.mysql.cj.jdbc.Driver";
	String CON_STRING = System.getenv("DATABASE_URL");
	String USERNAME = System.getenv("DBUSER");
	String PASSWORD = System.getenv("DBPASS")";
}
