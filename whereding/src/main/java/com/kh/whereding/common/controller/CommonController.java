package com.kh.whereding.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.service.CommonServiceImpl;
import com.kh.whereding.common.model.vo.Great;

@Controller
public class CommonController {
	
	@Autowired
	private CommonServiceImpl cService;
	
	@ResponseBody
	@RequestMapping("chklike.bo")
	public String ajaxchkLike(Great g) {
		int checkLike = cService.checkLike(g);	// 있으면 1 없으면 0	
		return checkLike > 0 ? "NNNYY" : "NNNNN";
	}
	
	@ResponseBody
	@RequestMapping("count.gr")
	public int ajaxchcountLike(Great g) {
		System.out.println(g);
		int countLike = cService.countLike(g);	// 있으면 1 없으면 0	
		return countLike;
	}
	
	@ResponseBody
	@RequestMapping("glike.bo")
	public int ajaxLike(Great g) {
		System.out.println(g);
		int checkLike = cService.checkLike(g);	
		int result = 0;
		System.out.println(checkLike);
		if(checkLike > 0) {
			result = cService.deleteLike(g);			
		}else {
			result = cService.insertLike(g);			
		}
		int countLike = 0;
		if(result>0) {
			countLike = cService.countLike(g);			
		}
		return countLike;
	}
	
//	장바구니에 이미 담겨있을 경우 
//
//	1. 이미 담겨있는 상품 담을 경우 수량을 더해서 추가로 담김(쿠팡 레퍼런스) VV
//	   -- 해당 상품은 내 장바구니에 들어가서 삭제할 수 있음 
//		1-1. 해당 항목 있는지 검사
//		1-2. 있을 경우 업데이트 ( 이때 수량 검사는 ? ) 
// 		1-3. 없을 경우 insert	
//	
//	2. 이미 담겨있는 상품 담을 경우 현재 선택한 수량으로 새로고침
//
//	3. 이미 담겨있는 상품 담을 경우 수량 상관없이 해당 상품이 내 장바구니에서 사라짐 
//	   -- 좋아요랑 동작이 같음
//
//	4. 이미 담겨있는 상품 담을 경우 이미 담겨있는 상품이라고 알림창 띄움
//
//	5. 장바구니에 들어있는 상품detail에 들어갈 경우 내 장바구니에 들어있는 수량이 불러와져서 보여짐
//	   -- 페이지 불러올때 장바구니에서 해당 상품이 있는지 검사 필요
//
//	6. 이미 담겨있는 상품 담을 경우 추가로 또 생김 (네이버쇼핑)
//	   -- 중복검사 필요없음 계속 추가해주면 된다. , 삭제는 내 장바구니에서 가능
		
	@ResponseBody
	@RequestMapping("gbasket.bo")
	public String ajaxBasket(Basket b) {
		
		System.out.println(b);
		int result = 0;
		
		// 재고조사 20
//		int checkGiftStock = cService.checkGiftStock(b); 필요없음 오류만 난다. 구매할때 쓰자
		
		// 내 장바구니에 유무 체크 1 또는 0
		int checkBasket = cService.checkBasket(b);

		if(checkBasket > 0) {	// 장바구니에 있을때
//			if(checkGiftStock > checkGiftStock + Integer.parseInt(b.getCount())) {
			// 장바구니 업데이트 
				result = cService.updateBasket(b);
//			}else {	// 재고 부족
//				return "noStock";
//			}
		}else{	// 없을때
			// 장바구니에 담기
			result = cService.insertBasket(b);
		}
		return result > 0 ? "NNNNY": "NNNNN";
	}
}
