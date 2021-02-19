package com.yw.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yw.service.TeamService;
import com.yw.vo.TeamVo;

@Controller
public class TeamController {
	@Autowired
	TeamService service;
	
	@RequestMapping(value="team")
	public String team(Model model,String name) {
		List<TeamVo> teamList;
		if(name==null) {
			teamList = service.teamList();
		}else {
			teamList = service.teamSearchService(name);
			model.addAttribute("name", name);
		}
		model.addAttribute("teamList",teamList);
		return "team";
	}
	@RequestMapping(value="createTeam")
	public String createTeam() {
		return "createTeam";
	}
	
	@RequestMapping(value="createTeamAction", method=RequestMethod.POST)
	public String createTeamAction(TeamVo vo,HttpSession session) throws IllegalStateException, IOException {
		String filePath = session.getServletContext().getRealPath("/resources/img");
		MultipartFile multipart = vo.getMultipart();
		String fileName="기본엠블럼";
		
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
		service.createTeamService(vo);
		return "redirect:/team";
	}
}







