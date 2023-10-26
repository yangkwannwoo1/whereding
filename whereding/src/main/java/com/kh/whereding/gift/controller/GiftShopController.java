package com.kh.whereding.gift.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	public String giftList(@RequestParam(value="cpage", defaultValue = "1") int currentPage,
	                             @RequestParam(value="categoryNo", required = false, defaultValue = "0") int categoryNo, Model model) {
	    int listCount = gService.selectListCount();
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
		
		ArrayList<Gift> gList = gService.selectGiftList(pi,categoryNo);
		ArrayList<GiftCategory> categoryList = gService.selectCategoryList();
		model.addAttribute("categoryList" , categoryList); 
		model.addAttribute("pi", pi);
		model.addAttribute("gList", gList);
		return "gift/giftShop";
			
	}
	
	@ResponseBody
	@RequestMapping(value="categorySearch.do",produces = "application/json; charset=UTF-8" )
	public String categorySearch(@RequestParam(value="categoryNo", required = false, defaultValue = "0") int categoryNo, HttpServletRequest request) {
		ArrayList<Gift> gList = gService.categorySearch(categoryNo);
		return new Gson().toJson(gList);
	}
	
	@RequestMapping(value="giftRegForm.bo")
	public String giftRegForm(Model model) {
		ArrayList<GiftCategory> categoryList = gService.selectCategoryList();
		model.addAttribute("categoryList" , categoryList);
		return "gift/giftRegForm";
	}
	
	@ResponseBody
	@RequestMapping(value="giftEnroll.bo")
	public String giftEnroll(Gift gift, HttpServletRequest request) {
		String name = request.getParameter("giftName");
		String con = request.getParameter("giftContent");
		System.out.println(name + "네임" + con);
		System.out.println(gift);
		return null;
	}
	
	
}










