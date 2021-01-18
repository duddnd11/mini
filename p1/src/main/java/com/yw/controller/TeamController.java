package com.yw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.TeamService;
import com.yw.vo.TeamVo;

@Controller
public class TeamController {
	@Autowired
	TeamService service;
	
	@RequestMapping(value="team")
	public String team(Model model) {
		List<TeamVo> teamList = service.teamList();
		model.addAttribute("teamList",teamList);
		return "team";
	}
	@RequestMapping(value="createTeam")
	public String createTeam() {
		return "createTeam";
	}
	
	@RequestMapping(value="createTeamAction")
	public void createTeamAction(TeamVo vo) {
		service.createTeamService(vo);
	}
}
