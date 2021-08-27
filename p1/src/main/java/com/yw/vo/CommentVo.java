package com.yw.vo;

public class CommentVo {
	private int cno;
	private int mbno;
	private String comment;
	private String id;
	private int ref;
	private int level;
	private int step;
	private String date;
	
	public CommentVo() {}
	public CommentVo(int cno, int mbno, String comment, String id, int ref, int level, int step, String date) {
		super();
		this.cno = cno;
		this.mbno = mbno;
		this.comment = comment;
		this.id = id;
		this.ref = ref;
		this.level = level;
		this.step = step;
		this.date = date;
	}
	public CommentVo(int mbno, String comment, String id, int ref, int level) {
		super();
		this.mbno = mbno;
		this.comment = comment;
		this.id = id;
		this.ref = ref;
		this.level = level;
	}
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getMbno() {
		return mbno;
	}
	public void setMbno(int mbno) {
		this.mbno = mbno;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
