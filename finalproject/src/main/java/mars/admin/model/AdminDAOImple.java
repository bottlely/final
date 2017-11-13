package mars.admin.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;

public class AdminDAOImple implements AdminDAO {
   
   private SqlSessionTemplate sqlMap;   

   public AdminDAOImple(SqlSessionTemplate sqlMap) {
      super();
      this.sqlMap = sqlMap;
   }
   
   public List<MemberDTO> admin_member() {
      List<MemberDTO> list = sqlMap.selectList("admin_member"); 
      
      return list;
   }

   public int admin_memberDelete(int idx) {
      int count = sqlMap.delete("admin_memberDelete", idx);
      
      return count;
   }

   public List<MemberDTO> admin_nameSearch(String name) {
      List<MemberDTO> list = sqlMap.selectList("admin_nameSearch", name);
      
      return list;
   }

   public List<MemberDTO> admin_idSearch(String id) {
      List<MemberDTO> list = sqlMap.selectList("admin_idSearch", id);
      
      return list;
   }

   public int ff_delete(int idx) {
      int list = sqlMap.delete("ff_delete", idx);
      
      return list;
   }

   public int yearMin() {
      int yearMin = sqlMap.selectOne("yearMin");
      
      return yearMin;
   }
   
   public int yearMax() {
      int yearMax = sqlMap.selectOne("yearMax");
      
      return yearMax;
   }
	/*관심사통계*/
	public int favor_movie() {
		
		int favor_movies=sqlMap.selectOne("favor_movie");
		return favor_movies;
	}
	
	public int favor_dance() {
		
		int favor_movies=sqlMap.selectOne("favor_dance");
		return favor_movies;
	}
	
	public int favor_travel() {
		
		int favor_movies=sqlMap.selectOne("favor_travel");
		return favor_movies;
	}
	
	public int favor_beauty() {
		
		int favor_movies=sqlMap.selectOne("favor_beauty");
		return favor_movies;
	}
	
	public int favor_sport() {
		
		int favor_movies=sqlMap.selectOne("favor_sport");
		return favor_movies;
	}
	
	public int favor_food() {
		
		int favor_movies=sqlMap.selectOne("favor_food");
		return favor_movies;
	}
	
	public int favor_fashion() {
		
		int favor_movies=sqlMap.selectOne("favor_fashion");
		return favor_movies;
	}
	
	public int favor_music() {
		
		int favor_movies=sqlMap.selectOne("favor_music");
		return favor_movies;
	}
	
	
}