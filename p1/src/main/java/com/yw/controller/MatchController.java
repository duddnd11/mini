package com.yw.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.ApplyService;
import com.yw.service.MatchService;
import com.yw.vo.MatchBoardVo;

@Controller
public class MatchController {
	@Autowired
	MatchService service;
	
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value="/match")
	public String match(Model model,String category){
		List<MatchBoardVo> matchList= service.matchListService(category);
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
		return "match";
	}
	
	@RequestMapping(value="/matchDetail")
	public String matchDetail(int mbno,Model model,Principal principal) {
		MatchBoardVo matchDetail =service.matchDetailService(mbno);
		model.addAttribute("matchDetail", matchDetail);
		String id=principal.getName();
		int checkApply=applyService.checkApplyService(mbno, id);
		model.addAttribute("checkApply", checkApply);
		return "matchDetail";
	}
}
