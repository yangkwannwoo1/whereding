package com.kh.whereding.board.model.vo;

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
public class CollaboRation {
/*
CP_NO
USER_NO
CP_TITLE
CP_CONTENT
CP_DATE
 */
	private int cpNo;			// 신청글번호
	private int userNo;			// 회원번호
	private String userName;
	private String cpTitle;		// 제목
	private String cpContent;	// 내용
	private String cpDate;		// 작성일
	private String userId;
}
