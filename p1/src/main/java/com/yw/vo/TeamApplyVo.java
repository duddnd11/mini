package com.yw.vo;

public class TeamApplyVo {
	private int applyno;
	private int teamno;
	private String id;
	private String comment;
	
	public TeamApplyVo() {}
	public TeamApplyVo(int applyno, int teamno, String id, String comment) {
		super();
		this.applyno = applyno;
		this.teamno = teamno;
		this.id = id;
		this.comment = comment;
	}
	public int getApplyno() {
		return applyno;
	}
	public void setApplyno(int applyno) {
		this.applyno = applyno;
	}
	public int getTeamno() {
		return teamno;
	}
	public void setTeamno(int teamno) {
		this.teamno = teamno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
