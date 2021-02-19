package com.yw.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.MatchBoardVo;

public class MatchDaoImpl implements MatchDao{
	@Autowired
	SqlSession sqlSession;
	@Override
	public void newMatch(MatchBoardVo vo) {
		sqlSession.insert("com.yw.mapper.MatchMapper.newMatch", vo);
	}
	@Override
	public List<MatchBoardVo> matchList(String category) {
		return sqlSession.selectList("com.yw.mapper.MatchMapper.matchList",category);
	}
	@Override
	public MatchBoardVo matchDetail(int mbno) {
		return sqlSession.selectOne("com.yw.mapper.MatchMapper.matchDetail", mbno);
	}
	@Override
	public void updateState(int mbno) {
		sqlSession.update("com.yw.mapper.MatchMapper.updateState", mbno);
	}
	@Override
	public List<MatchBoardVo> placeSearch(String category, String place) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("place", place);
		return sqlSession.selectList("com.yw.mapper.MatchMapper.placeSearch", map);
	}
	@Override
	public List<MatchBoardVo> dateSearch(String category, String day1, String day2) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("day1", Date.valueOf(day1));
		map.put("day2", Date.valueOf(day2));
		return sqlSession.selectList("com.yw.mapper.MatchMapper.dateSearch", map);
	}
}
