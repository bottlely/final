package mars.activity.model;

import java.sql.Date;
import java.util.List;

import mars.activity.model.ActivityDTO;
import mars.follow.model.FollowDTO;
import mars.friend.model.FriendDTO;
import mars.reply.model.ReplyDTO;

public interface ActivityDAO {
	
	 public void ac_insert_like(int from_idx, int to_idx, int content_idx, Date actdate, String name, String profile_img);
	 public ReplyDTO ac_reply_list(int member_idx, int content_idx, int session_idx);
	 public void ac_delete(int from_idx, int to_idx, int content_idx);
	 public int ac_insert_followdb(FriendDTO dto, String name, String profile_img);
	 public int ac_follow_to_act(FriendDTO dto, String name, String profile_img);
	 public void ac_delete_follow(int from_idx, int to_idx);
	 public void ac_del_followdb(int from_idx, int to_idx);
	 public void ac_insert_reply(int from_idx, int to_idx, int content_idx, String content, String name, String profile_img, int reply_idx, int ref, int lev);
	 public ReplyDTO ac_getIdx(int from_idx, int to_idx, int content_idx, String content);
	 public ReplyDTO ac_getRef(int from_idx, int to_idx, int content_idx, String content);
	 public ReplyDTO ac_getLev(int reply_idx, int ref, int content_idx);
	 public int ac_reply_update(String content, int reply_idx);
	 public int ac_reply_delete(int reply_idx, int ref, int content_idx, int lev);
	 public int ac_re_reply_delete(int ref, int content_idx);
	 public List<ActivityDTO> ac_list(int to_idx);
	 public int ac_list_count(int to_idx);
	 
}
