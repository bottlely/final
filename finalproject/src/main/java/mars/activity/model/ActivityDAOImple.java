package mars.activity.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.member.model.MemberDTO;

public class ActivityDAOImple implements ActivityDAO {
	
	private SqlSessionTemplate sqlMap;

	public ActivityDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	
	public List<ActivityDTO> active_like(int i) {
	
	     List<ActivityDTO> list1 = sqlMap.selectList("active_like",i);
	      return list1;
		
	}
	public List<ActivityDTO> active_reply(int i) {
		 List<ActivityDTO> list1 = sqlMap.selectList("active_reply",i);
	      return list1;
	}
}
