package com.WorldVision.dto;

public class PageCriteria {
	private int page; 
	private int perPageNum; 
	
	public int getPageStart() {
		if(this.page==1) return 1;
		else return (this.page-1)*perPageNum+1; 
	}

	public PageCriteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	public PageCriteria(int page) {
		this.page = page;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <= 0) this.page = 1;
		else this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if(pageCount != cnt) this.perPageNum = cnt;
		else this.perPageNum = pageCount; 
	}
	
}
