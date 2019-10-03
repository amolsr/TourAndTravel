package com.tnt.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tnt.model.Issue;

public class IssueDao {
	private static IssueDao I = new IssueDao();

	public static IssueDao getIssueDao() {
		return I;
	}

	private IssueDao() {

	}

	public int create(Issue i) {
		return 0;

	}

	public void update(Issue i) {

	}

	public Issue[] getAllIssue() {
		Issue[] arr = null;
		String sql = "SELECT * FROM `Enquiry`;";
		try (Connection con = DBManager.getcon();) {
			Statement statement = con.createStatement();
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
			e.printStackTrace();
		}
		return arr;

	}
}
