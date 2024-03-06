package com.kh.whereding.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.product.model.service.HallServiceImpl;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.ProductCollectionReview;

@Controller
public class HallController {
	
	@Autowired
	private HallServiceImpl HService;
	
	@RequestMapping("hList.pr")
	public ModelAndView HallListForm(@RequestParam(value = "cpage", defaultValue = "1") int currentPage,
			ModelAndView mv)  {
			
			int listCount = HService.selectListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 3);
			
			ArrayList<Hall> list = HService.selectList(pi);
			System.out.println(list);
			mv.addObject("pi", pi).addObject("list", list).setViewName("product/hallListView");
			return mv;
	}
	
	@RequestMapping("enrollForm.pr")
	public String enrollForm() {

		return "product/hallEnrollForm";
	}
	
	@RequestMapping("insert.pr")
	public String insertBoard(Hall h, MultipartFile[] upfile, HttpSession session, Model model) {
		
		// 홀 등록
		int result1 = HService.insertHall(h);
		
		// 홀 해시태그 등록
		int result2 = 1;
		if(!h.getTag().equals("")) {
			HashTag t = new HashTag();
			t.setProductNo(h.getCode());
			t.setTagContent(h.getTag());
//			System.out.println("HASHTAG : " + t);
			result2 = HService.insertTag(t);
		}
		
		// 파일 등록
//		ArrayList<Attachment> list = new ArrayList<Attachment>();
		Attachment at = new Attachment();
		
		int result3 = 1;
		for(int i = 0; i < upfile.length; i++) {
			if(upfile[i] != null && !upfile[i].isEmpty()) {
				String originName = saveFile(upfile[i], session);
				
				
				at.setImgPath("resources/css/assets/img/products/");
				at.setProductNo(h.getCode());
				at.setOriginName(originName);
				if(i==0) {
					at.setImg1(originName);
				}else if (i==1) {
					at.setImg2(originName);					
				}else {
					at.setImg3(originName);					
				}
//				switch (i) {
//				case 2: at.setImg3(h.getImg3());
//				case 1: at.setImg2(h.getImg2());
//				default: at.setImg1(h.getImg1());
//					break;
//				}
//				list.add(at);
			}
		}
		if(upfile.length > 0) {
//			result3 = HService.insertFile(list);
			result3 = HService.insertFile(at);
		}

		if (result1 * result2 * result3 > 0) { 
			session.setAttribute("alertMsg", "성공적으로 게시글 등록이 되었쏘.");
			return "redirect:hList.pr";

		} else { 
			model.addAttribute("errorMsg", "게시글 등록이 실패되었소.");
			return "common/errorPage";
		}
	}
	
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename();	// "flower.png"
		
		// "20231004154607" (년 월 일 시 분 초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());	// "20231004121530"
		int ranNum = (int)(Math.random() * 90000 + 1000);	// 21318 (5자리 랜덤값)
		
		String ext = originName.substring(originName.lastIndexOf("."));	// ".png"
		
		String changeName = currentTime + ranNum + ext; // "2023100412153021318.png"
		
		// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
		String savePath = session.getServletContext().getRealPath("/resources/css/assets/img/products/");
		
			try {
				upfile.transferTo(new File(savePath + originName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return originName;
	}
	
	
	@RequestMapping("hDetail.bo")
	public ModelAndView selectCollection(String hno, ModelAndView mv) {
		
			Hall h = HService.selectBoard(hno);
			System.out.println(h);
			mv.addObject("h", h).setViewName("product/hallDetailView");
		return mv;
	}
	
	@RequestMapping(value = "deleteHall.bo")
	public String noticeDelete(String hno, HttpSession session) {

		System.out.println(hno);
		int result = HService.deletehall(hno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "글 삭제 실패하였습니다.");
	      }
		return "redirect:hList.pr";
	}
	
	@ResponseBody
	@RequestMapping(value = "hrList.bo", produces = "application/json; charset=utf-8")
	public String ajaxcReviewList(String hno) {
		ArrayList<ProductCollectionReview> list = HService.selectReviewList(hno);
		return new Gson().toJson(list);
	}
	
}


