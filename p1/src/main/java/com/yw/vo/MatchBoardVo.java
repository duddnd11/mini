package com.yw.vo;

public class MatchBoardVo {
	private int mbno;
	private String title;
	private String matchdate;
	private String time;
	private String addr;
	private String place;
	private String cost;
	private String rule;
	private String contents;
	private int hitcount;
	private String state;
	private String category;
	private String skill;
	private String id;
	
	private ApplyVo applyVo;
	
	public MatchBoardVo() {};

	public MatchBoardVo(int mbno, String title, String date, String time,String addr, String place, String cost, String rule,
			String contents, int hitcount, String state, String category,String skill,String id) {
		super();
		this.mbno = mbno;
		this.title = title;
		this.matchdate = date;
		this.time=time;
		this.addr = addr;
		this.place = place;
		this.cost = cost;
		this.rule = rule;
		this.contents = contents;
		this.hitcount = hitcount;
		this.state = state;
		this.category = category;
		this.skill=skill;
		this.id=id;
	}
	
	public ApplyVo getApplyVo() {
		return applyVo;
	}

	public void setApplyVo(ApplyVo applyVo) {
		this.applyVo = applyVo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getMbno() {
		return mbno;
	}

	public void setMbno(int mbno) {
		this.mbno = mbno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return matchdate;
	}

	public void setDate(String date) {
		this.matchdate = date;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getRule() {
		return rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHitcount() {
		return hitcount;
	}

	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
