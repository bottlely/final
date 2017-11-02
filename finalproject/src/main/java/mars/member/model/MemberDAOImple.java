package mars.member.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {
	
	private SqlSessionTemplate sqlMap;	

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/*Sign-up*/
	public int memberJoin(MemberDTO dto) {
		int result = sqlMap.insert("memberJoin", dto);
		return result;
	}
	
	/*login-Id Check*/
	public int loginIdCheck(String userid) {
		int result =sqlMap.selectOne("loginIdCheck");
		return result;
	}
	
	/*login-PwdCheck*/
	public String pwdCheck(String userid) {
		String dbpwd = sqlMap.selectOne("pwdCheck", userid);
		return dbpwd;
	}
	
	public MemberDTO getUserInfo(String userid) {
		MemberDTO dto = new MemberDTO();
		dto = sqlMap.selectOne("getUserInfo", userid);
		return dto;
	}
	

}
