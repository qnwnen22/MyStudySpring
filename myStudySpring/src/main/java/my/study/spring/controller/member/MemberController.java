package my.study.spring.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import my.study.spring.model.member.dto.MemberDTO;
import my.study.spring.service.member.MemberService;


@Controller
@RequestMapping("member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class); 
	
	@Inject
	MemberService memberService;
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session) {
		boolean result=memberService.loginCheck(dto,session);
		ModelAndView mav=new ModelAndView();
		if(result) {
			mav.setViewName("home");
		}else {
			mav.setViewName("member/login");
			mav.addObject("message", "error");
		}
		return mav;
		
	}
	
	
	
	@RequestMapping("login.do")
	public String login(Model model) {
		System.out.println("MemberController | login.do");
		model.addAttribute("message","로그인 페이지");
		return "member/login";
	}
	
	@RequestMapping("signUp.do")
	public String signUp(Model model) {
		System.out.println("MemberController | signUp.do");
		model.addAttribute("message", "회원가입 페이지");
		return "member/signUp";
	}
	
	
	@RequestMapping("findID.do")
	public String findID(Model model) {
		System.out.println("MemberController | findID.do");
		model.addAttribute("message", "아이디 찾기 페이지");
		return "member/findID";
	}
	@RequestMapping("findPW.do")
	public String findPW(Model model) {
		System.out.println("MemberController | findPW.do");
		model.addAttribute("message", "비밀번호 찾기 페이지");
		return "member/findPW";
	}
	
	@RequestMapping("signUp.do")
	public ModelAndView signUp(MemberDTO dto) {
		
		ModelAndView mav=new ModelAndView();
		
		return mav;
	}
	
//	@RequestMapping("idC.do")
//	public String idC(Model model) {
//		System.out.println("MemberController | idC.do");
//	}
	
	
	
}
