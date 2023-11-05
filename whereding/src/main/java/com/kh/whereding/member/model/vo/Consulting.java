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
	private String csContent;		// 상담내용
	private String csDate;			// 상담일
	private String startTime;		// 상담시작시간
	private String endTime;			// 상담종료시간
	
	/* 원종추가 */
	private String consultingTime; // 상담시간
	private String unitTime;	   // 단위시간
	private String openTime;	   // 가게 오픈 시간
	private String closeTime;	   // 가게 마감 시간
	
	
	
}
