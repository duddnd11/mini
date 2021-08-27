package com.yw.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.yw.dao.MemberDao;

public class CustomUserDetailService implements UserDetailsService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserDetail users = memberDao.getUserById(username);
		if(users ==null) {
			throw new UsernameNotFoundException("username"+username+"not found");
		}
		return users;
	}
	
	public List<CustomUserDetail> memberListService(){
		return memberDao.memberList();
	}
}
