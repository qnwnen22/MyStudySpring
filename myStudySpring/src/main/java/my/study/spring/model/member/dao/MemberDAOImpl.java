package my.study.spring.model.member.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import my.study.spring.model.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sqlSession;
	
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
		System.out.println("DAO");
		String nickname=sqlSession.selectOne("member.login_check", dto);
		return (nickname==null) ? false : true;
	}
	
	public MemberDTO viewMember(String userid) {
		return sqlSession.selectOne("member.viewMember",userid); 
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

}
