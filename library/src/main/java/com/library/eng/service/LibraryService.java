package com.library.eng.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.eng.service.Vo.Admin;
import com.library.eng.service.Vo.Books;
import com.library.eng.service.Vo.Discardbooks;
import com.library.eng.service.Vo.Library;
import com.library.eng.service.Vo.Member;
import com.library.eng.service.Vo.Payment;
import com.library.eng.service.Vo.Rental;

@Service
public class LibraryService {
	@Autowired
	private LibraryDao libDao;
	private static final Logger logger = LoggerFactory.getLogger(LibraryService.class);
	
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
	
	//관리자 도서 관리 도서 폐기 : 도서관리 - 도서폐기 도서폐기전 ajax로 도서 정보 가져오기
	public Books adminBookInfo(int BOOKCODE) {
		logger.debug("Service adminBookInfo");
		return libDao.adminBookInfo(BOOKCODE);
	}
	
	//도서의 대여상태수정
	public int updateBookStatus(Books book) {
		return libDao.updateBookStatus(book);
	}
	//도서 대여
	public int addRental(Rental rental) {
		return libDao.insertRental(rental);
	}
	/*public Cost selectCostForPayment(Cost cost) {
		return libDao.selectCost(cost);
	}*/
	public int addPayment(Payment payment) {
		return libDao.insertPayment(payment);
	}
	//관리자 메인페이지 : 도서대출현황
	public List<Rental> selectRentalList() {
		logger.debug(" service selectRentalList ");
		return libDao.selectRentalList();		
	}
	

}