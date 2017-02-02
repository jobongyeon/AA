package com.library.eng.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.library.eng.libraryController;

@Repository
public class MemberDao {
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NS = "com.library.eng.";

	public int insertMember(Member member) {
		logger.debug(this.getClass()+" insertMember");
		return sqlSession.insert(NS+"memberAdd", member);
	}
	public List<Library> selectLibcodeForInsert() {
		logger.debug(this.getClass()+" selectLibcodeForInsert");
		return sqlSession.selectList(NS+"selectMemberAdd");
	}
	public Admin selectAdminForLogin(String AdminId) {
		logger.debug(this.getClass()+" MemberDao "+AdminId+" selectAdminForLogin");
		return sqlSession.selectOne(NS+"selectAdminLogin", AdminId);
	}
}
