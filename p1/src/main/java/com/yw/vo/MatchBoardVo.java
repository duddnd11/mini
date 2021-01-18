package com.yw.vo;

public class MatchBoardVo {
	private int mbno;
	private String title;
	private String date;
	private String addr;
	private String cost;
	private String rule;
	private String contents;
	private int hitcount;
	private String state;
	private String category;
	
	public MatchBoardVo() {};

	public MatchBoardVo(int mbno, String title, String date, String addr, String cost, String rule, String contents,
			int hitcount, String state, String category) {
		super();
		this.mbno = mbno;
		this.title = title;
		this.date = date;
		this.addr = addr;
		this.cost = cost;
		this.rule = rule;
		this.contents = contents;
		this.hitcount = hitcount;
		this.state = state;
		this.category = category;
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
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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
