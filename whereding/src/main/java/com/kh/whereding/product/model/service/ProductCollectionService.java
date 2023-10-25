package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.ProductCollection;

public interface ProductCollectionService {
	
		int selectListCount(String category);
		
		ArrayList<ProductCollection> selectCollectionList(PageInfo pi, String category);
				

}
