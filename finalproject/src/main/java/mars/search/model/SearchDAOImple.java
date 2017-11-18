package mars.search.model;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import mars.member.model.MemberDTO;
import mars.member.model.MyHomeMemberDTO;
import mars.myHome.model.MyHomeDTO;

public class SearchDAOImple implements SearchDAO {
   private SqlSessionTemplate sqlMap;   

   public SearchDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }
   
   public List<MyHomeMemberDTO> memberSearch(String name) {
      List<MyHomeMemberDTO> list = sqlMap.selectList("memberSearch", name);
      
      return list;
   }
}