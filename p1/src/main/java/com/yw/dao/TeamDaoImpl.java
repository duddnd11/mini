package com.yw.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.TeamVo;

public class TeamDaoImpl implements TeamDao{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void createTeam(TeamVo vo) {
		sqlSession.insert("com.yw.mapper.TeamMapper.createTeam",vo);
	}

	@Override
	public List<TeamVo> teamList() {
		return sqlSession.selectList("com.yw.mapper.TeamMapper.teamList");
	}

	@Override
	public List<TeamVo> teamSearch(String name) {
		return sqlSession.selectList("com.yw.mapper.TeamMapper.teamSearch", name);
	}
}
