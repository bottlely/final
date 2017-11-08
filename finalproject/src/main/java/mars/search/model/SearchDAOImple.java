package mars.search.model;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import mars.member.model.MemberDTO;

public class SearchDAOImple implements SearchDAO {
   private SqlSessionTemplate sqlMap;   

   public SearchDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }
   
   public List<MemberDTO> memberSearch(String name) {
      List<MemberDTO> list = sqlMap.selectList("memberSearch", name);
      return list;
   }

}