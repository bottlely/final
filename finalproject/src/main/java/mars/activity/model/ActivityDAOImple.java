package mars.activity.model;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;
import mars.reply.model.ReplyDTO;

public class ActivityDAOImple implements ActivityDAO {
	
	private SqlSessionTemplate sqlMap;	
	
	public ActivityDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}	
	
	public void ac_insert_like(int from_idx, int to_idx, int content_idx, Date actdate, String name, String profile_img) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("actdate", String.valueOf(actdate));//諛쏆븘�삱�븣 stinrg->date �삎蹂��솚�빐�빞�븿
		map.put("name", name);
		map.put("profile_img", profile_img);
		
		sqlMap.insert("ac_insert_like", map);
	}
	
	public ReplyDTO ac_reply_list(int member_idx, int content_idx, int session_idx) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("from_idx", member_idx);
		map.put("content_idx", content_idx);
		map.put("to_idx", session_idx);
		
		ReplyDTO list = sqlMap.selectOne("ac_like", map);
		return list;
		
	}
	
	public void ac_delete(int from_idx, int to_idx, int content_idx) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("from_idx", from_idx);
		map.put("content_idx", content_idx);
		map.put("to_idx", to_idx);
		map.put("flag", 1);
		
		sqlMap.delete("ac_delete", map);
	}
	
	public int ac_insert_follow(FriendDTO dto, String name, String profile_img) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(dto.getUser2_idx()));
		map.put("to_idx", String.valueOf(dto.getUser1_idx()));
		map.put("name", name);
		map.put("profile_img", profile_img);
		
		int res = sqlMap.insert("ac_insert_follow", map);
		return res;
	}
	
	public void ac_delete_follow(int from_idx, int to_idx) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("from_idx", from_idx);
		map.put("content_idx", 0);
		map.put("to_idx", to_idx);
		map.put("flag", 3);
		
		sqlMap.delete("ac_delete", map);
	}
	
	public void ac_insert_reply(int from_idx, int to_idx, int content_idx, String content, String name,
			String profile_img, int reply_idx) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("content", content);
		map.put("name", name);
		map.put("profile_img", profile_img);
		map.put("reply_idx", String.valueOf(reply_idx));
		
		sqlMap.insert("ac_insert_reply", map);
		
	}
	
	/*public ReplyDTO ac_new_list(int from_idx, int to_idx, int content_idx, String content) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("content", content);
		map.put("reply_idx", String.valueOf(0));
		
		ReplyDTO list = sqlMap.selectOne("ac_insert_reply", map);
		return list;
	}
	*/
	public ReplyDTO ac_getIdx(int from_idx, int to_idx, int content_idx, String content) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("content", content);
		
		ReplyDTO dto = sqlMap.selectOne("ac_getIdx", map);
		return dto;
	}
	
	public int ac_reply_update(String content, int reply_idx) {
		System.out.println("content; "+content);
		System.out.println("reply_idx: "+reply_idx);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("content", content);
		map.put("reply_idx", String.valueOf(reply_idx));
		
		int res = sqlMap.selectOne("ac_reply_update", map);
		return res;
	}
	
}
