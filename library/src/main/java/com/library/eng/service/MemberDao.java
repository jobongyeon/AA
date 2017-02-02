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
	
	private final String Member_NS = "com.library.eng.";

	public int insertMember(Member member) {
		logger.debug(this.getClass()+"insertMember");
		return sqlSession.insert(Member_NS+"memberAdd", member);
	}
	public List<Library> selectLibcodeForInsert() {
		logger.debug(this.getClass()+"selectLibcodeForInsert");
		return sqlSession.selectList(Member_NS+"selectMemberAdd");
	}
}
