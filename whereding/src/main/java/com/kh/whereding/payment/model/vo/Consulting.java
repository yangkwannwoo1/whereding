package com.kh.whereding.payment.model.vo;

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
	
	private int csNO;			// 상담예약번호
	private String productNo;	// 제품번호
	private int userNo;			// 회원번호
	private String csContent;	// 상담내용
	private String csDate;		// 상담일
	private String startTime;	// 상담시작시간
	private String endTime;		// 상담종료시간
	
}
