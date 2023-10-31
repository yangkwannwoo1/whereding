package com.kh.whereding.member.model.vo;

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
public class Consulting {
	
	/*
	    CS_NO
		PRODUCT_NO
		USER_NO
		CS_CONTENT
		CS_DATE
		START_TIME
		END_TIME
	 */
	private int csNo;				// 상담예약 번호
	private String productNo;		// 제품번호
	private int userNo;				// 회원
	private String scContent;		// 상담내용
	private String csDate;			// 상담일
	private String startTime;		// 상담시작시간
	private String endTime;			// 상담종료시간
	
	
	
}
