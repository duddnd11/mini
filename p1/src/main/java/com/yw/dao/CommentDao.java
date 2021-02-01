package com.yw.dao;

import java.util.List;

import com.yw.vo.CommentVo;

public interface CommentDao {
	public void writeComment(int mbno,String comment, String id,int level,int ref);
	public List<CommentVo> commentList(int mbno);
	public CommentVo topComment();
	public void updateRef(int cno);
}
