package com.yw.service;

import java.util.List;

import com.yw.vo.ApplyVo;

public interface ApplyService {
	public void applyService(ApplyVo vo);
	public int checkApplyService(int mbno,String id);
	public List<ApplyVo> applyListService(int mbno);
	public void updateStateService(int applyno);
	public void updateStateFailService(int applyno, int mbno);
}
