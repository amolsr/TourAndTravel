package com.tnt.util;

import java.util.HashMap;

public class Menu {

	HashMap<String, String> pages = new HashMap<>();

	public String getPage(String content) {
		pages.put("home", "Home.jsp");
		pages.put("package", "Package.jsp");
		pages.put("home", "Home.jsp");
		pages.put("home", "Home.jsp");
		pages.put("login", "LogIn.jsp");
		pages.put("register", "Register.jsp");
		pages.put("contact", "ContactUs.jsp");
		pages.put("about", "AboutUs.jsp");
		return pages.get(content);
	}

}
