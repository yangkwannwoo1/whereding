package com.kh.whereding.gift.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.gift.model.service.GiftServiceImpl;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftCategory;

@Controller
public class GiftShopController {

	@Autowired
	private GiftServiceImpl gService;
	
	@RequestMapping("giftShop.bo")
	public ModelAndView giftList(@RequestParam(value="cpage", defaultValue = "1")int currentPage, ModelAndView mav) {
		int listCount = gService.selectListCount();
		System.out.println(listCount);
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
		
		ArrayList<Gift> gList = gService.selectGiftList(pi);
		
		ArrayList<GiftCategory> categoryList = gService.selectCategoryList();
		
		mav.addObject("categoryList" , categoryList);
		mav.addObject("pi", pi).addObject("gList", gList).setViewName("gift/giftShop");
		return mav;
	}
	
	
	
}
