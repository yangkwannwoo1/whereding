package com.kh.whereding.board.model.service;

import java.util.ArrayList;

import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.common.model.vo.PageInfo;

public interface BoardService {

	// 1. 게시판 리스트 페이지 서비스(페이징 처리)
		int selectListCount();
		ArrayList<Notice> selectList(PageInfo pi);
}
