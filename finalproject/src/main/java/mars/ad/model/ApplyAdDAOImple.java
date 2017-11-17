package mars.ad.model;

import java.util.ArrayList;
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
	
	public List<ApplyAdDTO> adPayList(){
		Map<String, Integer> data = new HashMap<String, Integer>();  
		List<ApplyAdDTO> list = sqlMap.selectList("adPayList", data);
		System.out.println(list.size());
		return list;
	}
	
	public int insert(ApplyAdDTO adDto, String ad_content){
		adDto.setAd_content(ad_content);
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
	
	public String insertOkSign(int ad_idx, int member_idx){
		sqlMap.update("insertOk", ad_idx);
		String email = sqlMap.selectOne("getMail", member_idx);
		return email;
	}
	
	public String insertNoSign(int ad_idx, int member_idx){
		sqlMap.update("insertNo", ad_idx);
		String email = sqlMap.selectOne("getMail", member_idx);
		return email;
	}
	
	public void goCount(String data){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("ad_idx", Integer.parseInt(data));
		sqlMap.update("goCount", map);
	}
	
	public void postAd(String data){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("ad_idx", Integer.parseInt(data));
		sqlMap.update("postAd", map);
	}
	
	public List<ApplyAdDTO> showAd(String str){
		Map<String, String> data = new HashMap<String, String>();
		
		//Map<String, Integer> data = new HashMap<String, Integer>();
	//	data.put("favor_movie", String.valueOf(str.charAt(0)));
		String[] arr = new String[8];
		List<ApplyAdDTO> list = new ArrayList<ApplyAdDTO>();
		
		arr = str.split("/");
		for(int i=0; i<arr.length; i++){
			List<ApplyAdDTO> newList = new ArrayList<ApplyAdDTO>();
			data.put("favor", arr[i]);
			newList = sqlMap.selectList("showAd", data);
			//System.out.println(list.get(0).getName());
			list.addAll(newList);		
		}
		
	//	for(int i=0; i<list.size(); i++){
	//		System.out.println(list.get(i).getAd_name());
	//	}
			
	//	List<ApplyAdDTO> list = sqlMap.selectList("showAd", str);
		
		return list;
	}

}
