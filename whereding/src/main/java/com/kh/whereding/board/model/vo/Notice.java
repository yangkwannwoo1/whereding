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
public class Notice {

	private int noticeNo;			// 공지사항 번호
	private int userNo;				// 회원 번호
	private String noticeTitle;		// 제목
	private String noticeContent;	// 내용
	private String noticeDate;		// 작성일
	private String status;			// 삭제여부
	private String noticeWriter;	// 회원 아이디

}
