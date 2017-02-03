package com.library.eng.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.eng.libraryController;

@Service
public class LibraryService {
	@Autowired
	private LibraryDao libDao;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	//회원가입 폼에서 도서관 리스트 보여주는 메서드
	public List<Library> getselectLibcodeForInsert() {
		logger.debug(this.getClass()+"getselectLibcodeForInsert");
		List<Library> list = libDao.selectLibcodeForInsert();
		logger.debug(list.toString());
		return list;
	}
	//회원가입 메서드
	public int addMember(Member member) {
		return libDao.insertMember(member);
	}
	//관리자 로그인
	public Admin getSelectAdminForLogin(Admin admin) {
		//화면에서 받아온 값
		String AdminId = admin.getADMINID();
		String AdminPw = admin.getADMINPW();
		logger.debug(" *MemberService 화면입력 값 : "+AdminId+"/"+AdminPw);
		//DB로 화면에서 받아온 ID값 넘겨서 조회
		Admin adminList = libDao.selectAdminForLogin(AdminId);
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
	//도서관 추가
	public int addLibrary(Library library) {
		return libDao.insertLibrary(library);
	}
	//도서추가
	public int addBook(Books book) {
		return libDao.insertBook(book);		
	}
	//도서폐기
	public int deleteBook(Discardbooks discardbooks) {
		return libDao.deleteBook(discardbooks);
	}
	//도서의 대여상태수정
	public int updateBookStatus(Books book) {
		return libDao.updateBookStatus(book);
	}
	//도서 대여
	public int addRental(Rental rental) {
		return libDao.insertRental(rental);
	}
	/*public String selectRentalCode(Rental rental) {
		return null;
		use LAST_INSERT_ID();
	}*/
}
