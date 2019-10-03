package com.tnt.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

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

	public Enquiry[] getAllEnquiry() {
		Enquiry[] arr = null;
		String sql = "SELECT * FROM `Enquiry`;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Enquiry[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Enquiry();
					arr[i].setId(rs.getInt("id"));
					arr[i].setFullName(rs.getString("FullName"));
					arr[i].setEmailId(rs.getString("EmailId"));
					arr[i].setMobileNumber(rs.getString("MobileNumber"));
					arr[i].setSubject(rs.getString("Subject"));
					arr[i].setDescription(rs.getString("Description"));
					arr[i].setPostingDate(rs.getDate("PostingDate"));
					arr[i].setStatus(rs.getString("Status"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;
	}

	public void update(Enquiry e) {

	}
}
