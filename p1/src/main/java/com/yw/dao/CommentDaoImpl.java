package com.yw.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.CommentVo;

public class CommentDaoImpl implements CommentDao{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void writeComment(int mbno, String comment, String id, int level,int ref) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mbno", mbno);
		map.put("comment", comment);
		map.put("id", id);
		map.put("level", level);
		map.put("ref",ref);
		sqlSession.insert("com.yw.mapper.CommentMapper.writeComment",map );
	}

	@Override
	public List<CommentVo> commentList(int mbno) {
		return sqlSession.selectList("com.yw.mapper.CommentMapper.commentList", mbno);
	}

	@Override
	public CommentVo topComment() {
		return sqlSession.selectOne("com.yw.mapper.CommentMapper.topComment");
	}

	@Override
	public void updateRef(int cno) {
		sqlSession.update("com.yw.mapper.CommentMapper.updateRef", cno);
	}

}
