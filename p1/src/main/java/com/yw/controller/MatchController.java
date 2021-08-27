package com.yw.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yw.service.ApplyService;
import com.yw.service.CommentService;
import com.yw.service.MatchService;
import com.yw.vo.CommentVo;
import com.yw.vo.MatchBoardVo;

@Controller
public class MatchController {
	@Autowired
	MatchService service;
	
	@Autowired
	ApplyService applyService;
	
	@Autowired
	CommentService commentService;
	
	@RequestMapping(value="/match")
	public String match(Model model,String category,String kinds,String place,String day1,String day2,HttpSession session){
		List<MatchBoardVo> matchList= service.matchListService(category, kinds, place, day1, day2, 0);
		/**
		if(place==null && day1==null) {
			matchList= service.matchListService(category,kinds,0);
		}else if(place!=null){
			matchList = service.placeSearchService(category, place,0);
			model.addAttribute("place", place);
		}else {
			matchList = service.dateSearchService(category, day1, day2,0);
		}**/
		
		String filePath = session.getServletContext().getRealPath("/resources/img/slider");
		File dir = new File(filePath);
		File[] files = dir.listFiles();
		String[] sliderName = new String[files.length];
		
		for(int i=0 ; i<files.length;i++) {
			sliderName[i]=files[i].getName();
		}
		model.addAttribute("sliderName", sliderName);
		model.addAttribute("matchList", matchList);
		model.addAttribute("category", category);
		return "match";
	}
	
	@RequestMapping(value="/newMatch")
	public String newMatch(Model model,String category) {
		model.addAttribute("category", category);
		return "newMatch";
	}
	
	@RequestMapping(value="/newMatchAction")
	public String newMatchAction(MatchBoardVo vo) {
		String[] date = vo.getDate().split(" ");
		vo.setDate(date[0]);
		vo.setTime(date[1]);
		service.newMatchService(vo);
		
		return "redirect:matchDetail?mbno="+vo.getMbno();
	}
	
	@RequestMapping(value="/matchDetail")
	public String matchDetail(int mbno,Model model,Principal principal) {
		MatchBoardVo matchDetail =service.matchDetailService(mbno);
		model.addAttribute("matchDetail", matchDetail);
		int checkApply=0;
		if(principal!=null) {
			String id=principal.getName();
			checkApply=applyService.checkApplyService(mbno, id);
		}
		model.addAttribute("checkApply", checkApply);
		
		List<CommentVo> commentList = commentService.commentListService(mbno);
		List<CommentVo> reCommentList = new ArrayList<CommentVo>();
		
		for(CommentVo comment : commentList) {
			if(comment.getLevel()==1) {
				reCommentList.add(comment);
			}
		}
		
		Map<String,Integer> map = new HashMap<String, Integer>();
		for(int i=0; i<reCommentList.size();i++) {
			if(map.get("reComment"+reCommentList.get(i).getRef())== null) {
				map.put("reComment"+reCommentList.get(i).getRef(), 1);
			}else if(map.get("reComment"+reCommentList.get(i).getRef())>=1) {
				map.put("reComment"+reCommentList.get(i).getRef(),(map.get("reComment"+reCommentList.get(i).getRef()))+1);
			}
		}
		
		model.addAttribute("map", map);
		model.addAttribute("countComment", commentList.size());
		model.addAttribute("commentList", commentList);
		model.addAttribute("reCommentList", reCommentList);
		
		return "matchDetail";
	}
	
	@RequestMapping(value="/sortDate")
	public String sortDate(Model model,String category) {
		List<MatchBoardVo> matchList = service.sortDateService(category,0);
		model.addAttribute("matchList", matchList);
		model.addAttribute("category", category);
		return "match";
	}
	
	@RequestMapping(value="/adminChangeSliderImage")
	public String adminChangeSliderImage(MultipartFile[] multipart, HttpSession session, int[] deleteNumbers) throws IllegalStateException, IOException {
		String filePath = session.getServletContext().getRealPath("/resources/img/slider");
		String fileName;
			
		// 현재 저장되어있는 파일
		File dir = new File(filePath);
		File[] files = dir.listFiles();
		
		for(int i=0; i<deleteNumbers.length; i++) {
			int deleteNum = deleteNumbers[i];
			System.out.println(deleteNum);
			files[deleteNum-1].delete();
		}
		
		for(int i=0 ;i<multipart.length;i++) {
//			fileName=multipart[i].getOriginalFilename();
//			String ext = fileName.substring(fileName.lastIndexOf(".")+1);
//			fileName ="메인슬라이드"+(i+1)+"."+ext;
			fileName ="메인슬라이드"+(i+1)+"_"+multipart[i].getOriginalFilename();
			MultipartFile file = multipart[i];
			
			// 파일 업로드
			if(file.isEmpty() == false ) {
				if(i<=files.length-1 && files[i].exists()) {
					files[i].delete();
					file.transferTo(new File(filePath,fileName));
				}else {
					file.transferTo(new File(filePath,fileName));
			 	}
			}
		}
		
		/**
		if(!multipart.isEmpty()) {
			fileName = multipart.getOriginalFilename();
			System.out.println("파일명:"+fileName);
			//File file = new File(filePath,fileName);
			//multipart.transferTo(file);
		}**/
		String category = URLEncoder.encode("매치","UTF-8");
		return "redirect:/match?category="+category;
	}
	
	@RequestMapping(value="/adminSlider")
	public String adminSlider(HttpSession session,Model model) {
		String filePath = session.getServletContext().getRealPath("/resources/img/slider");
		File dir = new File(filePath);
		File[] files = dir.listFiles();
		String[] sliderName = new String[files.length];
		
		for(int i=0 ; i<files.length;i++) {
			sliderName[i]=files[i].getName();
		}
		model.addAttribute("sliderName", sliderName);
		return "sliderAdd";
	}
}



