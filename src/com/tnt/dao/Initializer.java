package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
		Connection con;
		try {
			Class.forName(DBIntializer.DRIVER);
			con = DriverManager.getConnection(DBIntializer.CON_STRING, DBIntializer.USERNAME, DBIntializer.PASSWORD);
			Statement stmt = con.createStatement();
			String table = "CREATE TABLE `Users` (`id` int(11) NOT NULL AUTO_INCREMENT,`FullName` varchar(100) DEFAULT NULL,`MobileNumber` char(10) DEFAULT NULL,`EmailId` varchar(70) DEFAULT NULL,`Password` varchar(100) DEFAULT NULL,`RegDate` timestamp NULL DEFAULT current_timestamp(),`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			stmt.executeUpdate(table);
			System.out.println(table);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
