package com.kh.whereding.admin.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


public class Review {
	 private int reviewNo; 
     private String productNo;
     private String hName;
     private String sEnterprise;
     private String dEnterprise;
     private String mEnterprise;
 	 private String userName;
     private String reviewContent;
     private String createDate;
	
     
     public Review() {}


	public Review(int reviewNo, String productNo, String hName, String sEnterprise, String dEnterprise,
			String mEnterprise, String userName, String reviewContent, String createDate) {
		super();
		this.reviewNo = reviewNo;
		this.productNo = productNo;
		this.hName = hName;
		this.sEnterprise = sEnterprise;
		this.dEnterprise = dEnterprise;
		this.mEnterprise = mEnterprise;
		this.userName = userName;
		this.reviewContent = reviewContent;
		this.createDate = createDate;
	}


	public int getReviewNo() {
		return reviewNo;
	}


	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}


	public String getProductNo() {
		return productNo;
	}


	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}


	public String gethName() {
		return hName;
	}


	public void sethName(String hName) {
		this.hName = hName;
	}


	public String getsEnterprise() {
		return sEnterprise;
	}


	public void setsEnterprise(String sEnterprise) {
		this.sEnterprise = sEnterprise;
	}


	public String getdEnterprise() {
		return dEnterprise;
	}


	public void setdEnterprise(String dEnterprise) {
		this.dEnterprise = dEnterprise;
	}


	public String getmEnterprise() {
		return mEnterprise;
	}


	public void setmEnterprise(String mEnterprise) {
		this.mEnterprise = mEnterprise;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public String getCreateDate() {
		return createDate;
	}


	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}


	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", productNo=" + productNo + ", hName=" + hName + ", sEnterprise="
				+ sEnterprise + ", dEnterprise=" + dEnterprise + ", mEnterprise=" + mEnterprise + ", userName="
				+ userName + ", reviewContent=" + reviewContent + ", createDate=" + createDate + "]";
	}
     
     
     
     
}
