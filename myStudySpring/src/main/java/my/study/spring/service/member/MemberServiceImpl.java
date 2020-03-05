package my.study.spring.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import my.study.spring.model.member.dao.MemberDAO;
import my.study.spring.model.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;
	
	@Override
	public void signUp(MemberDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public String idC(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean loginCheck(MemberDTO dto, HttpSession session) {
		System.out.println("서비스");
		boolean result=memberDao.loginCheck(dto, session);
		if(result) {
			MemberDTO dto2=viewMember(dto.getUserid());
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("nickname", dto2.getNickname());
			System.out.println(session.getAttribute("userid"));
			System.out.println(session.getAttribute("nickname"));
			
		}
		return result;
	}

	private MemberDTO viewMember(String userid) {
		return memberDao.viewMember(userid);
	}

	@Override
	public int login(String userid, String passwd) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String findID(String name, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
