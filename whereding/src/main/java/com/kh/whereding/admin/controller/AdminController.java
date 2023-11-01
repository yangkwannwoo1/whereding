package com.kh.whereding.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.admin.model.service.AdminServiceImpl;
import com.kh.whereding.board.model.vo.CollaboRation;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.member.model.vo.Member;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceImpl AService;

	
	@RequestMapping("admin.ad")
	public String DaskBoardForm(Model model) {

		// 총 회원수
		int count = AService.selectOneCount();

		model.addAttribute("selectOneCount", count);
		
		// 총 판매량 
		int count1 = AService.selectGiftCount();

		model.addAttribute("selectGiftCount", count1);
		
		 // 전체 방문자 수
		int selectvisitCount = AService.selectVisitCount();
		
		model.addAttribute("selectvisitCount", selectvisitCount);
		return "/admin/daskboard";
		}

	

	@RequestMapping("mList.ad")
	public ModelAndView MemberListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			

			int listCount = AService.selectListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
			
			ArrayList<Member> list = AService.selectList(pi);
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/memberListForm");

			return mv;
	}
	
	
	// 회원탈퇴
	@RequestMapping(value = "mdelete.ad")
	public String deleteMember(String userNo, HttpSession session, Model model) {
		int result = AService.deleteMember(userNo);
		if(result > 0){
			session.setAttribute("alertMsg", "성공적으로 회원이 탈퇴되었습니다.");
			return "redirect:mList.ad";
			
		}else { 
			model.addAttribute("errorMsg", "회원정보 변경 실패");
			return "common/errorPage";
		}
	}
	
	//회원 목록 다운로드 (excel)
	   @RequestMapping("list.ad")
	    public void memberListDownload(HttpServletResponse response) throws IOException {
	      //Workbook wb = new HSSFWorkbook();
	        Workbook wb = new XSSFWorkbook();
	        Sheet sheet = wb.createSheet("첫번째 시트");
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;

	        // Header
	        row = sheet.createRow(rowNum++);
	        cell = row.createCell(0);
	        cell.setCellValue("No");
	        cell = row.createCell(1);
	        cell.setCellValue("이름");
	        cell = row.createCell(2);
	        cell.setCellValue("아이디");
	        cell = row.createCell(3);
	        cell.setCellValue("회원등급");
	        cell = row.createCell(4);
	        cell.setCellValue("생년월일");
	        cell = row.createCell(5);
	        cell.setCellValue("성별");
	        cell = row.createCell(6);
	        cell.setCellValue("전화번호");
	        cell = row.createCell(7);
	        cell.setCellValue("이메일");
	        
	        //엑셀다운로드용 메서드
	        ArrayList<Member> list = AService.selectMemberList();
	        
	        // Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            cell = row.createCell(0);
	            cell.setCellValue(list.get(i).getUserNo());
	            cell = row.createCell(1);
	            cell.setCellValue(list.get(i).getUserName());
	            cell = row.createCell(2);
	            cell.setCellValue(list.get(i).getUserId());
	            cell = row.createCell(3);
	            cell.setCellValue(list.get(i).getGradeNo());
	            cell = row.createCell(4);
	            cell.setCellValue(list.get(i).getBirthDay());
	            cell = row.createCell(5);
	            cell.setCellValue(list.get(i).getGender());
	            cell = row.createCell(6);
	            cell.setCellValue(list.get(i).getPhone());
	            cell = row.createCell(7);
	            cell.setCellValue(list.get(i).getEmail());
	        }

	        // 컨텐츠 타입과 파일명 지정
	        response.setContentType("ms-vnd/excel");
	        //response.setHeader("Content-Disposition", "attachment;filename=example.xls");
	        response.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        // Excel File Output
	        wb.write(response.getOutputStream());
	        wb.close();
	    }
	   
	   @RequestMapping("mdetail.ad")
		public ModelAndView MemberInsertForm(String userNo, ModelAndView mav) {
		   	Member m = AService.selectMember(userNo);
		   	mav.addObject("m",m).setViewName("admin/memberDetail");
			return mav;
		}
 
	   /** qna 리스트 페이지
		 * @return
		 */
		@RequestMapping(value = "qna.ad")
		public String selectqnaListForm(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
			int listCount = AService.adminQnaCount();
			
			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
			
			ArrayList<Qna> qnalist = AService.adminQnaList(pi);
			
			request.setAttribute("pi", pi);
			request.setAttribute("qnalist", qnalist);
			return "admin/qna";
		}
		
		//공지사항 리스트 페이지
		@RequestMapping("notice.ad")
		public ModelAndView AdminNoticeForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
				ModelAndView mv)  {
				

				int listCount = AService.adminNoticeCount();

				PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
				
				ArrayList<Notice> NoticeList = AService.adminnoticeList(pi);
				mv.addObject("pi", pi).addObject("NoticeList", NoticeList).setViewName("admin/notice");

				return mv;
				
		}
		// 답례품 판매목록
		@RequestMapping("giftsale.ad")
		public String giftListForm(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
			int listCount = AService.adminGiftCount();
			
			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
			
			ArrayList<Gift> gList = AService.adminGiftList(pi);
			
			request.setAttribute("pi", pi);
			request.setAttribute("gList", gList);
			return "admin/gift";
		}
		
		//회원상세페이지
		@RequestMapping("/detail.ad")
		public String detail(int id, Model model) {
			
			Member m = AService.detailMember(id);
			
			model.addAttribute("m", m);
			
			return "admin/memberDetail";
		}

		// 회원수정
		@RequestMapping("update.ad")
		public String updateMember(Member m, Model model, HttpSession session, String mno, String igrade) {
			int result = AService.updateMember(m);
			
			if(result > 0){
				session.setAttribute("alertMsg", "성공적으로 회원정보가 수정되었습니다.");
				return "redirect:/mdetail.ad?userNo=" + m.getUserNo();
				
			}else { 
				
				model.addAttribute("errorMsg", "회원정보 변경 실패");
				return "common/errorPage";
			}
		}
		
		// 비밀번호 변경
		@RequestMapping("change.pw")
		public String updatePassword(String newpassword, String userNo, Model model, HttpSession session) {
			System.out.println(newpassword);
			System.out.println(userNo);
			BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
			String encPwd = bcryptPasswordEncoder.encode(newpassword);
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("userNo", userNo);
			map.put("encPwd", encPwd);
			
			System.out.println(map);
			int result = AService.updatePassword(map);
			
			if(result > 0){
				session.setAttribute("alertMsg", "성공적으로 회원정보가 수정되었습니다.");
				return "redirect:/mdetail.ad?userNo=" + userNo;
				
			}else { 
				
				model.addAttribute("errorMsg", "회원정보 변경 실패");
				return "common/errorPage";
			}
		}
		
}
			
		
		@RequestMapping("delete.ad")
		public String deleteMember(String userId, HttpSession session, Model model) {
			
				int result = AService.deleteMember(userId);
				
					session.removeAttribute("loginMember");
					
					session.setAttribute("alertMsg", "성공적으로 탈퇴");
					
					return "redirect:/";
					
		}
		
		//협업업체 신청목록
		@RequestMapping("collabo.ad")
		public String collaboList(@RequestParam(value="cpage", defaultValue = "1" ) int currentPage, Model model) {
			int listCount = AService.selectListCount();
			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
			ArrayList<CollaboRation> collList = AService.selectCollaboList(pi);
			model.addAttribute("collList", collList);
			model.addAttribute("pi", pi);
			return "admin/collabo";
		}
		
		@RequestMapping("collaboDetail.ad")
		public String collaboDetail(@RequestParam("cpNo")int cpNo, Model model) {
			CollaboRation coll = AService.selectCollDetail(cpNo);
			model.addAttribute("coll", coll);
			return "admin/collaborationDetail";
		}
		
		@RequestMapping("collaboAccept.ad")
		public String collaboAccept(@RequestParam("userNo") int userNo, HttpSession session) {
			int result = AService.collaboAccept(userNo);
			
			if(result>0) {
				session.setAttribute("alertMsg", "승인하였습니다.");
			}else {
				session.setAttribute("alertMsg", "승인 실패되었습니다.");
			}
			
			return "redirect:/collabo.ad";
		}
		
		@RequestMapping("collaboDenied.ad")
		public String collaboDenied(@RequestParam("cpNo") int cpNo, HttpSession session) {
			int result = AService.collaboDenied(cpNo);
			if(result>0) {
				session.setAttribute("alertMsg", "거절 하였습니다.");
			}else {
				session.setAttribute("alertMsg", "거절 실패되었습니다.");
			}
			return "redirect:/collabo.ad";
		}
		
}
		





