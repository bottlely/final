package mars.report.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class ReportDAOImple implements ReportDAO{
	
	private SqlSessionTemplate sqlMap;

	public ReportDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<ReportDTO> list() {
		List<ReportDTO> lists = sqlMap.selectList("reportList");
		return lists;
	}
}
