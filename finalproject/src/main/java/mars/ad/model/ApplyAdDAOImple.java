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
	
	//������� ���� ��û�� ����� ����
	public List<ApplyAdDTO> showCurList(){
		//member_idx ã�Ƽ� �Ѱܾ���! ���Ƿ� ��!(�α�����)
		Map<String, Integer> data = new HashMap<String, Integer>();  
		List<ApplyAdDTO> list = sqlMap.selectList("showCurList", data);
		return list;
	}
	
	public String showAveNum(Integer i){
		//member_idx ã�Ƽ� �Ѱܾ���! ���Ƿ� ��!(�α�����)
		//� ���� ���� check!
		//���� ���ϴ� str���� / �� �����ؼ� �ִ� �ڿ��� 7�� �ڸ���!
		
	//	Map<String, Integer> data = new HashMap<String, Integer>();
	//	data.put("ad_idx", i);
	//	List<ApplyAdDTO> list = sqlMap.selectList("showAve", data);
		String str = sqlMap.selectOne("showAve", i);
		//null�̰ų� all_amount��!
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
