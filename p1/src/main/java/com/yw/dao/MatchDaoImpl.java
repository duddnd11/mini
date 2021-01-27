package com.yw.dao;

import java.util.List;

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
}
