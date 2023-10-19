package com.kh.whereding.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.whereding.board.model.service.BoardServiceImpl;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	@RequestMapping(value = "service.bo")
	public String intoService() {
		return "board/serviceCenter";
	}
	
	@RequestMapping(value = "notice.bo")
	public String noticeList(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		
		int listCount = bService.selectListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Notice> list = bService.selectList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		return "board/noticeListView";
	}
	
	@RequestMapping(value = "noticeEnroll.bo")
	public String enrollNotice(String board,HttpServletRequest request) {
		
		request.setAttribute("board", board);
		return "board/noticeEnrollForm";
	}
	
	@RequestMapping(value = "noticeDetail.bo")
	public String noticeDetailView() { 
		
		
		return"board/noticeDetailView";
	}
	
	@RequestMapping(value = "qna.bo")
	public String intoQna() {
		return "board/qnaListView";
	}
	@RequestMapping(value = "qnaEnroll.bo")
	public String enrollQna() {
		return "board/qnaEnrollForm";
	}
	
}
