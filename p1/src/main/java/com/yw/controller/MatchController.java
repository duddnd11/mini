package com.yw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.MatchService;
import com.yw.vo.MatchBoardVo;

@Controller
public class MatchController {
	@Autowired
	MatchService service;
	
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
		System.out.println(vo.getCategory());
		service.newMatchService(vo);
		return "match";
	}
	
	@RequestMapping(value="/matchDetail")
	public String matchDetail(int mbno,Model model) {
		MatchBoardVo matchDetail =service.matchDetailService(mbno);
		model.addAttribute("matchDetail", matchDetail);
		return "matchDetail";
	}
}
