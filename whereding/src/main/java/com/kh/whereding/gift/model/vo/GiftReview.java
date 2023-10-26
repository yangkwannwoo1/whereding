package com.kh.whereding.gift.model.vo;

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
public class GiftReview {

	/*
		GRIV_NO
		GHIS_NO
		GRIV_CONTENT
		GRIV_GRADE
		CREATE_DATE
	 */
	
	private int grivNo;				// 리뷰번호
	private int ghisNo;				// 결제내역번호
	private String grivContent;		// 내용
	private int grivGrade;			// 평점
	private String createDate;		// 작성일
	
	
}
