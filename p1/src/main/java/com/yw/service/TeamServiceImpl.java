package com.yw.service;

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

}
