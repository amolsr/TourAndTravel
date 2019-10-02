package com.tnt.model;

import java.util.Date;

public class Issue {
	private Integer id;
	private String UserEmail;
	private String Issue;
	private String Description;
	private Date PostingDate;
	private String AdminRemark;
	private Date AdminremarkDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getIssue() {
		return Issue;
	}

	public void setIssue(String issue) {
		Issue = issue;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Date getPostingDate() {
		return PostingDate;
	}

	public void setPostingDate(Date postingDate) {
		PostingDate = postingDate;
	}

	public String getAdminRemark() {
		return AdminRemark;
	}

	public void setAdminRemark(String adminRemark) {
		AdminRemark = adminRemark;
	}

	public Date getAdminremarkDate() {
		return AdminremarkDate;
	}

	public void setAdminremarkDate(Date adminremarkDate) {
		AdminremarkDate = adminremarkDate;
	}

}
