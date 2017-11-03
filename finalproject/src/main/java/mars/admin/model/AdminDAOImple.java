package mars.admin.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.member.model.MemberDTO;

public class AdminDAOImple implements AdminDAO {
	
	private SqlSessionTemplate sqlMap;	

	public AdminDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<MemberDTO> admin_member() {
		List<MemberDTO> list = sqlMap.selectList("admin_member"); 
		
		return list;
	}

	public int admin_memberDelete(int idx) {
		int count = sqlMap.delete("admin_memberDelete", idx);
		
		return count;
	}

	public List<MemberDTO> admin_nameSearch(String name) {
		List<MemberDTO> list = sqlMap.selectList("admin_nameSearch", name);
		
		return list;
	}

	public List<MemberDTO> admin_idSearch(String id) {
		List<MemberDTO> list = sqlMap.selectList("admin_idSearch", id);
		
		return list;
	}
	
	
}