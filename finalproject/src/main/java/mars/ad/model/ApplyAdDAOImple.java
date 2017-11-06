package mars.ad.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mars.ad.model.ApplyAdDTO;

import org.mybatis.spring.SqlSessionTemplate;

public class ApplyAdDAOImple implements ApplyAdDAO {
	private SqlSessionTemplate sqlMap;
	
	public ApplyAdDAOImple() {
		// TODO Auto-generated constructor stub
	}
	public ApplyAdDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap=sqlMap;
	}
	
	public List<ApplyAdDTO> adList(){
		
		Map<String, Integer> data = new HashMap<String, Integer>();  
		List<ApplyAdDTO> list = sqlMap.selectList("adList", data);
		return list;
	}
	
	public int insert(ApplyAdDTO adDto){
		
		int cnt = sqlMap.insert("addAdForm", adDto);
		return cnt;
	}

}
