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
public class GiftHistory {

	/*
	 *  GHIS_NO
		GIFT_NO
		USER_NO
		BUYMETHOD_NO
		PAYMENT_NO
		PIECE
		CREATE_DATE
		GIFT_NAME
		GIFT_CONTENT
		IMG_1
    	IMG_PATH
    	GRIV_NO
	 */
	
	private int ghisNo;			// 결제내역번호
	private String guftNo;		// 답례품 제품번호
	private int userNo;			// 회원번호
	private int butMethodNo;	// 구매방식번호		
	private int paymentNo;		// 결제번호
	private int piece;			// 갯수
	private String createDate;	// 결제일자
	private String giftName;	// 제품이름
	private String giftContent; // 제품 설명
	private String img1; 		// 1번 이미지
	private String imgPath; 	// 이미지경로
	private int grivNo;		// 리뷰 작성여부용 리뷰 번호
	
}
