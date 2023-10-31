package com.kh.whereding.product.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.ProductCollectionReview;

public interface ProductCollectionService {
	
		int selectListCount(String category);
		
		ArrayList<ProductCollection> selectCollectionList(PageInfo pi, String category);
				
//		int increaseCount(int boardNo);
		ProductCollection selectBoard(HashMap<String, String> map);
		
		ArrayList<ProductCollectionReview> selectReviewList(String cno);
		
		int insertProductCollection(ProductCollection c);
		
		int insertFile(Attachment a);
		
		int insertTag(HashTag t);
		
		int deleteCollection(HashMap<String, String> map);


}
