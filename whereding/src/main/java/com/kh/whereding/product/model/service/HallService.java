package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.Hall;

public interface HallService {
	
		int selectListCount();
		
		ArrayList<Hall> selectList(PageInfo pi);
		
		int insertHall(Hall h);

}
