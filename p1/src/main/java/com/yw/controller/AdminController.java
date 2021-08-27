package com.yw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.security.CustomUserDetail;
import com.yw.security.CustomUserDetailService;
import com.yw.service.MatchService;
import com.yw.service.MemberService;
import com.yw.vo.MatchBoardVo;

@Controller
public class AdminController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	CustomUserDetailService userService;
	
	@Autowired
	MatchService matchService;
	
	@RequestMapping(value="adminPage")
	public String adminPage() {
		return "adminPage";
	}
	
	@RequestMapping(value="adminMemberManagement")
	public String adminUserManagement(Model model) {
		List<CustomUserDetail> list = userService.memberListService();
		List<MatchBoardVo> matchList = matchService.matchListByIdService();
		
		model.addAttribute("matchList", matchList);
		model.addAttribute("list", list);
		return "adminMemberManagement";
	}
}
