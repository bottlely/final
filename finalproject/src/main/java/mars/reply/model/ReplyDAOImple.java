package mars.reply.model;

import java.util.*;

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
   
   public void addReply(HashMap<String, String> map) {
      sqlMap.insert("addReply", map);
   }

   public void re_AddReply(HashMap<String, String> map) {
     sqlMap.insert("re_AddReply", map);
      
   }

   public void update_Reply(HashMap<String, String> map) {
      sqlMap.update("update_reply", map);
   }

   public void delete_Reply(HashMap<String, String> map) {
      sqlMap.delete("delete_Reply", map);
   }

   public int ref(int reply_idx) {
      int ref = sqlMap.selectOne("ref", reply_idx);
         
         return ref;
      }

      public int sunbun(HashMap<String, String> map) {
         int sunbun = sqlMap.selectOne("sunbun", map);
         
         return sunbun;
      }

   public int content_idx_ref(int content_idx) {
      int ref = sqlMap.selectOne("content_idx_ref", content_idx);
      return ref;
   }

   public int reply_idx_ref(int reply_idx) {
      int ref = sqlMap.selectOne("reply_idx_ref", reply_idx);
      
      return ref;
   }

   public int member_idx(int content_idx) {
      int member_idx = sqlMap.selectOne("member_idx", content_idx);
      
      return member_idx;
   }

   public void like(HashMap<String, String> map) {
      sqlMap.insert("like", map);
   }

   public int likeSelect(HashMap<String, String> map) {
      int result = sqlMap.selectOne("likeSelect", map);
      
      return result;
   }

   public void like_delete(HashMap<String, String> map) {
      sqlMap.delete("like_delete", map);
   }

   public void delete_re_Reply(HashMap<String, String> map) {
      sqlMap.delete("delete_re_Reply", map);
   }

   public int lev(HashMap<String, String> map) {
      int lev = sqlMap.selectOne("lev", map);
      
      return lev;
   }

	public int likeCount(int content_idx) {
		int count = sqlMap.selectOne("likeCount", content_idx);
		
		return count;
	}
}