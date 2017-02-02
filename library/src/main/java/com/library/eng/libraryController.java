package com.library.eng;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.library.eng.service.Admin;
import com.library.eng.service.Library;
import com.library.eng.service.Member;
import com.library.eng.service.LibraryService;

@Controller
public class libraryController {
	@Autowired
	private LibraryService memberService;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	//회원 메인페이지
	@RequestMapping(value="/lib/memberHome", method=RequestMethod.GET )
	public String memberHome() {
		logger.debug("회원 메인페이지 GET실행");
		return "/memberHome";
	}
	//회원 가입페이지 도서관 목록 조회
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.GET)
	public String memberAdd(Model model) {
		logger.debug("회원가입 페이지 GET실행");
		List<Library> returnMap = memberService.getselectLibcodeForInsert();
		model.addAttribute("list", returnMap);
		return "/memberAdd";
	}
	//회원 가입페이지 가입처리
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.POST)
	public String memberAdd(Member member) {
		logger.debug("회원가입 페이지 POST실행");
		memberService.addMember(member);
		return "redirect:memberHome";
	}
	//관리자 로그인페이지
	@RequestMapping(value="/lib/adminLogin", method=RequestMethod.GET )
	public String adminLoginMain() {
		logger.debug("관리자 메인페이지 GET실행");
		return "/adminLogin";
	}
	//관리자 로그인
	@RequestMapping(value="/lib/adminLogin", method=RequestMethod.POST)
	public String adminLogin(HttpSession session, Admin admin){
		Admin adminList = memberService.getSelectAdminForLogin(admin);
		logger.debug("관리자 로그인 POST실행");
		if(adminList == null) {
			return "/adminLogin";
		} else {
			session.setAttribute("adminId", adminList.getADMINID());
			session.setAttribute("adminPw", adminList.getADMINPW());
			return "redirect:adminHome";
		}
	}
	//관리자 메인페이지
	@RequestMapping(value="/lib/adminHome", method=RequestMethod.GET)
	public String adminHome() {
		logger.debug("관리자 메인페이지 GET실행");
		return "/adminHome";
	}
	
}
