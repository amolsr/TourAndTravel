package com.tnt.model;

import java.util.Date;

public class Booking {
	private Integer BookingId;
	private Integer PackageId;
	private String UserEmail;
	private Date RegDate;
	private Date UpdationDate;
	private String Comment;
	private String status;
	private String CancelledBy;

	public Integer getBookingId() {
		return BookingId;
	}

	public void setBookingId(Integer bookingId) {
		BookingId = bookingId;
	}

	public Integer getPackageId() {
		return PackageId;
	}

	public void setPackageId(Integer packageId) {
		PackageId = packageId;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public Date getRegDate() {
		return RegDate;
	}

	public void setRegDate(Date regDate) {
		RegDate = regDate;
	}

	public Date getUpdationDate() {
		return UpdationDate;
	}

	public void setUpdationDate(Date updationDate) {
		UpdationDate = updationDate;
	}

	public String getComment() {
		return Comment;
	}

	public void setComment(String comment) {
		Comment = comment;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCancelledBy() {
		return CancelledBy;
	}

	public void setCancelledBy(String cancelledBy) {
		CancelledBy = cancelledBy;
	}

}
