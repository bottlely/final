package mars.activity.model;

import java.sql.Date;
import java.util.List;

import mars.activity.model.ActivityDTO;
import mars.follow.model.FollowDTO;
import mars.friend.model.FriendDTO;
import mars.reply.model.ReplyDTO;

public interface ActivityDAO {
	
	 public List<ActivityDTO> active_like(int i);
	 public List<ActivityDTO> active_reply(int i);
	 public void ac_insert_like(int from_idx, int to_idx, int content_idx, Date actdate, String name, String profile_img);
	 public ReplyDTO ac_reply_list(int member_idx, int content_idx, int session_idx);
	 public void ac_delete(int from_idx, int to_idx, int content_idx);
	 public int ac_insert_follow(FriendDTO dto, String name, String profile_img);
	 public void ac_delete_follow(int from_idx, int to_idx);
	 public void ac_insert_reply(int from_idx, int to_idx, int content_idx, String content, Date actdate, String name, String profile_img);
	 
	 
}
