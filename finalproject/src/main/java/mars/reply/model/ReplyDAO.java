package mars.reply.model;

import java.util.*;

public interface ReplyDAO {
   public List<MyHomeReplyDTO> replyList(int content_idx);
   public void addReply(HashMap<String, String> map);
   public void re_AddReply(HashMap<String, String> map);
   public void update_Reply(HashMap<String, String> map);
   public void delete_Reply(HashMap<String, String> map);
   public int ref(int reply_idx);
   public int sunbun(HashMap<String, String> map);
   public int content_idx_ref(int content_idx);
   public int reply_idx_ref(int reply_idx);
   public int member_idx(int content_idx);
   public void like(HashMap<String, String> map);
   public int likeSelect(HashMap<String, String> map);
   public void like_delete(HashMap<String, String> map);
}