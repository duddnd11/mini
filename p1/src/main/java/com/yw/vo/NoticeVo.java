package com.yw.vo;

public class NoticeVo {
	private int no;
	private String title;
	private String content;
	private String date;
	private int hitCount;
	private int main;
	
	public NoticeVo() {};
	public NoticeVo(int no, String title, String content, String date) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public int getMain() {
		return main;
	}
	public void setMain(int main) {
		this.main = main;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
