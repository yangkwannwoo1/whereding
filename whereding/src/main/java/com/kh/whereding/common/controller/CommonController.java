package com.kh.whereding.common.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.board.model.service.BoardService;
import com.kh.whereding.board.model.service.BoardServiceImpl;
import com.kh.whereding.common.model.service.CommonServiceImpl;
import com.kh.whereding.common.model.vo.Great;

@Controller
public class CommonController {
	
	@Autowired
	private CommonServiceImpl cService;
	
	@ResponseBody
	@RequestMapping("glike.bo")
	public String ajaxLike(Great g, String status) {

		int checkLike = cService.checkLike(g);			
		int result = 0;
		if(checkLike > 0) {
			result = cService.deleteLike(g);			
		}else {
			result = cService.insertLike(g);			
		}
		return result > 0 ? "NNNNY": "NNNNN";
	}
	
	@ResponseBody
	@RequestMapping("gbasket.bo")
	public String ajaxBasket(Great g, String status) {
		
		int checkLike = cService.checkLike(g);			
		int result = 0;
		if(checkLike > 0) {
			result = cService.deleteLike(g);			
		}else {
			result = cService.insertLike(g);			
		}
		return result > 0 ? "NNNNY": "NNNNN";
	}
}
