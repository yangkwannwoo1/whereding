package com.kh.whereding.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.product.model.service.StudioServiceImpl;
import com.kh.whereding.product.model.vo.Studio;

@Controller
public class StudioListController {

	@Autowired
	private StudioServiceImpl sService;

	
	@RequestMapping(value="studio.bo")
	public ModelAndView selectStudioList(@RequestParam(value="cpage", defaultValue = "1") int currentPage, ModelAndView mav) {
		int listCount = sService.selectListCount();
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
		
		ArrayList<Studio> slist = sService.selectStudioList(pi);
		
		mav.addObject("pi", pi).addObject("slist", slist).setViewName("product/studioListView");;
		return mav;
	}

}
