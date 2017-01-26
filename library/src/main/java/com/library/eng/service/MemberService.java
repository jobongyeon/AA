package com.library.eng.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.library.eng.libraryController;

public class MemberService {
	@Autowired
	private MemberDao memberDao;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);

	public Map<String, Object> getselectLibcodeForInsert() {
		logger.debug(this.getClass()+"getselectLibcodeForInsert");
		Map<String, Integer> map = new HashMap<String, Integer>();
		List<Library> list = memberDao.selectLibcodeForInsert(map);
		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("list", list);
		return returnMap;
	}
}
