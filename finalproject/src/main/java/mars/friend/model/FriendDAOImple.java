package mars.friend.model;

import java.sql.*;
import java.util.*;
import mars.member.model.*;

import org.mybatis.spring.SqlSessionTemplate;

public class FriendDAOImple implements FriendDAO {
	
	private SqlSessionTemplate sqlMap;	
	
	public FriendDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int friendAdd(FriendDTO dto) {
		//HashMap<String, Integer> map = new HashMap<String, Integer>();
		//map.put("user1_idx", user1_idx);
		//map.put("user2_idx", user2_idx);
		int result = sqlMap.insert("friendAdd", dto);
		return result;
	}
	
	public List<MemberDTO> followingList(int user1_idx) {
		List<MemberDTO> list = sqlMap.selectList("followingList", user1_idx);
		//System.out.println("list1:" + list);
		return list;
	}
	
	public List<MemberDTO> followerList(int user2_idx) {
		List<MemberDTO> list = sqlMap.selectList("followerList", user2_idx);
		//System.out.println("list2:" + list);
		return list;
	}
	
	public List<MemberDTO> blackList(int user2_idx) {
		List<MemberDTO> list = sqlMap.selectList("blackList", user2_idx);
		//System.out.println("list3:" + list);
		return list;
	}
	
	public List<MemberDTO> searchNameList(String search_name, int user_idx) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("search_name", search_name);
		map.put("user_idx", String.valueOf(user_idx));
		List<MemberDTO> list = sqlMap.selectList("resultList", map);
		//System.out.println("list5<FriendDAOImple>: "+list);
		return list;
	}
	
}