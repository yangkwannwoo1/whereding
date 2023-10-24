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
public class GiftReviewImg {

	/*
	 	REVIEW_NO
		G_ORIGIN_NAME
		G_CHANGE_NAME
		G_FILE_PATH
	 */
	private int reviewNo;			// 리뷰번호
	private String originName;		// 원본명
	private String changeName;		// 수정명
	private String filePath;		// 이미지경로
	
	
}
