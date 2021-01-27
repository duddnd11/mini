package com.yw.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.security.CustomUserDetail;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

public class MemberDaoImpl implements MemberDao {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberVo vo) {
		sqlSession.insert("com.yw.mapper.MemberMapper.insertMember",vo);
	}

	@Override
	public CustomUserDetail getUserById(String id) {
		CustomUserDetail users = sqlSession.selectOne("com.yw.mapper.MemberMapper.getUserById", id);
		return users;
	}

	@Override
	public List<MatchBoardVo> myMatch(String id) {
		return sqlSession.selectList("com.yw.mapper.MemberMapper.myMatch",id);
	}

	@Override
	public List<MatchBoardVo> myMercenary(String id) {
		return sqlSession.selectList("com.yw.mapper.MemberMapper.myMercenary", id);
	}

	@Override
	public List<MatchBoardVo> myMatchApply(String id) {
		return sqlSession.selectList("com.yw.mapper.MemberMapper.myMatchApply", id);
	}

	@Override
	public List<MatchBoardVo> myMercenaryApply(String id) {
		return sqlSession.selectList("com.yw.mapper.MemberMapper.myMercenaryApply", id);
	}
}
