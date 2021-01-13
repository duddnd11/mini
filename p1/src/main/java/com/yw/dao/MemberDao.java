package com.yw.dao;

import com.yw.security.CustomUserDetail;
import com.yw.vo.MemberVo;

public interface MemberDao {
	public void insertMember(MemberVo vo);
	public CustomUserDetail getUserById(String id);
}
