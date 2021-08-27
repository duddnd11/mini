package com.yw.vo;

import java.util.List;

public class PagingVo {
	private int page;
	private int pageSize;
	private int startPage;
	private int endPage;
	private int offset;
	
	public PagingVo() {
	}
	public PagingVo(int page,int pageSize, int startPage, int endPage) {
		this.page=page;
		this.pageSize = pageSize;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	
	public PagingVo(List listAll,int page) {
		this.page=page;
		// 전체 사이즈 
		if(listAll.size()>=10 && listAll.size()%10==0) {
			this.pageSize = listAll.size()/10;
		}else {
			if(listAll.size()!=0) {
				this.pageSize = listAll.size()/10+1;
			}
		}
		//페이지
		if(page==0) {
			this.page=1;
		}else if(pageSize>0 && this.page>pageSize) {
			this.page=pageSize;
		}
		
		this.offset=(this.page-1)*10;
		
		this.startPage = this.page/10*10+1;
		if(page%10==0) {
			this.startPage=this.page-9<1?1:this.page-9;
		}

		this.endPage = this.startPage+9;
		
		if(this.startPage/10 == this.pageSize/10) {
			this.endPage=this.pageSize;
		}
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "PagingVo [page=" + page + ", pageSize=" + pageSize + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", offset=" + offset + "]";
	}
	
}
