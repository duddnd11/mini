package com.yw.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.TeamApplyVo;
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

	@Override
	public TeamVo teamDetail(int teamno) {
		return sqlSession.selectOne("com.yw.mapper.TeamMapper.teamDetail", teamno);
	}

	@Override
	public void teamApply(TeamApplyVo vo) {
		sqlSession.insert("com.yw.mapper.TeamMapper.teamApply", vo);
	}

	@Override
	public int checkApply(String id, int teamno) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("teamno", teamno);
		return sqlSession.selectOne("com.yw.mapper.TeamMapper.checkApply", map);
	}
}
