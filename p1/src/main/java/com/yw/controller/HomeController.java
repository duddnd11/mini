package com.yw.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yw.security.CustomUserDetail;
import com.yw.security.CustomUserDetailService;
import com.yw.service.ApplyService;
import com.yw.service.MemberService;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

@Controller
public class HomeController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	ApplyService applyService;
	
	@Autowired
	CustomUserDetailService userService;
	
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
	public String signUpAction(MemberVo vo,String year, String month, String day,HttpSession session) throws IllegalStateException, IOException {
		if(month.length()==1) {
			month="0"+month;
		}
		if(day.length()==1) {
			day="0"+day;
		}
		String birth=year+month+day;
		String filePath = session.getServletContext().getRealPath("/resources/img");
		MultipartFile multipart = vo.getMultipart();
		String fileName="기본프로필";
		
		if(!multipart.isEmpty()) {
			fileName = multipart.getOriginalFilename();
			System.out.println(filePath+","+fileName);
			File file = new File(filePath,fileName);
			
			/*
			if(!file.exists()) {
				file.mkdirs(); // 폴더생성
			}
			*/
			multipart.transferTo(file);
		}
		
		vo.setImg(fileName);
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
	
	@RequestMapping(value="userModify")
	public String userModify(Model model,Principal principal) {
		String id = principal.getName();
		CustomUserDetail user = (CustomUserDetail) userService.loadUserByUsername(id);
		String birth = user.getBirth();
		String year = birth.substring(0,4);
		String month = birth.substring(4, 6);
		String day = birth.substring(6, 8);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("user", user);
		return "userModify";
	}
	
	@RequestMapping(value="userModifyAction")
	public String userModifyAction(MemberVo vo,Principal principal,String year, String month,String day) {
		if(month.length()==1) {
			month="0"+month;
		}
		if(day.length()==1) {
			day="0"+day;
		}
		String birth=year+month+day;
		vo.setBirth(birth);
		vo.setId(principal.getName());
		System.out.println(vo);
		memberService.userModifyService(vo);
		return "redirect:/myPage";
	}
}














