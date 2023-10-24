package com.kh.whereding.member.model.service;

import com.kh.whereding.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);
	int createMember(Member m);
	int selectUserId(String userId);
	
	
	
	
	
	
	
	
	
	
	// 마이페이지 정보변경 서비스
	int updateMemberInfo(Member m);
	
	// 비밀번호 변경 서비스
	int checkMemberPwd(Member m);
	int updateMemberPwd(Member m);
	
	// 회원탈퇴
	int deleteMember(Member m);
	
}
