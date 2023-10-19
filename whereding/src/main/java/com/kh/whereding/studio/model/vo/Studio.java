package com.kh.whereding.studio.model.vo;

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
}
