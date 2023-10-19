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
public class EventBoard {

	private int eventNo;			// 이벤트게시판 번호
	private int couponNo;			// 쿠폰번호
	private String eventTitle;		// 제목
	private String eventContente;	// 내용
	private String createDate;		// 작성일
	private String startEvent;		// 이벤트 시작일
	private String endEvent;		// 이벤트 종료일			
	
}
