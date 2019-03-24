package org.yolo.holo.vo;

import java.sql.Timestamp;

public class HLogComment {
	private int no, noDounor,noHLog;
	private String contents;
	private Timestamp regdate;
	
	public HLogComment() {
		
	}
	

	public HLogComment(int noDounor, int noHLog, String contents) {
		super();
		this.noDounor = noDounor;
		this.noHLog = noHLog;
		this.contents = contents;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNoDounor() {
		return noDounor;
	}

	public void setNoDounor(int noDounor) {
		this.noDounor = noDounor;
	}

	public int getNoHLog() {
		return noHLog;
	}

	public void setNoHLog(int noHLog) {
		this.noHLog = noHLog;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
