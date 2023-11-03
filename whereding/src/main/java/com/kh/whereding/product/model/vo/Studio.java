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
public class Studio {
/*
S_CODE
S_ENTERPRISE
S_DETAIL
S_PRICE
S_START_DATE
S_END_DATE
S_PHONE
S_ADDRESS
S_UNIT_TIME
S_WEEK_OPEN
 */
	private String stCode;
	private String stEnterprise;
	private String stDetail;
	private int stPrice;
	private String stStartDate;
	private String stEndDate;
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
	
	private int userNo;
	private String tagContent;
}
