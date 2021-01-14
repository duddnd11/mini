package com.yw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.TeamService;
import com.yw.vo.TeamVo;

@Controller
public class TeamController {
	@Autowired
	TeamService service;
	
	@RequestMapping(value="createTeamAction")
	public void createTeamAction(TeamVo vo) {
		service.createTeamService(vo);
	}
}
