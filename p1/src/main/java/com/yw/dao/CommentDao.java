package com.yw.dao;

import java.util.List;

import com.yw.vo.CommentVo;

public interface CommentDao {
	public void writeComment(CommentVo vo);
	public List<CommentVo> commentList(int mbno);
	public CommentVo selectComment(int cno);
	public void updateRef(int cno);
}
