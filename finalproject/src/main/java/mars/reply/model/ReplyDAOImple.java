package mars.reply.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class ReplyDAOImple implements ReplyDAO {
   private SqlSessionTemplate sqlMap;

   public ReplyDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }

   public List<MyHomeReplyDTO> replyList(int content_idx) {
      List<MyHomeReplyDTO> list = sqlMap.selectList("replyList", content_idx);
      
      return list;
   }
   
   public int addReply(String content) {
      int content_idx = sqlMap.insert("addReply", content);
      
      return content_idx;
   }

   public int re_AddReply(HashMap<String, String> map) {
      int result = sqlMap.insert("re_Reply", map);
      
      return result;
   }

   public void update_Reply(HashMap<String, String> map) {
      sqlMap.update("update_Reply", map);
   }

   public void delete_Reply(int reply_idx) {
      sqlMap.delete("delete_Reply", reply_idx);
   }

   public int ref(int reply_idx) {
      int ref = sqlMap.selectOne("ref", reply_idx);
      
      return ref;
   }

   public int sunbun(int reply_idx) {
      int sunbun = sqlMap.selectOne("sunbun", reply_idx);
      
      return sunbun;
   }
}