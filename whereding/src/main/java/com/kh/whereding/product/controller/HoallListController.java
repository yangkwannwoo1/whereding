package com.kh.whereding.product.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.product.model.service.HallServiceImpl;
import com.kh.whereding.product.model.vo.Hall;

@Controller
public class HoallListController {
	
	@Autowired
	private HallServiceImpl HService;
	
	@RequestMapping("hList.pr")
	public ModelAndView HallListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			

			int listCount = HService.selectListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
			
			ArrayList<Hall> list = HService.selectList(pi);
			mv.addObject("pi", pi).addObject("list", list).setViewName("product/hallListView");
			System.out.println(pi);

			return mv;
			
	}
	
	@RequestMapping("enrollForm.pr")
	public String enrollForm() {

		return "product/hallinsert";
	}
	
	@RequestMapping("insert.pr")
	public String insertBoard(Hall h, HttpSession session, Model model) {

		int result = HService.insertHall(h);
		
		if (result > 0) { 
			session.setAttribute("alertMsg", "성공적으로 게시글 등록이 되었쏘.");
			return "redirect:hList.pr";

		} else { 

			model.addAttribute("errorMsg", "게시글 등록이 실패되었소.");
			return "common/errorPage";
		}
	}
}


