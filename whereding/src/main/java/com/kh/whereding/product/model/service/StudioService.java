package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.Studio;

public interface StudioService {

	int selectListCount();
	
	abstract ArrayList<Studio> selectStudioList(PageInfo pi);
}
