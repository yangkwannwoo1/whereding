package com.kh.whereding.gift.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftCategory;

public interface GiftService {
	
	abstract int selectListCount();
	
	abstract ArrayList<Gift> selectGiftList(PageInfo pi);
	
	abstract ArrayList<GiftCategory> selectCategoryList();
}
