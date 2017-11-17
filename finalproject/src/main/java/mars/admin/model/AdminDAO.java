package mars.admin.model;

import java.util.*;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;
import mars.myHome.model.MyHomeDTO;

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
   public int gender_1();
   public int gender_2();
   public int girl1();
   public int man1();

   public int girl2();
   public int man2();
   public int girl3();
   public int man3();
   public int girl4();
   public int man4();
   public int others();
   public String seoul();
   public String suwon();
   public String incheon();
   public String daegu();
   public String daejeon();
   public String busan();
   public String ilsan();
   public int count7();
   public int count6();
   public int count5();
   public int count4();
   public int count3();
   public int count2();
   public int count1();
   public List<Integer> userrank();
   public int followingSize1();
   public int followingSize2();
   public int followingSize3();
   public int todayjoin();
   public MyHomeDTO userInfo1();
   public MyHomeDTO userInfo2();
   public MyHomeDTO userInfo3();
   public int todayAd();
public int allcount();
   
}