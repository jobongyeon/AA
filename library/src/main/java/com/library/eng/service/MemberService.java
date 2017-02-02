package com.library.eng.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.eng.libraryController;

@Service
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	//회원가입 폼에서 도서관 리스트 보여주는 메서드
	public List<Library> getselectLibcodeForInsert() {
		logger.debug(this.getClass()+"getselectLibcodeForInsert");
		List<Library> list = memberDao.selectLibcodeForInsert();
		logger.debug(list.toString());
		return list;
	}
	//회원가입 메서드
	public int addMember(Member member) {
		return memberDao.insertMember(member);
	}
	//관리자 로그인
	public Admin getSelectAdminForLogin(Admin admin) {
		//화면에서 받아온 값
		String AdminId = admin.getADMINID();
		String AdminPw = admin.getADMINPW();
		logger.debug(" *MemberService 화면입력 값 : "+AdminId+"/"+AdminPw);
		Admin adminList = memberDao.selectAdminForLogin(AdminId);
		//데이터베이스에서 가져온 값
		String DBadminId = adminList.getADMINID();
		String DBadminPw = adminList.getADMINPW();
		logger.debug(" *MemberService 데이터베이스 조회 값 : "+DBadminId+"/"+DBadminPw);
		if(AdminId.equals(DBadminId) && AdminPw.equals(DBadminPw)) {
			return adminList;
		}else{
			return null;
		}
	}
}
