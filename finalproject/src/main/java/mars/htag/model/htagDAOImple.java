package mars.htag.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.htag.model.htagDTO;

public class htagDAOImple implements htagDAO {
	private SqlSessionTemplate sqlMap;	

	public htagDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List<htagDTO> htagSearch(String name) {
		List<htagDTO> list = sqlMap.selectList("htagSearch", name);
		
		return list;
	}
}