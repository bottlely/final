package mars.member.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {
	
	private SqlSessionTemplate sqlMap;	

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/*회원가입*/
	public int memberJoin(MemberDTO dto) {
		int result = sqlMap.insert("memberJoin", dto);
		return result;
	}
	
	

}
