package com.tnt.dao;

import java.sql.Connection;
import java.sql.DriverManager;
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
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(System.getenv("DATABASE_URL"), System.getenv("DBUSER"), System.getenv("DBPASS"));
			Statement stmt = con.createStatement();
			String User = "CREATE TABLE `Users` (`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`FullName` varchar(100) DEFAULT NULL,`MobileNumber` char(10) DEFAULT NULL,`EmailId` varchar(70) DEFAULT NULL,`Password` varchar(100) DEFAULT NULL,`RegDate` timestamp NULL DEFAULT current_timestamp(),`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			String Admin = "CREATE TABLE `Admin` (`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`User` varchar(70) DEFAULT NULL,`Password` varchar(100) DEFAULT NULL,`RegDate` timestamp NULL DEFAULT current_timestamp(),`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			String tour = "CREATE TABLE `Tour` (`PackageId` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`PackageName` varchar(200) DEFAULT NULL,`PackageType` varchar(150) DEFAULT NULL,`PackageLocation` varchar(100) DEFAULT NULL,`From` DATE DEFAULT NULL,`TO` DATE DEFAULT NULL, `PackagePrice` int(11) DEFAULT NULL,`PackageFeatures` varchar(255) DEFAULT NULL,`PackageDetails` mediumtext DEFAULT NULL,`PackageImage` varchar(255) DEFAULT NULL,`Creationdate` timestamp NULL DEFAULT current_timestamp(),`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			String Book = "CREATE TABLE `Booking` (`BookingId` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`PackageId` int(11) DEFAULT NULL,`UserEmail` varchar(100) DEFAULT NULL,`Comment` mediumtext DEFAULT NULL,`RegDate` timestamp NULL DEFAULT current_timestamp(),`status` varchar(11) DEFAULT NULL,`CancelledBy` varchar(5) DEFAULT NULL,`UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			String Enquiry = "CREATE TABLE `Enquiry` (`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`FullName` varchar(100) DEFAULT NULL,`EmailId` varchar(100) DEFAULT NULL,`MobileNumber` char(10) DEFAULT NULL,`Subject` varchar(100) DEFAULT NULL,`Description` mediumtext DEFAULT NULL,`PostingDate` timestamp NULL DEFAULT current_timestamp(),`Status` int(1) DEFAULT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			String Issue = "CREATE TABLE `Issues` (`id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,`UserEmail` varchar(100) DEFAULT NULL,`Issue` varchar(100) DEFAULT NULL,`Description` mediumtext DEFAULT NULL,`PostingDate` timestamp NULL DEFAULT current_timestamp(),`AdminRemark` mediumtext DEFAULT NULL,`AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=latin1;";
			stmt.executeUpdate(tour);
			stmt.executeUpdate(User);
			stmt.executeUpdate(Admin);
			stmt.executeUpdate(Book);
			stmt.executeUpdate(Enquiry);
			stmt.executeUpdate(Issue);
			System.out.println(User + "\n" + Admin + "\n" + tour + "\n" + Book + "\n" + Enquiry + "\n" + Issue);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
