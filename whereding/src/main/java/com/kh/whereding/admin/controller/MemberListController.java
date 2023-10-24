package com.kh.whereding.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.admin.model.service.AdminServiceImpl;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.member.model.vo.Member;
import com.kh.whereding.product.model.service.HallServiceImpl;
import com.kh.whereding.product.model.vo.Hall;

@Controller
public class MemberListController {
	
	@Autowired
	private AdminServiceImpl AService;
	
	@RequestMapping("mList.ad")
	public ModelAndView MemberListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			

			int listCount = AService.selectListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Member> list = AService.selectList(pi);
			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/memberListForm");

			return mv;
			
	}
}
