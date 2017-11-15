package mars.friend.model;

import java.util.*;
import mars.member.model.*;

public interface FriendDAO {
	
	public int following(FriendDTO dto);
	public int deleteFriend(FriendDTO dto);
	public List<MemberDTO> followingList(int user1_idx);
	public List<MemberDTO> followerList(int user2_idx);
	public List<MemberDTO> blackList(int user2_idx);
	public List<MemberDTO> searchNameList(String search_name, int user_idx);
	public int unblock(int user1_idx, int user2_idx);
	public int block(int user1_idx, int user2_idx);
	public int removeFollower(int user1_idx, int user2_idx);
	public FriendDTO relation(int user1_idx, int user2_idx);
	//public List<MemberDTO> blackCheck(String user1_idx, String user2_idx);
	
}