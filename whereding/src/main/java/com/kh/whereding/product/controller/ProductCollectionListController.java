package com.kh.whereding.product.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;
import com.kh.whereding.product.model.service.ProductCollectionServiceImpl;
import com.kh.whereding.product.model.vo.ProductCollection;

@Controller
public class ProductCollectionListController {
	
	@Autowired
	private ProductCollectionServiceImpl cService;

	@RequestMapping(value="selectCollectionList.bo")
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
	
	@RequestMapping("detail.co")
	public ModelAndView selectCollection(String cno, String category, ModelAndView mv) {
		// bno에는 상세조회하고자 하는 해당 게시글 번호 담겨있음
		
//		System.out.println(cno);

//		int result = cService.increaseCount(cno);
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("cno", cno);
		map.put("category", category);
		
//		if(result > 0) {
			ProductCollection c = cService.selectBoard(map);
			System.out.println(c);
			mv.addObject("c", c).setViewName("product/collectionDetailView");
//		}else {
//			mv.addObject("errorMsg","상세조회실패").setViewName("common/errorPage");;
//		}
		
		return mv;
	}
}
