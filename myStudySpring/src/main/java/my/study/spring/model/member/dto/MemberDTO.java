package my.study.spring.model.member.dto;

import java.util.Date;

public class MemberDTO {

	private String userid;
	private String passwd;
	private String name;
	private String nickname;
	private String email;
	private String hp;
	private String addr;
	private Date join_date;

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", nickname=" + nickname
				+ ", email=" + email + ", hp=" + hp + ", addr=" + addr + ", join_date=" + join_date + "]";
	}
	
	public MemberDTO() {
	}

	public MemberDTO(String userid, String passwd, String name, String nickname, String email, String hp, String addr,
			Date join_date) {
		this.userid = userid;
		this.passwd = passwd;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.hp = hp;
		this.addr = addr;
		this.join_date = join_date;
	}
}
