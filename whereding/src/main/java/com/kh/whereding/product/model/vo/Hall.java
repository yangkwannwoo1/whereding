package com.kh.whereding.product.model.vo;

import org.springframework.web.multipart.MultipartFile;

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
public class Hall {
/*
H_CODE
H_ENTERPRISE
H_NAME
H_DETAIL
H_SEAT
H_RENTAL
H_RESTAURANT_SEAT
H_MEAL
H_START_TIME
H_END_TIME
H_PHONE
H_ADDRESS
H_UNIT_TIME
H_WEEK_OPEN
 */
	private String code;		// 홀 제품번호
	private String enterprise;	// 업체이름
	private String name;		// 홀이름
	private String detail;		// 홀상세내용
	private int seat;			// 홀좌석수
	private int rental;			// 홀대관비
	private int hallSeat;		// 식당좌석수
	private int meal;			// 식대
	private String startTime;	// 영업시작타임
	private String endTime;		// 영업종료타임
	private String phone;		// 연락처
	private String address;		// 주소
	private String unitTime;	// 예약단위		
	private String weekOpen;	// 주말상담여부
	private String tagContent;	
	private String img1;
	private String img2;
	private String img3;
	private String tag;
	private String status;
	
	private String csDate;
	private String csStartTime;
	private int reviewNo;
	private int csNo;
	private String imgPath;
	private int greatCount;
	private int userNo;
	
}
