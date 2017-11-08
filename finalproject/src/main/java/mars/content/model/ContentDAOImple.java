package mars.content.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

public class ContentDAOImple implements ContentDAO {
	
	private SqlSessionTemplate sqlMap;

	public ContentDAOImple (SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int uploadContent(HashMap<String, String> info) {
		int result = sqlMap.update("uploadContent", info);
		return result;
	}

}
