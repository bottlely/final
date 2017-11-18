package mars.htag.model;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;

import mars.content.model.ContentDTO;
import mars.htag.model.htagDTO;

public class htagDAOImple implements htagDAO {
   private SqlSessionTemplate sqlMap;   

   public htagDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }
   
   public List<ContentDTO> htagSearch(String name) {
      List<ContentDTO> list = sqlMap.selectList("htagSearch", name);
      
      return list;
   }

   public void add_Htag(HashMap<String, String> map) {
      sqlMap.insert("add_Htag", map);
   }

	public int content_idx(int member_idx) {
		int content_idx = sqlMap.selectOne("content_idx", member_idx);
		
		return content_idx;
	}
}