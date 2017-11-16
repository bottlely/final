package mars.report.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class ReportDAOImple implements ReportDAO{
	
	private SqlSessionTemplate sqlMap;

	public ReportDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<ReportDTO> list(int cp, int ls) {
		Map data=new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		List<ReportDTO> lists = sqlMap.selectList("reportList",data);
		return lists;
	}
	
	public int allReport() {
		int all = sqlMap.selectOne("allreport");
		return all;
	}
}
