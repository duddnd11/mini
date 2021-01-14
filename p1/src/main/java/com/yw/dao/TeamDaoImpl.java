package com.yw.dao;

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
}