package com.kh.whereding.member.model.service;

import com.kh.whereding.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);
	int createMember(Member m);
	int selectUserId(String userId);
}
