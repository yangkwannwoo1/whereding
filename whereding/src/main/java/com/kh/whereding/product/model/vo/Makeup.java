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

}
