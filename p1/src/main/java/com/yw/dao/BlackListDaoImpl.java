package com.yw.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.BlackListVo;

public class BlackListDaoImpl implements BlackListDao{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BlackListVo> blackList() {
		return sqlSession.selectList("com.yw.mapper.BlackListMapper.blackList");
	}

	@Override
	public List<BlackListVo> blackListPage(int offset) {
		return sqlSession.selectList("com.yw.mapper.BlackListMapper.blackListPage", offset);
	}

	@Override
	public List<BlackListVo> relatedBlackList(int offset) {
		return sqlSession.selectList("com.yw.mapper.BlackListMapper.relatedblackList", offset);
	}

	@Override
	public BlackListVo blackListDetail(int no) {
		return sqlSession.selectOne("com.yw.mapper.BlackListMapper.blackListDetail",no);
	}

	@Override
	public void blackListWrite(BlackListVo vo) {
		sqlSession.insert("com.yw.mapper.BlackListMapper.blackListWrite", vo);
	}

	@Override
	public void blackListModify(BlackListVo vo) {
		sqlSession.update("com.yw.mapper.BlackListMapper.blackListModify", vo);
	}

	@Override
	public void blackListDelete(int no) {
		sqlSession.delete("com.yw.mapper.BlackListMapper.blackListDelete", no);
	}

	@Override
	public void updateHitCount(int no) {
		sqlSession.update("com.yw.mapper.BlackListMapper.updateHitCount", no);
	}

}
