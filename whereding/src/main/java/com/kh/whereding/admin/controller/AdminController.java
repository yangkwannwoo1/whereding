package com.kh.whereding.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.admin.model.service.AdminServiceImpl;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.member.model.vo.Member;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceImpl AService;
	
	@RequestMapping("admin.ad")
	public String DaskBoardForm() {

		return "admin/daskboard";
	}
	
	@RequestMapping("mList.ad")
	public ModelAndView MemberListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			

			int listCount = AService.selectListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Member> list = AService.selectList(pi);
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/memberListForm");

			return mv;
			
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
		public String MemberInsertForm() {

			return "admin/memberDetail";
		}
	   
	   @RequestMapping("notice.ad")
		public String NoticeForm() {

			return "admin/notice";
		}
	   
	   @RequestMapping("qna.ad")
		public String qnaForm() {

			return "admin/qna";
		}
	   
	   @RequestMapping("qnaList.ad")
		public ModelAndView qnaListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			
	
			int listCount = AService.selectqnaCount();
	
			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Qna> list = AService.selectqnaList(pi);
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/qna");
	
			return mv;
				
		}
	    
}
