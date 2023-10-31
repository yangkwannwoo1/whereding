package com.kh.whereding.basket.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.whereding.basket.model.service.BasketService;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.gift.model.vo.Gift;

@Controller
public class OrderController {

	@Autowired
	private BasketService bService;
	
	
	@RequestMapping(value = "/order.bk", method = RequestMethod.POST)
	public String processOrder(@RequestParam("userNo") int userNo, @RequestParam("selectedProducts") String selectedProductsJson, HttpSession session) throws IOException, IOException {
	  
	        // ObjectMapper를 사용하여 JSON 문자열을 Gift 객체 배열로 파싱
	        ObjectMapper objectMapper = new ObjectMapper();
	        Gift[] selectedProducts = objectMapper.readValue(selectedProductsJson, Gift[].class);

	        List<Gift> gtList = new ArrayList();
	        
	        // 이제 selectedProducts 배열에 선택한 제품 정보가 들어 있음
	        // 배열의 각 요소는 선택한 제품을 나타냄
	        for (Gift gift : selectedProducts) {
	            // gift 객체를 사용하여 필요한 작업 수행
	            String giftNo = gift.getGiftNo();
	            int orderCount = gift.getOrderCount();
	           Gift gt = bService.selectbasketOne(giftNo);
	           gt.setOrderCount(orderCount);
	           gtList.add(gt);
	        }
	        System.out.println("gtlist : "+gtList);
	        
	        session.setAttribute("gift", gtList);

	        return "basket/orderListView";
	    
	}
	
	@RequestMapping(value = "orderCompleted.bk")
	public String orderCompleted(@RequestParam("userNo") int userNo, @RequestParam("giftData") String giftData, HttpSession session) {
		return"";
	}

	
}
