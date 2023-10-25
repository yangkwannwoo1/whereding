package com.kh.whereding.product.controller;

import java.util.ArrayList;

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
}
