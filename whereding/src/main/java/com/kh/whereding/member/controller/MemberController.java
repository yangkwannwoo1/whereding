package com.kh.whereding.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.whereding.member.model.service.MemberServiceImpl;
import com.kh.whereding.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService;
	
	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session){
		Member loginMember = mService.loginMember(m);
		
		if(loginMember == null) {
			session.setAttribute("alertMsg", "로그인실패");
		}else {
			session.setAttribute("alertMsg", "로그인 되었습니다.");
			session.setAttribute("loginMember", loginMember);
		}
		return "redirect:/";
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("memberEnrollForm.me")
	public String memberEnrollForm() {
		return "member/memberEnrollForm";
	}
}
