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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.product.model.service.ProductCollectionServiceImpl;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.ProductCollectionReview;

@Controller
public class ProductCollectionController {
	
	@Autowired
	private ProductCollectionServiceImpl cService;

	@RequestMapping(value="cList.bo")
	public ModelAndView selectStudioList(@RequestParam(value="cpage", defaultValue = "1") int currentPage, String category, ModelAndView mv) {
		
		int listCount = cService.selectListCount(category);
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
		
		ArrayList<ProductCollection> clist = cService.selectCollectionList(pi, category);
		
		mv.addObject("pi",pi).addObject("clist",clist).addObject("category",category).setViewName("product/collectionListView");
		
		for(ProductCollection p : clist) {
			
			System.out.println(p);
		}
		return mv;
	}
	
	@RequestMapping("cDetail.bo")
	public ModelAndView selectCollection(String cno, String category, ModelAndView mv) {
		// bno에는 상세조회하고자 하는 해당 게시글 번호 담겨있음
		
//		System.out.println(cno);

//		int result = cService.increaseCount(cno);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("cno", cno);
		map.put("category", category);
		
//		if(result > 0) {
			ProductCollection c = cService.selectBoard(map);
			c.setCategory(category);
			System.out.println(c);
			mv.addObject("c", c).setViewName("product/collectionDetailView");
//		}else {
//			mv.addObject("errorMsg","상세조회실패").setViewName("common/errorPage");;
//		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "crList.bo", produces = "application/json; charset=utf-8")
	public String ajaxcReviewList(String cno) {
		ArrayList<ProductCollectionReview> list = cService.selectReviewList(cno);
		return new Gson().toJson(list);
	}
	
	@RequestMapping("cEnrollForm.bo")
	public ModelAndView CollectionEnrollForm(String category, ModelAndView mv) {
		// /WEB-INF/views/board/boardEnrollForm.jsp
		System.out.println(category);
		mv.addObject("category", category).setViewName("product/collectionEnrollForm");
		return mv;
	}
	
	@RequestMapping("cInsert.bo")
	public String insertCollection(ProductCollection c, MultipartFile[] upfile, HttpSession session, Model model) {
		
		System.out.println(c);
		// 매장 등록
		int result1 = cService.insertProductCollection(c);
		
//		// 해시태그 등록
		int result2 = 1;
		if(!c.getTag().equals("")) {
			HashTag t = new HashTag();
			t.setCategory(c.getCategory());
			t.setProductNo(c.getCode());
			t.setTagContent(c.getTag());
			System.out.println("HASHTAG : " + t);
			result2 = cService.insertTag(t);
		}
		
		// 파일 등록
//		ArrayList<Attachment> list = new ArrayList<Attachment>();
		Attachment at = new Attachment();
		
		int result3 = 1;
		for(int i = 0; i < upfile.length; i++) {
			if(upfile[i] != null && !upfile[i].isEmpty()) {
				String originName = saveFile(upfile[i], session);
				
				at.setCategory(c.getCategory());
				at.setImgPath("resources/css/assets/img/products/");
				at.setProductNo(c.getCode());
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
			result3 = cService.insertFile(at);
		}

		if (result1 * result2 * result3 > 0) { 
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			return "redirect:cList.bo?category=" + c.getCategory();

		} else { 
			model.addAttribute("errorMsg", "게시글 등록이 실패했습니다.");
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
	
	@RequestMapping(value = "deleteCollection.bo")
	public String noticeDelete(String cno, String category, HttpSession session) {
//		System.out.println(cno);
//		System.out.println(category);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("cno", cno);
		map.put("category", category);
		
		int result = cService.deleteCollection(map);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "글 삭제 실패하였습니다.");
	      }
		return "redirect:cList.bo?category=" + category;
//		return "#";
	}
	
}
