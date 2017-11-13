package mars.admin.model;

import java.util.List;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;

public interface AdminDAO {
   public List<MemberDTO> admin_member();
   public int admin_memberDelete(int idx);
   public List<MemberDTO> admin_nameSearch(String name);
   public List<MemberDTO> admin_idSearch(String id);
   public int ff_delete(int idx);
   public int yearMin();
   public int yearMax();
   public int favor_movie();
   public int favor_sport();
   public int favor_fashion();
   public int favor_food();
   public int favor_music();
   public int favor_beauty();
   public int favor_travel();
   public int favor_dance();
}