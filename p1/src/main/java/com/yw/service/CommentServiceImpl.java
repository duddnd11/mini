package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.CommentDao;
import com.yw.vo.CommentVo;

@Service
public class CommentServiceImpl implements CommentService{
	@Autowired
	CommentDao dao;
	
	@Override
	public void writeCommentService(CommentVo vo) {
		dao.writeComment(vo);
	}

	@Override
	public List<CommentVo> commentListService(int mbno) {
		return dao.commentList(mbno);
	}

	@Override
	public CommentVo selectCommentService(int cno) {
		return dao.selectComment(cno);
	}

	@Override
	public void updateRefService(int cno) {
		dao.updateRef(cno);
	}

}
