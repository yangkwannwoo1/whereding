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

	private int noticeNo;
	private int userNo;
	private String noticeTitle;
	private String noticeContent;
	private int count;
	private String noticeDate;
	private String status;
}
