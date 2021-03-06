package my.study.spring.model.member.dao;

import javax.servlet.http.HttpSession;

import my.study.spring.model.member.dto.MemberDTO;

public interface MemberDAO {
	
//	회원가입*
//	로그인*
//	아이디 찾기*
//	비밀번호 찾기
//	개인정보 수정
//	로그인 체크*
//	
//	관리자기능)
//		계정삭제
	
	public void signUp(MemberDTO dto); // 회원가입
	public String idC(String userid); // 아이디 중복확인
	public boolean loginCheck(MemberDTO dto, HttpSession session); //로그인 체크
	public int login(String userid, String passwd); //로그인
	public String findID(String name, String email); //아이디찾기
	public MemberDTO viewMember(String userid);
	
	
	
}
