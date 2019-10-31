package com.tnt.util;

import java.util.HashMap;

public class UserMenu {

	HashMap<String, String> pages = new HashMap<>();

	public String getPage(String content) {
		pages.put("home", "Home.jsp");
		pages.put("package", "Package.jsp");
		pages.put("privacy", "Privacy.jsp");
		pages.put("terms", "Terms.jsp");
		pages.put("enquiry", "Enquiry.jsp");
		pages.put("contact", "ContactUs.jsp");
		pages.put("detail", "Details.jsp");
		pages.put("about", "AboutUs.jsp");
		pages.put("profile", "Profile.jsp");
		pages.put("changepass", "ChangePassword.jsp");
		pages.put("history", "History.jsp");
		pages.put("issue", "Issue.jsp");
		return pages.get(content);
	}
}
