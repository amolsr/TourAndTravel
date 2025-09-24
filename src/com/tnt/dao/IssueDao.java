package com.tnt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tnt.model.Issue;

public class IssueDao {
	private static final Logger logger = LoggerFactory.getLogger(IssueDao.class);
	private static IssueDao I = new IssueDao();

	public static IssueDao getIssueDao() {
		return I;
	}

	private IssueDao() {

	}

	public int create(Issue i) throws Exception {
		int j = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "INSERT INTO Issues( UserEmail , Issue , Description ) VALUES(?, ?, ?) ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, i.getUserEmail());
			ps.setString(2, i.getIssue());
			ps.setString(3, i.getDescription());
			j = ps.executeUpdate();
			if (j > 0) {
				logger.info("A new Issue was inserted successfully!");
			}
		} catch (Exception e) {
			logger.error("Error creating issue: {}", e.getMessage(), e);
			throw e;
		}
		return j;
	}

	public int update(Issue i) throws Exception {
		int j = 0;
		try (Connection con = DBManager.getcon();) {
			String sql = "UPDATE Issues SET UserEmail = ?, Issue = ?, Description = ?, AdminRemark = ?, AdminremarkDate = ? WHERE id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, i.getUserEmail());
			ps.setString(2, i.getIssue());
			ps.setString(3, i.getDescription());
			ps.setString(4, i.getAdminRemark());
			ps.setDate(5, new java.sql.Date(i.getAdminremarkDate() != null ? i.getAdminremarkDate().getTime() : System.currentTimeMillis()));
			ps.setInt(6, i.getId());
			j = ps.executeUpdate();
			if (j > 0) {
				logger.info("Issue was updated successfully!");
			}
		} catch (Exception e) {
			logger.error("Error updating issue: {}", e.getMessage(), e);
			throw e;
		}
		return j;
	}

	public Issue[] getAllIssue() {
		Issue[] arr = null;
		String sql = "SELECT * FROM Issues;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = statement.executeQuery(sql);
			rs.last();
			int totalRows = rs.getRow();
			rs.beforeFirst();
			arr = new Issue[totalRows];
			if (totalRows != 0) {
				int i = 0;
				while (rs.next()) {
					arr[i] = new Issue();
					arr[i].setId(rs.getInt("id"));
					arr[i].setUserEmail(rs.getString("UserEmail"));
					arr[i].setIssue(rs.getString("Issue"));
					arr[i].setDescription(rs.getString("Description"));
					arr[i].setPostingDate(rs.getDate("PostingDate"));
					arr[i].setAdminRemark(rs.getString("AdminRemark"));
					arr[i].setAdminremarkDate(rs.getDate("AdminremarkDate"));
					i++;
				}
			} else {
			}
		} catch (Exception e) {
			logger.error("Error retrieving all issues: {}", e.getMessage(), e);
		}
		return arr;

	}
}
