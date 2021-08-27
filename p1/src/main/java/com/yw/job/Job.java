package com.yw.job;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Job {
	@Autowired
	SqlSession sqlSession;
	
	@Scheduled(cron="0 0 3 1/1 * ?")
	public void run() {
		sqlSession.update("com.yw.matchMapper.matchDateOver");
	}
	
}
