package com.tnt.util;

import java.util.HashMap;

public class Menu {

	HashMap<String, String> pages = new HashMap<>();

	public String getPage(String content) {
		pages.put("home", "Home.jsp");
		pages.put("package", "Package.jsp");
		pages.put("register", "Register.jsp");
		pages.put("privacy", "Privacy.jsp");
		pages.put("terms", "Terms.jsp");
		pages.put("help", "Help.jsp");
		pages.put("enquiry", "Enquiry.jsp");
		pages.put("contact", "ContactUs.jsp");

		pages.put("create", "Create.jsp");
		pages.put("about", "AboutUs.jsp");
		pages.put("tour", "ManageTour.jsp");
		pages.put("user", "ManageUser.jsp");
		pages.put("book", "ManageBook.jsp");
		pages.put("enquiry", "ManageEnquiries.jsp");
		pages.put("issue", "ManageIssues.jsp");

		return pages.get(content);
	}
}
