package com.yw.service;

import java.util.List;

import com.yw.vo.CommentVo;

public interface CommentService {
	public void writeCommentService(CommentVo vo);
	public List<CommentVo> commentListService(int mbno);
	public CommentVo selectCommentService(int cno);
	public void updateRefService(int cno);
}
