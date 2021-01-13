package com.yw.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.security.CustomUserDetail;
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
}
