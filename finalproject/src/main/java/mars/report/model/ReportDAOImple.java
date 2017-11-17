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
	
	public List<ReportDTO> list(int cp, int ls, int cate) {
		Map data=new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		data.put("cate", cate);
		System.out.println(cate);
		if(cate==0) {
		List<ReportDTO> lists = sqlMap.selectList("reportList",data);
		return lists;
		}else {
		List<ReportDTO> lists = sqlMap.selectList("partList",data);
		return lists;
		}
			
		
	}
	
	public int allReport() {
		int all = sqlMap.selectOne("allreport");
		return all;
	}
	
	public int partReport(int cate) {
		int part = sqlMap.selectOne("partreport",cate);
		return part;
	}
}
