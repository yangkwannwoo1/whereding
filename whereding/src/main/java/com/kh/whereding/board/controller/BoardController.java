package com.kh.whereding.board.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.whereding.board.model.service.BoardServiceImpl;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;

import oracle.net.aso.b;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	/** 서비스 센터 접속용
	 * @return
	 */
	@RequestMapping(value = "service.bo")
	public String intoService() {
		System.out.println("되냐");
		return "board/serviceCenter";
	}
	
	/** 공지사항 목록
	 * @param currentPage
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "notice.bo")
	public String noticeList(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		
		int listCount = bService.selectNoticeListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Notice> list = bService.selectNoticeList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		return "board/noticeListView";
	}
	
	/** 공지사항 등록 페이지
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "noticeEnroll.bo")
	public String enrollNotice(String board,HttpServletRequest request) {
		System.out.println(board);
		request.setAttribute("board", board);
		return "board/boardEnrollForm";
	}
	
	/** 공지사항 상세보기
	 * @param board
	 * @param bno
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "noticeDetail.bo")
	public String noticeDetailView(String board,int bno,HttpServletRequest request) { 

		Notice n = bService.selectNotice(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("n", n);
		
		return"board/boardDetailView";
	}
	
	@RequestMapping(value = "qnaDetail.bo")
	public String qnaDetailView(String board,int bno,HttpServletRequest request) {
		
		Qna q = bService.selectQna(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("q", q);
		
		return "board/boardDetailView";
	}
	
	/** 공지사항 등록 후
	 * @param n
	 * @return
	 */
	@RequestMapping( value = "insertNotice.bo")
	public String noticeInsert(Notice n,HttpSession session) {
		int result = bService.insertNotice(n);
		
		if(result >0) {
			session.setAttribute("alertMsg", "공지사항이 정상적으로 등록되었습니다.");
			return "redirect:notice.bo";
		}else {
			session.setAttribute("alertMsg", "공지사항 등록에 실패하였습니다.");
			return "redirect:notice.bo";
		}
	}
	
	
	
	/** qna 리스트 페이지
	 * @return
	 */
	@RequestMapping(value = "qna.bo")
	public String intoQna(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		int listCount = bService.selectQnaListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Qna> list = bService.selectQnaList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		return "board/qnaListView";
	}
	
	
	/** qna 작성 페이지
	 * @return
	 */
	@RequestMapping(value = "qnaEnroll.bo")
	public String enrollQna(String board, HttpServletRequest request) {
		request.setAttribute("board", board);
		return "board/boardEnrollForm";
	}
	
	/** qna 등록 후
	 * @param n
	 * @return
	 */
	@RequestMapping( value = "insertqna.bo")
	public String qnaInsert(Qna q,HttpSession session) {
		System.out.println(q);
		
		int result = bService.insertQna(q);
		
		if(result >0) {
			session.setAttribute("alertMsg", "Q&A게시판 정상적으로 등록되었습니다.");
			return "redirect:qna.bo";
		}else {
			session.setAttribute("alertMsg", "Q&A게시판 등록에 실패하였습니다.");
			return "redirect:qna.bo";
		}
	}
	
	/** 공지사항 수정 폼 접근
	 * @return
	 */
	@RequestMapping(value = "noticeEdit.bo")
	public String noticeEditForm(int bno, Model model) {
		Notice n = bService.selectNotice(bno);
		model.addAttribute("n", n);
		System.out.println(n);
		model.addAttribute("board", "공지사항_수정");
		return"board/boardEnrollForm";
	}
	
	/** qna 수정 폼 접근
	 * @return
	 */
	@RequestMapping(value = "qnaEdit.bo")
	public String qnaEditForm(int bno, Model model) {
		Qna q = bService.selectQna(bno);
		model.addAttribute("q", q);
		System.out.println(q);
		model.addAttribute("board", "QnA_수정");
		return"board/boardEnrollForm";
	}
	
	/** 공지사항 수정 후
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping( value = "noticeUpdate.bo", produces = "text/html; charset=utf-8")
	public String noticeUpadet(Notice n, HttpSession session) throws IOException {
		System.out.println(n);
		
		int result = bService.updateNoticeBoard(n);
		
		 if(result > 0) {
	         session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 수정 실패하였습니다.");
	      }
		 return "redirect:noticeDetail.bo?board=" + URLEncoder.encode("공지사항", "UTF-8") + "&bno="+ n.getNoticeNo();

	}
	
	/** qna 수정 후
	 * @return
	 */
	@RequestMapping( value = "qnaUpdate.bo")
	public String qnaUpadet(Qna q, HttpSession session) {
		System.out.println(q);
		
		int result = bService.updateQnaBoard(q);
		
		 if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 수정 실패하였습니다.");
	      }
		return "redirect:qnaDetail.bo?board=QnA&bno=" + q.getQnaNo();
	}
	
	@RequestMapping(value = "noticeDelete.bo")
	public String noticeDelete(int bno, HttpSession session) {

		int result = bService.deleteNotice(bno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 삭제 실패하였습니다.");
	      }
		return"redirect:notice.bo";
	}
	
	
	@RequestMapping(value = "qnaDelete.bo")
	public String qnaDelete(int bno, HttpSession session) {

		int result = bService.deleteQna(bno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 삭제 실패하였습니다.");
	      }
		return"redirect:qna.bo";
	}
	
	
	
	
	
	
	
}
