package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://SG-tnt-1138-master.servers.mongodirector.com:3306/tnt", "sgroot", "YtnHaozxhC&WGX1A");

			String query = "create table User(fname varchar(45) not null,lname varchar(45),email varchar(45), pass varchar(200), CONSTRAINT PK PRIMARY KEY(fname));";
			PreparedStatement ps = con.prepareStatement(query);
			ps.executeUpdate();

			System.out.println(query);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
