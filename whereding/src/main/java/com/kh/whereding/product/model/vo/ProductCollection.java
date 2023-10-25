package com.kh.whereding.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ProductCollection {
	
	private String code;
	private String enterprise;
	private String detail;
    private int price;
    private String startDate;
	private String endDate;
	private String phone;
	private String address; 
	private int unitTime;
	private String weekOpen;
	private String status;
	private String img1;
	private String img2;
	private String img3;
	private String imgPath;
	private String tagContent;
}
