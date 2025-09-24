package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tnt.model.Enquiry;

public class EnquiryDao {
	private static final Logger logger = LoggerFactory.getLogger(EnquiryDao.class);
	private static EnquiryDao E = new EnquiryDao();

	public static EnquiryDao getEnquiryDao() {
		return E;
	}

	private EnquiryDao() {
		// TODO Auto-generated constructor stub
	};

	public int create(Enquiry e) throws Exception {
		int i = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO Enquiry( UserEmail , Issue , Description ) VALUES(?, ?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, e.getEmailId());
			ps.setString(2, e.getSubject());
			ps.setString(3, e.getDescription());
			i = ps.executeUpdate();
			if (i > 0) {
				logger.info("A new Enquiry was inserted successfully!");
			}
		} catch (Exception e1) {
			logger.error("Error creating enquiry: {}", e1.getMessage(), e1);
			throw e1;
		}
		return i;
	}

	public Enquiry[] getAllEnquiry() {
		Enquiry[] arr = null;
		String sql = "SELECT * FROM Enquiry;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
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
			logger.error("Error retrieving all enquiries: {}", e.getMessage(), e);
		}
		return arr;
	}

	public int update(Enquiry e) throws Exception {
		int j = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE Enquiry SET FullName = ?, EmailId = ?, MobileNumber = ?, Subject = ?, Description = ?, Status = ? WHERE id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, e.getFullName());
			ps.setString(2, e.getEmailId());
			ps.setString(3, e.getMobileNumber());
			ps.setString(4, e.getSubject());
			ps.setString(5, e.getDescription());
			ps.setString(6, e.getStatus());
			ps.setInt(7, e.getId());
			j = ps.executeUpdate();
			if (j > 0) {
				logger.info("Enquiry was updated successfully!");
			}
		} catch (Exception ex) {
			logger.error("Error updating enquiry: {}", ex.getMessage(), ex);
			throw ex;
		}
		return j;
	}
}