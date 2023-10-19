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
	
}
