package mars.admin.model;

import java.util.*;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;

public interface AdminDAO {
	
   public List<MemberDTO> admin_member();
   public int admin_memberDelete(int idx);
   public List<MemberDTO> admin_nameSearch(String name);
   public List<MemberDTO> admin_idSearch(String id);
   public int ff_delete(int idx);
   public int favor_movie();
   public int favor_sport();
   public int favor_fashion();
   public int favor_food();
   public int favor_music();
   public int favor_beauty();
   public int favor_travel();
   public int favor_dance();
   public List<MemberDTO> detail_Search(HashMap<String, String> map);
   public List<MemberDTO> noCity_Detail_Search(HashMap<String, String> map);
   
}