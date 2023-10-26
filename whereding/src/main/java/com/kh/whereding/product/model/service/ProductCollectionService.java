package com.kh.whereding.product.model.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.CollectionReview;
import com.kh.whereding.product.model.vo.ProductCollection;

public interface ProductCollectionService {
	
		int selectListCount(String category);
		
		ArrayList<ProductCollection> selectCollectionList(PageInfo pi, String category);
				
//		int increaseCount(int boardNo);
		ProductCollection selectBoard(HashMap<String, String> map);
		
		ArrayList<CollectionReview> selectReviewList(String cno);

}
