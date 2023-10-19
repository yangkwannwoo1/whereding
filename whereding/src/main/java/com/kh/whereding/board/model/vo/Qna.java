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
public class Qna {

	private int qnaNo;
	private int usrNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaAnswer;
	private String qnaDate;
}
