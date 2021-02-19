package com.yw.service;

import java.util.List;

import com.yw.vo.TeamVo;

public interface TeamService {
	public void createTeamService(TeamVo vo);
	public List<TeamVo> teamList();
	public List<TeamVo> teamSearchService(String name);
}
