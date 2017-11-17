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
	
	
	public List<ActivityDTO> active_like(int i) {
	
	     List<ActivityDTO> list1 = sqlMap.selectList("active_like",i);
	      return list1;
		
	}
	public List<ActivityDTO> active_reply(int i) {
		 List<ActivityDTO> list1 = sqlMap.selectList("active_reply",i);
	      return list1;
	}
	
	public void ac_insert_like(int from_idx, int to_idx, int content_idx, Date actdate, String name, String profile_img) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("actdate", String.valueOf(actdate));//받아올때 stinrg->date 형변환해야함
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
	
	public void ac_insert_reply(int from_idx, int to_idx, int content_idx, String content, Date actdate, String name,
			String profile_img) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("from_idx", String.valueOf(from_idx));
		map.put("to_idx", String.valueOf(to_idx));
		map.put("content_idx", String.valueOf(content_idx));
		map.put("content", content);
		map.put("actdate", String.valueOf(actdate));//받아올때 stinrg->date 형변환해야함
		map.put("name", name);
		map.put("profile_img", profile_img);
		
		sqlMap.insert("ac_insert_like", map);
		
	}
}
