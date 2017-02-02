package com.library.eng;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.library.eng.service.Library;
import com.library.eng.service.Member;
import com.library.eng.service.MemberService;

@Controller
public class libraryController {
	@Autowired
	private MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	@RequestMapping(value="/lib/memberHome", method=RequestMethod.GET )
	public String memberHome() {
		logger.debug(this.getClass()+"회원 메인페이지 GET실행");
		return "/memberHome";
	}
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.GET)
	public String memberAdd(Model model) {
		logger.debug(this.getClass()+"회원가입 페이지 GET실행");
		List<Library> returnMap = memberService.getselectLibcodeForInsert();
		model.addAttribute("list", returnMap);
		return "/memberAdd";
	}
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.POST)
	public String memberAdd(Member member) {
		logger.debug(this.getClass()+"회원가입 페이지 POST실행");
		memberService.addMember(member);
		return "redirect:memberHome";
	}
}
