package org.yolo.holo.vo;

import java.sql.Timestamp;

public class Follow {	
	private int no,noFollowing,noFollower;
	private Timestamp regdate;
	
	public Follow() {
		
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNoFollowing() {
		return noFollowing;
	}

	public void setNoFollowing(int noFollowing) {
		this.noFollowing = noFollowing;
	}

	public int getNoFollower() {
		return noFollower;
	}

	public void setNoFollower(int noFollower) {
		this.noFollower = noFollower;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
