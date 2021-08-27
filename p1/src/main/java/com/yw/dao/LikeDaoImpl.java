package com.yw.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class LikeDaoImpl implements LikeDao{
	@Autowired
	SqlSession sqlSession;
	@Override
	public void insertLike(int blacklistno, String id) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("blacklistno", blacklistno);
		map.put("id", id);
		sqlSession.insert("com.yw.mapper.likeMapper.insertLike",map );
	}
	@Override
	public void deleteList(int blacklistno, String id) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("blacklistno", blacklistno);
		map.put("id", id);
		sqlSession.insert("com.yw.mapper.likeMapper.deleteLike",map );
	}
	@Override
	public int countLike(int blacklistno) {
		return sqlSession.selectOne("com.yw.mapper.likeMapper.countLike", blacklistno);
	}
	@Override
	public int myLike(int blacklistno, String id) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("blacklistno", blacklistno);
		map.put("id", id);
		return sqlSession.selectOne("com.yw.mapper.likeMapper.myLike", map);
	}

}
