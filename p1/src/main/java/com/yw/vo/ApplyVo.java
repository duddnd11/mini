package com.yw.vo;

public class ApplyVo {
	private int applyno;
	private int mbno;
	private String id;
	private String state;
	private String teamname;
	
	public ApplyVo() {}
	public ApplyVo(int applyno, int mbno, String id, String state, String teamname) {
		super();
		this.applyno = applyno;
		this.mbno = mbno;
		this.id = id;
		this.state = state;
		this.teamname = teamname;
	}
	public int getApplyno() {
		return applyno;
	}
	public void setApplyno(int applyno) {
		this.applyno = applyno;
	}
	public int getMbno() {
		return mbno;
	}
	public void setMbno(int mbno) {
		this.mbno = mbno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	
	
	
}
