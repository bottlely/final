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
	
	//현재까지 내가 신청한 광고들 상태
	public List<ApplyAdDTO> showCurList(){
		//member_idx 찾아서 넘겨야함! 임의로 줌!(로그인한)
		Map<String, Integer> data = new HashMap<String, Integer>();  
		List<ApplyAdDTO> list = sqlMap.selectList("showCurList", data);
		return list;
	}
	
	public String showAveNum(Integer i){
		//member_idx 찾아서 넘겨야함! 임의로 줌!(로그인한)
		//어떤 광고 인지 check!
		//지금 구하는 str에서 / 로 구분해서 최대 뒤에서 7개 자르기!
		
	//	Map<String, Integer> data = new HashMap<String, Integer>();
	//	data.put("ad_idx", i);
	//	List<ApplyAdDTO> list = sqlMap.selectList("showAve", data);
		String str = sqlMap.selectOne("showAve", i);
		//null이거나 all_amount값!
	//	System.out.println(str);
	//	return list;
		return str;
	}
	
	public List<ApplyAdDTO> showNum(){
		Map<String, Integer> data = new HashMap<String, Integer>();  
		List<ApplyAdDTO> list = sqlMap.selectList("showNum", data);
	//	System.out.println("list = "+list.size());
		return list;
	}

}
