package com.yw.service;

import com.yw.vo.ApplyVo;

public interface ApplyService {
	public void applyService(ApplyVo vo);
	public int checkApplyService(int mbno,String id);
}
