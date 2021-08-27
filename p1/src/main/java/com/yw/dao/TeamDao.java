package com.yw.dao;

import java.util.List;

import com.yw.vo.TeamApplyVo;
import com.yw.vo.TeamVo;

public interface TeamDao {
	public void createTeam(TeamVo vo);
	public List<TeamVo> teamList();
	public List<TeamVo> teamSearch(String name);
	public TeamVo teamDetail(int teamno);
	public void teamApply(TeamApplyVo vo);
	public int checkApply(String id,int teamno);
}
