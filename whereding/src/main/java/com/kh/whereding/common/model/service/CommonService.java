package com.kh.whereding.common.model.service;

import com.kh.whereding.common.model.vo.Great;

public interface CommonService {
	
	// 좋아요 체크
	int checkLike(Great g);
	
	// 좋아요 삽입
	int insertLike(Great g);
	
	// 좋아요 제거
	int deleteLike(Great g);
}
