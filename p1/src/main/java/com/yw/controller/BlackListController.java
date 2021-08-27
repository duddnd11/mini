package com.yw.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yw.service.BlackListService;
import com.yw.service.LikeService;
import com.yw.vo.BlackListVo;
import com.yw.vo.NoticeVo;
import com.yw.vo.PagingVo;
import com.yw.vo.RelatedVo;

@Controller
public class BlackListController {
	@Autowired
	BlackListService service;
	
	@Autowired
	LikeService likeService;
	// 새로고침 조회수 증가 방지 쿠키 생성
	public boolean cookie(HttpServletRequest request,HttpServletResponse response,int no) {
		Cookie[] cookies = request.getCookies();
		boolean flag=false;
		
		for(int i=0 ;i<cookies.length;i++) {
			if((cookies[i].getName()).contains("blackListNo") && Integer.parseInt(cookies[i].getValue()) == no) {
				flag=true;
			}
		}
		
		if(!flag) {
			Cookie newCookie = new Cookie("blackListNo"+no, Integer.toString(no));
			newCookie.setMaxAge(60);
			response.addCookie(newCookie);
			service.updateHitCountService(no);
		}
		
		return flag;
	}
	
	@RequestMapping(value="/blackList")
	public String blackList(Model model,int page) {
		List<BlackListVo> listAll = service.blackListService();
		PagingVo paging = new PagingVo(listAll,page);
		List<BlackListVo> list = service.blackListPageService(paging.getOffset());
		model.addAttribute("list", list);
		model.addAttribute("endPage", paging.getEndPage());
		model.addAttribute("startPage", paging.getStartPage());
		model.addAttribute("page", paging.getPage());
		model.addAttribute("pageSize", paging.getPageSize());
		return "blackList";
	}
	
	@RequestMapping(value="/newBlackList")
	public String blackListWrite() {
		return "newBlackList";
	}
	
	@RequestMapping(value="/newBlackListAction")
	public String blackListWriteAction(BlackListVo vo,Model model,HttpServletRequest request,HttpServletResponse response,Principal principal) {
		vo.setWriter(principal.getName());
		service.blackListWriteService(vo);
		/**
		List<BlackListVo> list = service.blackListService();
		RelatedVo relatedVo = new RelatedVo(vo.getNo(),list);
		relatedVo.relateByBlackList(list);
		List<BlackListVo> relatedList = service.relatedBlackListService(relatedVo.getRelateNo());
		
		BlackListVo blackList=service.blackListDetailService(vo.getNo());
		BlackListVo prevblackList=service.blackListDetailService(relatedVo.getPrevNo());
		BlackListVo nextblackList=service.blackListDetailService(relatedVo.getNextNo());
		model.addAttribute("prevBlackList", prevblackList);
		model.addAttribute("nextBlackList", nextblackList);
		model.addAttribute("list", relatedList);
		model.addAttribute("page", 1);
		model.addAttribute("blackList", vo);
		**/
		//redirectAttr.addFlashAttribute("blackList", vo);
		return "redirect:blackListDetail?no="+vo.getNo()+"&page=1";
	}

	
	@RequestMapping(value="/blackListDetail")
	public String blackListDetail(Model model,int no,int page,HttpServletRequest request, HttpServletResponse response,Principal principal) {
		List<BlackListVo> list = service.blackListService();
		RelatedVo relatedVo = new RelatedVo(no, list);
		relatedVo.relateByBlackList(list);
		List<BlackListVo> relatedList = service.relatedBlackListService(relatedVo.getRelateNo());
		
		cookie(request,response,no);
		BlackListVo blackList=service.blackListDetailService(no);
		BlackListVo prevblackList=service.blackListDetailService(relatedVo.getPrevNo());
		BlackListVo nextblackList=service.blackListDetailService(relatedVo.getNextNo());
		
		model.addAttribute("prevBlackList", prevblackList);
		model.addAttribute("nextBlackList", nextblackList);
		model.addAttribute("blackList", blackList);
		model.addAttribute("list", relatedList);
		model.addAttribute("page", page);
		
		int countLike =likeService.countLikeService(no);
		int myLike=0;
		if(principal !=null) {
			myLike = likeService.myLikeService(no, principal.getName());
		}
		
		model.addAttribute("myLike", myLike);
		model.addAttribute("countLike", countLike);
		return "blackListDetail";
	}
	
	@RequestMapping(value="/blackListModify")
	public String blackListModify(Model model,int no,int page) {
		BlackListVo vo = service.blackListDetailService(no);
		model.addAttribute("blackList",vo);
		model.addAttribute("page", page);
		return "blackListModify";
	}
	@RequestMapping(value="/blackListModifyAction")
	public String blackListModifyAction(BlackListVo vo,int page) {
		service.blackListModifyService(vo);
		return "redirect:blackListDetail?no="+vo.getNo()+"&page="+page;
	}
	@RequestMapping(value="/blackListDelete")
	public String blackListDelete(int no) {
		service.blackListDeleteService(no);
		return "redirect:blackList?page=1";
	}
}




















