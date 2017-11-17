package mars.mtag.model;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import mars.htag.model.htagDTO;

public class mtagDAOImple implements mtagDAO {
   private SqlSessionTemplate sqlMap;   

   public mtagDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }

   public void add_Mtag(HashMap<String, String> map) {
      sqlMap.insert("add_Mtag", map);
   }
}