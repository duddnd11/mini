package com.yw.vo;

public class TeamVo {
	private int teamno;
	private String name;
	private int members;
	private String sport;
	private String addr;
	private String gender;
	private String introduce;
	private String representative;
	
	public TeamVo() {}
	
	public TeamVo(int teamno, String name, int members, String sport, String addr, String gender, String introduce,String representative) {
		super();
		this.teamno = teamno;
		this.name = name;
		this.members = members;
		this.sport = sport;
		this.addr = addr;
		this.gender = gender;
		this.introduce = introduce;
		this.representative=representative;
		
	}
	public int getTeamno() {
		return teamno;
	}
	public void setTeamno(int teamno) {
		this.teamno = teamno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMembers() {
		return members;
	}
	public void setMembers(int members) {
		this.members = members;
	}
	public String getSport() {
		return sport;
	}
	public void setSport(String sport) {
		this.sport = sport;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getRepresentative() {
		return representative;
	}

	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	
	
}
