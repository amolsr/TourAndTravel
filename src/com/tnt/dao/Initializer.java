package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Initializer
 *
 */
@WebListener
public class Initializer implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public Initializer() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		try {
			Class.forName(DBIntializer.DRIVER);
			Connection con = DriverManager.getConnection(DBIntializer.CON_STRING, DBIntializer.USERNAME,
					DBIntializer.PASSWORD);
			Statement stmt = con.createStatement();
			String table = "create table User(fname varchar(45) not null,mobile varchar(10),email varchar(45), pass varchar(200), CONSTRAINT PK PRIMARY KEY(email));";
			stmt.executeUpdate(table);
			System.out.println(table);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
