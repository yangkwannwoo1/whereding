package com.kh.whereding.basket.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
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
import com.kh.whereding.basket.model.service.TokenTest2;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftHistory;

@Controller
public class OrderController {

	@Autowired
	private BasketService bService;
	
	
	@RequestMapping(value = "/order.bk", method = RequestMethod.POST)
	public String processOrder(@RequestParam("userNo") int userNo, @RequestParam("selectedProducts") String selectedProductsJson, HttpSession session) throws IOException, IOException {
		System.out.println("order탔다");
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
//	        System.out.println("gtlist : "+gtList);
	        
	        session.setAttribute("gift", gtList);

	        return "basket/orderListView";
	    
	}
	
	
	@RequestMapping(value = "orderOne.bk")
	public String orderOne(@RequestParam("userNo") int userNo,@RequestParam("giftNo") String giftNo,@RequestParam("count") int count, HttpSession session) {
		
		// 번호를 가지고 상품의 정보 조회
		Gift gt = bService.selectbasketOne(giftNo);
		// 상품 정보에 구매할 수량 추가
		 gt.setOrderCount(count);
		 
		 // 받는 페이지에서 for문을 사용하기에 리스트 맨듬
		 List<Gift> gtList = new ArrayList();
		
		 // 리스트에 정보 있는 기프트 넣어
		gtList.add(gt);
		
		session.setAttribute("gift", gtList);
		
		 return "basket/orderListView";
	}
	
	@RequestMapping(value = "orderCompleted.bk")
	public String orderCompleted(@RequestParam("userNo") int userNo,@RequestParam("imp_uid") String imp_uid, @RequestParam("giftNo") String[] giftNo, @RequestParam("orderCount") int[] orderCount, @RequestParam("giftPrice") int[] giftPrice, HttpSession session) throws IOException, IOException {
		
//		 System.out.println("imp_uid: " + imp_uid);
		 int result =1;
		    // giftNo와 orderCount 배열의 내용을 출력
		    for (int i = 0; i < giftNo.length; i++) {
		    	Gift gt = new Gift();
		    	gt.setGiftNo(giftNo[i]);
		    	gt.setUserNo(userNo);
		    	gt.setImpUid(imp_uid);
		    	gt.setGiftPrice(giftPrice[i]);
		    	gt.setOrderCount(orderCount[i]);
		    	int result1 = bService.deleteOrderBasket(gt);
		    	int result2 = bService.insertGiftHistiry(gt);
		    	int result3 = bService.downDateGiftCount(gt);
		    	result += result * result1 * result2*result3;
//		        System.out.println("giftNo[" + i + "]: " + giftNo[i]);
//		        System.out.println("orderCount[" + i + "]: " + orderCount[i]);
		    }
		    if(result >0) {
		    	session.setAttribute("alertMsg", "주문이 정상적으로 완료되었습니다.");
		    }else {
		    	session.setAttribute("alertMsg", "제품 주문의 실패하였습니다.	");
		    }
		    
		return "redirect:giftOredrList.me?userNo="+userNo;
		
	}
	
	@RequestMapping(value = "cancellation.bk")
	public String cancellation(int userNo,GiftHistory g, HttpSession session) throws IOException, ParseException {
		GiftHistory gh = bService.selectGift(g);
		
		String ImpUid = gh.getImpUid();
		
		if(ImpUid != null) {
			String access_token = TokenTest2.Token();
			
			int result = bService.refund(access_token, ImpUid);
			
			if(result >0) { // 아직 재고 안돌려줌
				int result1 = bService.deleteGiftHisroty(gh);
				int result2 = bService.updateGiftCount(gh);
				if((result1 * result2 )>0) {
					
					session.setAttribute("alertMsg", "주문 취소되었습니다.");
					
				}else {
					session.setAttribute("alertMsg", "주문 취소는 되었으나 기록과 재고를 복원하지 않았습니다.");
					
				}
		    }else {
		    	session.setAttribute("alertMsg", "주문 취소에 실패하였습니다.");
		    }
		}else {
			session.setAttribute("alertMsg", "카드결제가 아님 허나 일단 취소는 해드림");
			int result1 = bService.deleteGiftHisroty(gh);
		}
		
		return"redirect:giftOredrList.me?userNo="+userNo;
	}
	
	
	
	
}
