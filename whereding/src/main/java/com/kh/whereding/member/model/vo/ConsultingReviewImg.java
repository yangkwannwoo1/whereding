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
public class ConsultingReviewImg {
	
	/*
		REVIEW_NO
		CS_ORIGIN_NAME
		CS_CHANGE_NAME
		CS_FILE_PATH
	 */
	private int reviewNo;			// 리뷰번호
	private String csOriginName;	// 원본파일명		
	private String csChangeName;	// 수정파일명
	private String csFilePath;		// 이미지경로
	
}
