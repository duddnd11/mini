package com.yw.service;

import java.util.List;

import com.yw.vo.BlackListVo;

public interface BlackListService {
	public List<BlackListVo> blackListService();
	public List<BlackListVo> blackListPageService(int offset);
	public List<BlackListVo> relatedBlackListService(int offset);
	public BlackListVo blackListDetailService(int no);
	public void blackListWriteService(BlackListVo vo);
	public void blackListModifyService(BlackListVo vo);
	public void blackListDeleteService(int no);
	public void updateHitCountService(int no);
}
