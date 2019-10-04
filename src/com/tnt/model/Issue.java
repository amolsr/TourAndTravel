package com.tnt.model;

import java.util.Date;

public class Issue {
	private Integer id;
	private String userEmail;
	private String issue;
	private String description;
	private Date postingDate;
	private String adminRemark;
	private Date adminRemarkDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getPostingDate() {
		return postingDate;
	}

	public void setPostingDate(Date postingDate) {
		this.postingDate = postingDate;
	}

	public String getAdminRemark() {
		return adminRemark;
	}

	public void setAdminRemark(String adminRemark) {
		this.adminRemark = adminRemark;
	}

	public Date getAdminremarkDate() {
		return adminRemarkDate;
	}

	public void setAdminremarkDate(Date adminRemarkDate) {
		this.adminRemarkDate = adminRemarkDate;
	}

}
