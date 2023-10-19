package com.kh.whereding.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	
	@RequestMapping(value="login.me")
	public String loginMember(String userId, String userPwd){
		return "redirect:/";
	}
}
