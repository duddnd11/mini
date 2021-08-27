package com.yw.vo;

import java.util.List;

public class RelatedVo {
	private int prevNo;
	private int nextNo;
	private int relateNo;
	private int no;
	private List list;
	
	public RelatedVo() {}
	public RelatedVo(int prevNo, int nextNo, int relateNo,int no,List list) {
		this.prevNo = prevNo;
		this.nextNo = nextNo;
		this.relateNo = relateNo;
		this.no=no;
		this.list=list;
	}
	public RelatedVo(int no, List list) {
		this.no=no;
		this.list=list;
	}
	
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getPrevNo() {
		return prevNo;
	}
	public void setPrevNo(int prevNo) {
		this.prevNo = prevNo;
	}
	public int getNextNo() {
		return nextNo;
	}
	public void setNextNo(int nextNo) {
		this.nextNo = nextNo;
	}
	public int getRelateNo() {
		return relateNo;
	}
	public void setRelateNo(int relateNo) {
		this.relateNo = relateNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public void relateByNotice(List<NoticeVo> list) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNo() == this.no) {
				if(i==0) {
					this.nextNo=list.get(i+1).getNo();
				}else if(i>=list.size()-1) {
					this.prevNo=list.get(i-1).getNo();
				}else {
					this.prevNo=list.get(i-1).getNo();
					this.nextNo=list.get(i+1).getNo();
				}
				
				if(i<=2) {
					this.relateNo=0;
				}else if(list.size()>=5 && i>=list.size()-2) {
					this.relateNo=list.size()-5;
				}else {
					this.relateNo=i-2;
				}
				break;
			}
		}
	}
	
	public void relateByBlackList(List<BlackListVo> list) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNo() == this.no) {
				if(i==0) {
					this.nextNo=list.get(i+1).getNo();
				}else if(i>=list.size()-1) {
					this.prevNo=list.get(i-1).getNo();
				}else {
					this.prevNo=list.get(i-1).getNo();
					this.nextNo=list.get(i+1).getNo();
				}
				
				if(i<=2) {
					this.relateNo=0;
				}else if(list.size()>=5 && i>=list.size()-2) {
					this.relateNo=list.size()-5;
				}else {
					this.relateNo=i-2;
				}
				break;
			}
		}
	}
	
	
}
