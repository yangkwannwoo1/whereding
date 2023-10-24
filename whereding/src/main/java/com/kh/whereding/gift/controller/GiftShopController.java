package com.kh.whereding.gift.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.gift.model.service.GiftServiceImpl;
import com.kh.whereding.gift.model.vo.Gift;

@Controller
public class GiftShopController {

	@Autowired
	private GiftServiceImpl gService;
	
	@RequestMapping("giftShop.bo")
	public String giftList(Model model) {
//		int listCount = bService.selectListCount();
		
		PageInfo pi = Pagenation.getPageInfo(5, 10, 10, 5);
		
		ArrayList<Gift> gList = gService.selectGiftList(pi);
		System.out.println(gList);
		model.addAttribute("gList", gList);
		return "gift/giftShop";
	}
	
}
