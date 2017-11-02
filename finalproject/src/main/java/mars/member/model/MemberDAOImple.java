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
		System.out.println(userid);
		int result =sqlMap.selectOne("loginIdCheck", userid);
		System.out.println(result);
		return result;
	}
	
	/*login-PwdCheck*/
	public String pwdCheck(String userid) {
		System.out.println(userid);
		String dbpwd = sqlMap.selectOne("pwdCheck", userid);
		System.out.println(dbpwd);
		return dbpwd;
	}
	
	/*get User Information*/
	public MemberDTO getUserInfo(String userid) {
		MemberDTO dto = new MemberDTO();
		dto = sqlMap.selectOne("getUserInfo", userid);
		return dto;
	}
	

}
