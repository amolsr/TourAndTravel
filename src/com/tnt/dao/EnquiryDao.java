package com.tnt.dao;

import com.tnt.model.Enquiry;

public class EnquiryDao {
	private static EnquiryDao E = new EnquiryDao();

	public static EnquiryDao getEnquiryDao() {
		return E;
	}

	private EnquiryDao() {
		// TODO Auto-generated constructor stub
	};

	public int create(Enquiry e) {
		return 0;

	}

	public void update(Enquiry e) {

	}

	public Enquiry[] retrive() {
		return null;

	}
}
