package com.kh.whereding.common.model.service;

import com.kh.whereding.common.model.vo.Basket;
import com.kh.whereding.common.model.vo.Great;

public interface CommonService {
	
	// 좋아요 체크
	int checkLike(Great g);
	
	// 좋아요 삽입
	int insertLike(Great g);
	
	// 좋아요 제거
	int deleteLike(Great g);

	// 답례품 재고 조회
//	int checkGiftStock(Basket b);

	// 장바구니에 있는지 체크
	int checkBasket(Basket b);

	// 장바구니 업데이트
	int updateBasket(Basket b);

	// 장바구니 등록
	int insertBasket(Basket b);

	// 장바구니 삭제
	int deleteBasket(Basket b);

}
