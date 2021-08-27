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
	public List<MatchBoardVo> matchList(String category,String kinds,String place,String day1,String day2,int offset){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("category", category);
		map.put("kinds", kinds);
		map.put("place", place);
		map.put("day1", day1);
		map.put("day2", day2);
		map.put("offset", offset);
		return sqlSession.selectList("com.yw.mapper.MatchMapper.matchList",map);
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
	public List<MatchBoardVo> placeSearch(String category, String place,int offset) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("place", place);
		map.put("offset", offset);
		return sqlSession.selectList("com.yw.mapper.MatchMapper.placeSearch", map);
	}
	@Override
	public List<MatchBoardVo> dateSearch(String category, String day1, String day2,int offset) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("day1", (day1));
		map.put("day2", (day2));
		map.put("offset", offset);
		return sqlSession.selectList("com.yw.mapper.MatchMapper.dateSearch", map);
	}
	@Override
	public List<MatchBoardVo> sortDate(String category,int offset) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("category", category);
		map.put("offset", offset);
		return sqlSession.selectList("com.yw.mapper.MatchMapper.sortDate",map);
	}
	@Override
	public List<MatchBoardVo> matchListById() {
		return sqlSession.selectList("com.yw.mapper.MatchMapper.matchListById");
	}
}
