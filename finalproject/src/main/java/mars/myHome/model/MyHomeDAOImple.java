package mars.myHome.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

public class MyHomeDAOImple implements MyHomeDAO {
	
	private SqlSessionTemplate sqlMap;

	public MyHomeDAOImple (SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public String refreshPage() {
		// TODO Auto-generated method stub
		return null;
	}

	public String moreButtonForm() {
		// TODO Auto-generated method stub
		return null;
	}

	public int introUpload(HashMap<String, String> info) {
		int result = sqlMap.update("profileUpload", info);
		return result;
	}

}
