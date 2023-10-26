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
public class Review {

/*
		REVIEW_NO
		CS_NO
		RV_CONTENT
		RV_SCORE
		CREATE_DATE
 */
	private int reviewNo;		// 리뷰번호
	private int csNo;			// 상담예약번호
	private String content;		// 내용
	private int score;			// 평점
	private String createDate;	// 작성일
}
