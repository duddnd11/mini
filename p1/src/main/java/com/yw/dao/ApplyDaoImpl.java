package com.yw.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.ApplyVo;

public class ApplyDaoImpl implements ApplyDao {
	@Autowired
	SqlSession sqlSession;
	@Override
	public void apply(ApplyVo vo) {
		sqlSession.insert("com.yw.mapper.ApplyMapper.apply", vo);
	}
	@Override
	public int checkApply(String id, int mbno) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("mbno", mbno);
		return sqlSession.selectOne("com.yw.mapper.ApplyMapper.checkApply", map);
	}

}
