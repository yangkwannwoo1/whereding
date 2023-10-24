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
	private String phone;
	private String address;
	private String unitTime;
	private String weekOpen;
	private String tagContent;
	private String img1;
	private String img2;
	private String img3;
	private String tag;
	
}
