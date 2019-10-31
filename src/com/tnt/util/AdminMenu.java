package com.tnt.util;

import java.util.HashMap;

public class AdminMenu {

	HashMap<String, String> pages = new HashMap<>();

	public String getPage(String content) {
		pages.put("create", "Create.jsp");
		pages.put("tour", "ManageTour.jsp");
		pages.put("user", "ManageUser.jsp");
		pages.put("book", "ManageBooking.jsp");
		pages.put("enquiry", "ManageEnquiries.jsp");
		pages.put("issue", "ManageIssues.jsp");
		pages.put("changepass", "ChangePassword.jsp");
		pages.put("update", "UpdateTour.jsp");
		pages.put("home", "Home.jsp");
		return pages.get(content);
	}
}
