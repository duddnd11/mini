package com.yw.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.NoticeService;
import com.yw.vo.BlackListVo;
import com.yw.vo.NoticeVo;
import com.yw.vo.PagingVo;
import com.yw.vo.RelatedVo;

@Controller
public class NoticeController {
	@Autowired
	NoticeService service;
	
	@RequestMapping(value="notice")
	public String notice(Model model,int page) {
		List<NoticeVo> listAll = service.noticeListService();
		PagingVo paging = new PagingVo(listAll, page);
		List<NoticeVo> list = service.noticeListPageService(paging.getOffset());
		model.addAttribute("list", list);
		model.addAttribute("endPage", paging.getEndPage());
		model.addAttribute("startPage", paging.getStartPage());
		model.addAttribute("page", paging.getPage());
		model.addAttribute("pageSize", paging.getPageSize());
		return "notice";
	}
	
	// 새로고침 조회수 증가 방지 쿠키 생성
	public void cookie(HttpServletRequest request,HttpServletResponse response,int no) {
		Cookie[] cookies = request.getCookies();
		boolean flag=false;
		
		for(int i=0 ;i<cookies.length;i++) {
			if((cookies[i].getName()).contains("noticeNo") && Integer.parseInt(cookies[i].getValue()) == no) {
				flag=true;
			}
		}
		
		if(!flag) {
			Cookie newCookie = new Cookie("noticeNo"+no, Integer.toString(no));
			newCookie.setMaxAge(60);
			response.addCookie(newCookie);
			service.updateHitCount(no);
		}
	}
	
	
	@RequestMapping(value="noticeDetail")
	public String noticeDetail(Model model,int no, HttpServletResponse response,HttpServletRequest request,int page) {
		List<NoticeVo> list = service.noticeListService();
		RelatedVo relatedVo = new RelatedVo(no,list);
		relatedVo.relateByNotice(list);
		List<NoticeVo> relatedList = service.relatedNotice(relatedVo.getRelateNo());
		
		cookie(request,response,no);
		NoticeVo notice=service.noticeDetailService(no);
		NoticeVo prevNotice=service.noticeDetailService(relatedVo.getPrevNo());
		NoticeVo nextNotice=service.noticeDetailService(relatedVo.getNextNo());
		model.addAttribute("prevNotice", prevNotice);
		model.addAttribute("nextNotice", nextNotice);
		model.addAttribute("notice", notice);
		model.addAttribute("list", relatedList);
		model.addAttribute("page", page);
		return "noticeDetail";
	}
	
	@RequestMapping(value="adminNoticeWrite")
	public String noticeWrite() {
		return "noticeWrite";
	}
	
	@RequestMapping(value="adminNoticeWriteAction")
	public String noticeWriteAction(Model model,NoticeVo vo,HttpServletRequest request, HttpServletResponse response) {
		service.noticeWriteService(vo);
		/**
		List<NoticeVo> list = service.noticeListService();
		RelatedVo relatedVo = new RelatedVo(vo.getNo(),list);
		relatedVo.relateByNotice(list);
		List<NoticeVo> relatedList = service.relatedNotice(relatedVo.getRelateNo());
		
		cookie(request,response,vo.getNo());
		NoticeVo notice=service.noticeDetailService(vo.getNo());
		NoticeVo prevNotice=service.noticeDetailService(relatedVo.getPrevNo());
		NoticeVo nextNotice=service.noticeDetailService(relatedVo.getNextNo());
		model.addAttribute("prevNotice", prevNotice);
		model.addAttribute("nextNotice", nextNotice);
		model.addAttribute("list", relatedList);
		model.addAttribute("page", 1);
		model.addAttribute("notice", vo);
		**/
		return "redirect:noticeDetail?no="+vo.getNo()+"&page=1";
	}
	
	@RequestMapping(value="adminNoticeModify")
	public String noticeModify(Model model,int no,int page) {
		NoticeVo notice =service.noticeDetailService(no);
		model.addAttribute("notice", notice);
		model.addAttribute("page", page);
		return "noticeModify";
	}
	
	@RequestMapping(value="adminNoticeModifyAction")
	public String noticeModifyAction(NoticeVo vo,int page) {
		service.noticeModifyService(vo);
		return "redirect:noticeDetail?no="+vo.getNo()+"&page="+page;
	}
	
	@RequestMapping(value="adminNoticeDelete")
	public String noticeDelete(int no) {
		service.noticeDeleteService(no);
		return "redirect:notice?page=1";
	}
}




