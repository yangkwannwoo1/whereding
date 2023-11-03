package com.kh.whereding.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Dress {
/*
D_CODE
D_ENTERPRISE
D_DETAIL
D_PRICE
D_START_DATE
D_END_DATE
D_PHONE
D_ADDRESS
D_UNIT_TIME
D_WEEK_OPEN
 */
	 private String drCode;
	 private String drEnterprise;
	 private String drDetail;
     private int drPrice;
     private String drStartDate;
	 private String drEndDate;
	 private String phone;
	 private String address; 
	 private int unitTime;
	 private String weekOpen;
	 private String csDate;
	 private String csStartTime;
	 private int reviewNo;
	 private int csNo;
 	 private String img1;
	 private String imgPath;
	 
	private String tagContent;
	
}
