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
	public void writeCommentService(int mbno, String comment, String id,int level,int ref) {
		dao.writeComment(mbno, comment, id,level,ref);
	}

	@Override
	public List<CommentVo> commentListService(int mbno) {
		return dao.commentList(mbno);
	}

	@Override
	public CommentVo topCommentService() {
		return dao.topComment();
	}

	@Override
	public void updateRefService(int cno) {
		dao.updateRef(cno);
	}

}
