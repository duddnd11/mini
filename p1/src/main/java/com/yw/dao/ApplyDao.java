package com.yw.dao;

import java.util.List;

import com.yw.vo.ApplyVo;

public interface ApplyDao {
	public void apply(ApplyVo vo);
	public int checkApply(String id, int mbno);
	public List<ApplyVo> applyList(int mbno);
	public void updateState(int applyno);
	public void updateStateFail(int applyno, int mbno);
}
