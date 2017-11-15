package mars.ad.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mars.ad.model.ApplyAdDTO;

import org.mybatis.spring.SqlSessionTemplate;

public class ApplyAdDAOImple implements ApplyAdDAO {
	
	private SqlSessionTemplate sqlMap;
	
	public ApplyAdDAOImple() {
		super();
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
	
	public List<ApplyAdDTO> showCurList(int member_idx){
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("member_idx", member_idx);
		List<ApplyAdDTO> list = sqlMap.selectList("showCurList", data);
		return list;
	}
	
	public String showAveNum(Integer i){
		String str = sqlMap.selectOne("showAve", i);
		return str;
	}
	
	public List<ApplyAdDTO> showNum(int member_idx){
		
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("member_idx", member_idx);
		List<ApplyAdDTO> list = sqlMap.selectList("showNum", data);
		return list;
	}
	
	public List<ApplyAdDTO> showList(String ad_idx){
		
		int adidx = Integer.parseInt(ad_idx);
		Map<String, Integer> data = new HashMap<String, Integer>();
		data.put("ad_idx", adidx);
		List<ApplyAdDTO> list = sqlMap.selectList("showList", data);
		return list;
	}
	
	public void insertOkSign(int ad_idx){
		System.out.println("get");
		sqlMap.update("insertOk", ad_idx);
		System.out.println("skdha");
	}

}
