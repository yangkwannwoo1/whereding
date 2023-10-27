package com.kh.whereding.board.model.service;

import java.util.ArrayList;

import com.kh.whereding.board.model.vo.CollaboRation;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;

public interface BoardService {

	// 1. 게시판 리스트 페이지 서비스(페이징 처리)
		int selectNoticeListCount();
		int selectQnaListCount();
		int selectCollaboListCount();
		ArrayList<Notice> selectNoticeList(PageInfo pi);
		ArrayList<Qna> selectQnaList(PageInfo pi);
		ArrayList<CollaboRation> selectCollaboList(PageInfo pi);

	// 2. 게시글 작성하기 서비스
	int insertNotice(Notice n);
	int insertQna(Qna q);
	int insertCollabo(CollaboRation cr);
		
	// 3. 게시글 상세조회용 서비스
	Notice selectNotice(int boardNo);
	Qna selectQna(int boardNo);
	CollaboRation selectCollabo(int boardNo);
	
	
	// 4. 게시글 삭제용 서비스
	int deleteNotice(int boardNo);
	int deleteQna(int boardNo);
	int deleteCollabo(int boardNo);
	
	// 5. 게시글 수정용 서비스
	int updateNoticeBoard(Notice n);
	int updateQnaBoard(Qna q);
	int updateCollaboBoard(CollaboRation cr);
	// qna 답변 받는 서비스
	int updateQnaAnswer(Qna q);
}


