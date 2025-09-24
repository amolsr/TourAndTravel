package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Application Lifecycle Listener implementation class Initializer
 *
 */
@WebListener
public class Initializer implements ServletContextListener {
	private static final Logger logger = LoggerFactory.getLogger(Initializer.class);

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
			con = DriverManager.getConnection(System.getenv("DATABASE_HOST"), System.getenv("DBUSER"), System.getenv("DBPASS"));
			Statement stmt = con.createStatement();
			String User = "CREATE TABLE Users (id SERIAL NOT NULL PRIMARY KEY,FullName varchar(100) DEFAULT NULL,MobileNumber char(10) DEFAULT NULL,EmailId varchar(70) DEFAULT NULL,Password varchar(100) DEFAULT NULL,RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP) ;";
			String Admin = "CREATE TABLE Admin (id SERIAL NOT NULL PRIMARY KEY,\"User\" varchar(70) DEFAULT NULL,Password varchar(100) DEFAULT NULL,RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP) ;";
			String tour = "CREATE TABLE Tour (PackageId SERIAL NOT NULL PRIMARY KEY,PackageName varchar(200) DEFAULT NULL,PackageType varchar(150) DEFAULT NULL,PackageLocation varchar(100) DEFAULT NULL,\"From\" DATE DEFAULT NULL,\"TO\" DATE DEFAULT NULL, PackagePrice REAL DEFAULT NULL,PackageFeatures varchar(255) DEFAULT NULL,PackageDetails TEXT DEFAULT NULL,PackageImage varchar(255) DEFAULT NULL,Creationdate timestamp NULL DEFAULT CURRENT_TIMESTAMP) ;";
			String Book = "CREATE TABLE Booking (BookingId SERIAL NOT NULL PRIMARY KEY,PackageId int DEFAULT NULL,UserEmail varchar(100) DEFAULT NULL,Comment TEXT DEFAULT NULL,RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,status varchar(11) DEFAULT NULL,CancelledBy varchar(5) DEFAULT NULL) ;";
			String Enquiry = "CREATE TABLE Enquiry (id SERIAL NOT NULL PRIMARY KEY,FullName varchar(100) DEFAULT NULL,EmailId varchar(100) DEFAULT NULL,MobileNumber char(10) DEFAULT NULL,Subject varchar(100) DEFAULT NULL,Description TEXT DEFAULT NULL,PostingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,Status int DEFAULT NULL);";
			String Issue = "CREATE TABLE Issues (id SERIAL NOT NULL PRIMARY KEY,UserEmail varchar(100) DEFAULT NULL,Issue varchar(100) DEFAULT NULL,Description TEXT DEFAULT NULL,PostingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,AdminRemark TEXT DEFAULT NULL,AdminremarkDate timestamp NULL DEFAULT NULL) ;";
			stmt.executeUpdate(tour);
			stmt.executeUpdate(User);
			stmt.executeUpdate(Admin);
			stmt.executeUpdate(Book);
			stmt.executeUpdate(Enquiry);
			stmt.executeUpdate(Issue);
			logger.info("Database tables created successfully: Users, Admin, Tour, Booking, Enquiry, Issues");
		} catch (Exception e) {
			logger.error("Error initializing database tables: {}", e.getMessage(), e);
		}
	}
}
