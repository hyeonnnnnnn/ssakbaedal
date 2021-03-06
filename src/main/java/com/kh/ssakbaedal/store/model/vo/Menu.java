package com.kh.ssakbaedal.store.model.vo;

public class Menu {
	private int mnNo;
	private String mnName;
	private String mnCategory;
	private String mnStatus;
	private int mNo;
	private String smallCate;
	
	public Menu() {}

	public Menu(int mnNo, String mnName, String mnCategory, String mnStatus, int mNo, String smallCate) {
		super();
		this.mnNo = mnNo;
		this.mnName = mnName;
		this.mnCategory = mnCategory;
		this.mnStatus = mnStatus;
		this.mNo = mNo;
		this.smallCate = smallCate;
	}

	public int getMnNo() {
		return mnNo;
	}

	public void setMnNo(int mnNo) {
		this.mnNo = mnNo;
	}

	public String getMnName() {
		return mnName;
	}

	public void setMnName(String mnName) {
		this.mnName = mnName;
	}

	public String getMnCategory() {
		return mnCategory;
	}

	public void setMnCategory(String mnCategory) {
		this.mnCategory = mnCategory;
	}

	public String getMnStatus() {
		return mnStatus;
	}

	public void setMnStatus(String mnStatus) {
		this.mnStatus = mnStatus;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getSmallCate() {
		return smallCate;
	}

	public void setSmallCate(String smallCate) {
		this.smallCate = smallCate;
	}

	@Override
	public String toString() {
		return "Menu [mnNo=" + mnNo + ", mnName=" + mnName + ", mnCategory=" + mnCategory + ", mnStatus=" + mnStatus
				+ ", mNo=" + mNo + ", smallCate=" + smallCate + "]";
	}
	

}
