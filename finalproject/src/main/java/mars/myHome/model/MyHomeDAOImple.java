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

	public int profileUpload(HashMap<String, String> info) {
		int result = sqlMap.update("profileUpload", info);
		return result;
	}

	public int backgroundUpload(HashMap<String, String> info) {
		int result = sqlMap.update("backgroundUpload", info);
		return result;
	}

	public int introUpload(HashMap<String, String> info) {
		int result = sqlMap.update("introUpload", info);
		return result;
	}

	public void visitorUpdate(String member_idx) {
		sqlMap.update("visitorUpdate", member_idx);
	}

	public void visitorTodayReset(String member_idx) { //차후 관리자 페이지에 넣아야 함.  
		sqlMap.update("visitorTodayReset", member_idx);
	}

	public MyHomeDTO myHomeSource(String member_idx) {
		MyHomeDTO dto  = sqlMap.selectOne("myHomeSource",member_idx);
		return dto;
	}

	public int openCoverage(HashMap<String, Integer> info) {
		int result = sqlMap.update("openCoverage", info);
		return result;
	}

}
