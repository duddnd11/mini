package com.yw.dao;

import com.yw.vo.ApplyVo;

public interface ApplyDao {
	public void apply(ApplyVo vo);
	public int checkApply(String id, int mbno);
}
