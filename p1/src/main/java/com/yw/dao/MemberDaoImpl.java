package com.yw.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public void userModify(MemberVo vo) {
		sqlSession.update("com.yw.mapper.MemberMapper.userModify", vo);
	}

	@Override
	public void userModifyWithPw(MemberVo vo) {
		sqlSession.update("com.yw.mapper.MemberMapper.userModifyWithPw", vo);
	}

	@Override
	public List<CustomUserDetail> findId(String name, String phoneNum) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("name",name);
		map.put("phoneNum", phoneNum);
		
		return sqlSession.selectList("com.yw.mapper.MemberMapper.findId", map);
	}

	@Override
	public int findPw(String id, String phoneNum, String email) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("phoneNum", phoneNum);
		map.put("email", email);
		return sqlSession.selectOne("com.yw.mapper.MemberMapper.findPw", map);
	}

	@Override
	public void newPw(String id,String password) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("password", password);
		sqlSession.update("com.yw.mapper.MemberMapper.newPw", map);
	}

	@Override
	public List<CustomUserDetail> memberList() {
		return sqlSession.selectList("com.yw.mapper.MemberMapper.memberList");
	}
}
