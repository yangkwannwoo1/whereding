package com.kh.whereding.gift.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	
	//기프트 전체조회임
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
	
	//카테고리 가져오기위한 메서드
	@ResponseBody
	@RequestMapping(value="categorySearch.do",produces = "application/json; charset=UTF-8" )
	public String categorySearch(@RequestParam(value="categoryNo", required = false, defaultValue = "0") int categoryNo, HttpServletRequest request) {
		ArrayList<Gift> gList = gService.categorySearch(categoryNo);
		return new Gson().toJson(gList);
	}
	
	//기프트 등록폼메서드
	@RequestMapping(value="giftRegForm.bo")
	public String giftRegForm(Model model) {
		ArrayList<GiftCategory> categoryList = gService.selectCategoryList();
		model.addAttribute("categoryList" , categoryList);
		return "gift/giftRegForm";
	}
	
	//기프트 등록 메서드 ,사진까지
	@RequestMapping(value="giftEnroll.bo")
	public String giftEnroll(Gift gift, HttpSession session, MultipartFile[] upfile) {
		
		if(upfile != null && upfile.length >0) {
			String savePath=session.getServletContext().getRealPath("/resources/css/assets/img/products/");
			gift.setImgPath("resources/css/assets/img/products");
			for (int i = 0; i < upfile.length; i++) {
                MultipartFile mf = upfile[i];
                
                String newFileName = mf.getOriginalFilename();
                System.out.println(mf);
                
                try {
                	
					mf.transferTo(new File(savePath + newFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
                
                switch (i) {
				case 0: gift.setImg1(newFileName); break;
				case 1: gift.setImg2(newFileName); break;
				case 2: gift.setImg3(newFileName); break;
				default: break;
				}
		}
		
		System.out.println(gift);

		} //파일업로드 끝
		
		gService.insertGift(gift);
		
		return "redirect:giftShop.bo";
	}
	
	
}










