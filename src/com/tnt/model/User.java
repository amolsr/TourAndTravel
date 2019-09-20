package com.tnt.model;

public class User {
	private String fname;
	private String lname;
	private String email;
	private String pass;

	public User() {
		this.fname = "";
		this.lname = "";
		this.email = "";
		this.pass = "";
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
