package com.yw.service;

import java.util.List;

import com.yw.vo.CommentVo;

public interface CommentService {
	public void writeCommentService(int mbno,String comment, String id,int level,int ref);
	public List<CommentVo> commentListService(int mbno);
	public CommentVo topCommentService();
	public void updateRefService(int cno);
}
