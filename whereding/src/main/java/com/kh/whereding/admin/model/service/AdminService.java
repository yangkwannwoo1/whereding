package com.kh.whereding.admin.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.member.model.vo.Member;

public interface AdminService {
	
	int selectListCount();
	
	ArrayList<Member> selectList(PageInfo pi);
}
