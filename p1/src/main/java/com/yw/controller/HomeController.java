package com.yw.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	public String home(Locale locale, Model model,Principal principal) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("홈:"+auth.getPrincipal());
		return "main";
	}
	
	@RequestMapping(value="/userLogin2")
	public String login(HttpServletRequest request,String loginFailMsg,Model model) {
		String prevPage = request.getHeader("REFERER");
		request.getSession().setAttribute("prevPage", prevPage);
		model.addAttribute("loginFailMsg", loginFailMsg);
		return "login";
	}
	/**
	@RequestMapping(value="login-processing")
	public String loginProcessing(MemberVo vo,Model model) {
		System.out.println("로그인확인");
		model.addAttribute("vo", vo);
		return "home";
	}**/
	
	@RequestMapping(value="/userSignUp")
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping(value="/userSignUpAction", method=RequestMethod.POST)
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
		return "redirect:userLogin2";
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
	
	@RequestMapping(value="myInfoModify")
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
	
	@RequestMapping(value="myInfoModifyAction")
	public String userModifyAction(MemberVo vo,Principal principal,String year, String month,String day,HttpSession session) throws IllegalStateException, IOException {
		if(month.length()==1) {
			month="0"+month;
		}
		if(day.length()==1) {
			day="0"+day;
		}
		String birth=year+month+day;
		vo.setBirth(birth);
		vo.setId(principal.getName());
		String filePath = session.getServletContext().getRealPath("/resources/img");
		MultipartFile multipart = vo.getMultipart();
		String fileName="기본프로필";
		
		if(!multipart.isEmpty()) {
			fileName = multipart.getOriginalFilename();
			File file = new File(filePath,fileName);
			
			/*
			if(!file.exists()) {
				file.mkdirs(); // 폴더생성
			}
			*/
			multipart.transferTo(file);
		}
		vo.setImg(fileName);
 		memberService.userModifyService(vo);
		return "redirect:/myPage";
	}
	
	@RequestMapping(value="denie")
	public String denie(Principal principal,Model model) {
		String id =principal.getName();
		String msg;
		if(id==null) {
			msg="로그인이 필요합니다.";
		}else {
			msg="접근권한이 없습니다. 관리자에게 문의해 주시기 바랍니다.";
		}
		model.addAttribute("msg", msg);
		return "denie";
	}
	
	@RequestMapping(value="findId")
	public String findId() {
		return "findId";
	}
	
	@RequestMapping(value="findIdAction")
	public String findIdAction(String name, String phoneNum,Model model) {
		List<CustomUserDetail> list = memberService.findIdService(name, phoneNum);
		model.addAttribute("list", list);
		return "findIdResult";
	}
	
	@RequestMapping(value="findPw")
	public String findPw() {
		return "findPw";
	}
	
	@RequestMapping(value="test")
	public String test() {
		return "test";
	}
}














