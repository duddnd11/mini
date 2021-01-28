package com.yw.controller;

import java.security.Principal;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yw.security.CustomUserDetail;
import com.yw.service.ApplyService;
import com.yw.service.MemberService;
import com.yw.vo.ApplyVo;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

@Controller
public class HomeController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value="/main")
	public String home(Locale locale, Model model) {
		return "main";
	}
	
	@RequestMapping(value="login2")
	public String login() {
		return "login";
	}
	/**
	@RequestMapping(value="login-processing")
	public String loginProcessing(MemberVo vo,Model model) {
		System.out.println("로그인확인");
		model.addAttribute("vo", vo);
		return "home";
	}**/
	
	@RequestMapping(value="signUp")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping(value="signUpAction", method=RequestMethod.POST)
	public String signUpAction(MemberVo vo,String year, String month, String day) {
		String birth=year+month+day;
		vo.setBirth(birth);
		memberService.insertMemberService(vo);
		return "main";
	}
	/**
	@RequestMapping(value="logout2")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth !=null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/main";
	}
	**/
	
	@RequestMapping(value="myPage")
	public String myPage(Model model,Principal principal) {
		String id=principal.getName();
		List<MatchBoardVo> myMatchList=memberService.myMatchService(id);
		List<MatchBoardVo> myMercenaryList=memberService.myMercenaryService(id);
		List<MatchBoardVo> myMatchApplyList=memberService.myMatchApplyService(id);
		List<MatchBoardVo> myMercenaryApplyList= memberService.myMercenaryApplyService(id);
		//List<ApplyVo> applyList = applyService.applyListService();
		
		model.addAttribute("myMatchList",myMatchList);
		model.addAttribute("myMercenaryList", myMercenaryList);
		model.addAttribute("myMatchApplyList",myMatchApplyList);
		model.addAttribute("myMercenaryApplyList", myMercenaryApplyList);
		//model.addAttribute("applyList", applyList);
		return "myPage";
	}

	@RequestMapping(value="modal")
	public String modal() {
		return "modal";
	}
	
	@RequestMapping(value="map")
	public String map() {
		return "map";
	}
}








