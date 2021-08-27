package com.yw.dao;

import java.util.List;

import com.yw.vo.BlackListVo;

public interface BlackListDao {
	public List<BlackListVo> blackList();
	public List<BlackListVo> blackListPage(int offset);
	public List<BlackListVo> relatedBlackList(int offset);
	public BlackListVo blackListDetail(int no);
	public void blackListWrite(BlackListVo vo);
	public void blackListModify(BlackListVo vo);
	public void blackListDelete(int no);
	public void updateHitCount(int no);
}
