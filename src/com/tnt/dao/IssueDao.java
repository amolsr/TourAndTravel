package com.tnt.dao;

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

	public Issue[] retrive() {
		return null;

	}
}
