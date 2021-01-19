package com.yw.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yw.service.MemberService;
import com.yw.vo.MemberVo;

@Controller
public class HomeController {
	@Autowired
	MemberService memberService;
	
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
		System.out.println(vo.toString());
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
	public String myPage() {
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








