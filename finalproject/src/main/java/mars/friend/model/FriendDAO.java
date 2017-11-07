package mars.friend.model;

import java.util.*;
import mars.member.model.*;

public interface FriendDAO {
	
	public int friendAdd(FriendDTO dto);
	public List<MemberDTO> followingList(int user1_idx);
	public List<MemberDTO> followerList(int user2_idx);
	public List<MemberDTO> blackList(int user2_idx);
	public List<MemberDTO> searchNameList(String search_name, int user_idx);
	
}