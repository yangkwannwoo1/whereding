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
public class Makeup {
/*
M_CODE
M_ENTERPRISE
M_DETAIL
M_PRICE
M_START_DATE
M_END_DATE
M_PHONE
M_ADDRESS
M_UNIT_TIME
M_WEEK_OPEN
 */
	private String maCode;
	private String maEnterprise;
	private String maDetail;
	private int maPrice;
	private String maStartDate;
	private String maEndDate;
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
	private int greatCount;
	private int userNo;
	private String tagContent;

}
