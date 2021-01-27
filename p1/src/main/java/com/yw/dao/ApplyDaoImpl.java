package com.yw.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@Override
	public List<ApplyVo> applyList(int mbno) {
		return sqlSession.selectList("com.yw.mapper.ApplyMapper.applyList",mbno);
	}
	@Override
	public void updateState(int applyno) {
		sqlSession.update("com.yw.mapper.ApplyMapper.updateState", applyno);
	}
	@Override
	public void updateStateFail(int applyno, int mbno) {
		Map<String,Integer> map = new HashMap<String, Integer>();
		map.put("applyno", applyno);
		map.put("mbno", mbno);
		sqlSession.update("com.yw.mapper.ApplyMapper.updateStateFail", map);
	}

}
