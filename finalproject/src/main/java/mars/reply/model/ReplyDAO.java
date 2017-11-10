package mars.reply.model;

import java.util.HashMap;
import java.util.List;

public interface ReplyDAO {
   public List<MyHomeReplyDTO> replyList(int content_idx);
   public int addReply(String content);
   public int re_AddReply(HashMap<String, String> map);
   public void update_Reply(HashMap<String, String> map);
   public void delete_Reply(int reply_idx);
   public int ref(int reply_idx);
   public int sunbun(int reply_idx);
}