package com.kh.whereding.coupon.model.vo;

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
public class Coupon {
	
	private int couponNo;			// 쿠폰번호
	private String couponContent;	// 쿠폰설명
	private int couponValue;		// 할인금액
	private String startCoupon;		// 쿠폰 시작일
	private String endCoupon;		// 쿠폰 종료일
}
