package com.yw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.yw.dao.MemberDao;
import com.yw.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder; 
	
	@Override
	public void insertMemberAction(MemberVo vo) {
		String encodedPassword = bCryptPasswordEncoder.encode(vo.getPassword());
		vo.setPassword(encodedPassword);
		dao.insertMember(vo);
	}

}
