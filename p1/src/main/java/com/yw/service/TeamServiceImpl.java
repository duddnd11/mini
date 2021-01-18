package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.TeamDao;
import com.yw.vo.TeamVo;

@Service
public class TeamServiceImpl implements TeamService{
	@Autowired
	TeamDao dao;
	
	@Override
	public void createTeamService(TeamVo vo) {
		dao.createTeam(vo);
	}

	@Override
	public List<TeamVo> teamList() {
		return dao.teamList();
	}

}
