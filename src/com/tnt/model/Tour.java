package com.tnt.model;

import java.util.Date;

public class Tour {
	private Integer id;
	private String packageName;
	private String packageType;
	private String packageLocation;
	private Date from;
	private Date to;
	private Integer packagePrice;
	private String packageFeatures;
	private String packageDetails;
	private String packageImage;
	private String creationDate;
	private String updationDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getPackageType() {
		return packageType;
	}

	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}

	public String getPackageLocation() {
		return packageLocation;
	}

	public void setPackageLocation(String packageLocation) {
		this.packageLocation = packageLocation;
	}

	public Date getFrom() {
		return from;
	}

	public void setFrom(Date from) {
		this.from = from;
	}

	public Date getTo() {
		return to;
	}

	public void setTo(Date to) {
		this.to = to;
	}

	public Integer getPackagePrice() {
		return packagePrice;
	}

	public void setPackagePrice(Integer packagePrice) {
		this.packagePrice = packagePrice;
	}

	public String getPackageFeatures() {
		return packageFeatures;
	}

	public void setPackageFeatures(String packageFeatures) {
		this.packageFeatures = packageFeatures;
	}

	public String getPackageDetails() {
		return packageDetails;
	}

	public void setPackageDetails(String packageDetails) {
		this.packageDetails = packageDetails;
	}

	public String getPackageImage() {
		return packageImage;
	}

	public void setPackageImage(String packageImage) {
		this.packageImage = packageImage;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public String getUpdationDate() {
		return updationDate;
	}

	public void setUpdationDate(String updationDate) {
		this.updationDate = updationDate;
	}

}
