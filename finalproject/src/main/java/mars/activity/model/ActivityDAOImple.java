package mars.activity.model;

import org.mybatis.spring.SqlSessionTemplate;

public class ActivityDAOImple implements ActivityDAO {
	
	private SqlSessionTemplate sqlMap;

	public ActivityDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
}
