package mars.myHome.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.report.model.ReportDTO;

public class MyHomeDAOImple implements MyHomeDAO {

	private SqlSessionTemplate sqlMap;

	public MyHomeDAOImple(SqlSessionTemplate sqlMap) {
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

	public MyHomeDTO myHomeSource(String member_idx) {
		MyHomeDTO dto = sqlMap.selectOne("myHomeSource", member_idx);
		return dto;
	}

	public int openCoverage(HashMap<String, Integer> info) {
		int result = sqlMap.update("openCoverage", info);
		return result;
	}

	public int reportSend(ReportDTO dto) {
		int result = sqlMap.insert("sendReport_user", dto);
		return result;
	}

	public int visitorTodayReset() {
		int result = sqlMap.update("visitorTodayReset");
		return result;
	}

	public List<MyHomeDTO> nameList() {
		List<MyHomeDTO> nameList = sqlMap.selectList("nameList");
		return nameList;
	}

}
