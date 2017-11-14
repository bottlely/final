package mars.admin.model;

import java.text.*;
import java.util.*;

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

   public List<MemberDTO> detail_Search(HashMap<String, String> map) {
      List<MemberDTO> list = sqlMap.selectList("detail_Search", map);
      
      return list;
   }

   public List<MemberDTO> noCity_Detail_Search(HashMap<String, String> map) {
      List<MemberDTO> list = sqlMap.selectList("noCity_Detail_Search", map);
      
      return list;
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
   
   public int gender_1() {
	   int gender=sqlMap.selectOne("gender_1");
	      return gender;
   }
   
   public int gender_2() {
	   int gender=sqlMap.selectOne("gender_2");
	      return gender;
   }
   
   public int girl1() {
	   Date now = new Date();
	   System.out.println("출력 :"+ now.getYear());
	   int girl=sqlMap.selectOne("1girl",now.getYear()+1900);
	      return girl;
   }
   public int man1() {
	   Date now = new Date();
	   
	   System.out.println("출력 :"+ now.getYear());
	   int man=sqlMap.selectOne("1man",now.getYear()+1900);
	      return man;
   }
   public int girl2() {
	   Date now = new Date();
	   System.out.println("출력 :"+ now.getYear());
	   int girl=sqlMap.selectOne("2girl",now.getYear()+1900);
	      return girl;
   }
   public int man2() {
	   Date now = new Date();
	   
	   System.out.println("출력 :"+ now.getYear());
	   int man=sqlMap.selectOne("2man",now.getYear()+1900);
	      return man;
   }
   public int girl3() {
	   Date now = new Date();
	   System.out.println("출력 :"+ now.getYear());
	   int girl=sqlMap.selectOne("3girl",now.getYear()+1900);
	      return girl;
   }
   public int man3() {
	   Date now = new Date();
	   
	   System.out.println("출력 :"+ now.getYear());
	   int man=sqlMap.selectOne("3man",now.getYear()+1900);
	      return man;
   }
   public int girl4() {
	   Date now = new Date();
	   System.out.println("출력 :"+ now.getYear());
	   int girl=sqlMap.selectOne("4girl",now.getYear()+1900);
	      return girl;
   }
   public int man4() {
	   Date now = new Date();
	   
	   System.out.println("출력 :"+ now.getYear());
	   int man=sqlMap.selectOne("4man",now.getYear()+1900);
	      return man;
   }
   public int others() {
	   Date now = new Date();
	   
	   System.out.println("출력 :"+ now.getYear());
	   int man=sqlMap.selectOne("others",now.getYear()+1900);
	      return man;
   }
   public int allcount() {
	   int all = sqlMap.selectOne("allcount");
	   return all;
   }
   
   public String seoul() {
	   
	   String seoul = sqlMap.selectOne("seoul");
	   return seoul;
   }
   public String suwon(){
	   
	   String suwon = sqlMap.selectOne("suwon");
	   return suwon;
   }
   public String incheon(){
	   
	   String incheon = sqlMap.selectOne("incheon");
	   return incheon;
   }
   public String daegu(){
	   
	   String daegu = sqlMap.selectOne("daegu");
	   return daegu;
   }
   public String daejeon(){
	   
	   String daejeon = sqlMap.selectOne("daejeon");
	   return daejeon;
   }
   public String busan(){
	   
	   String busan = sqlMap.selectOne("busan");
	   return busan;
   }
   public String ilsan() {
	   String ilsan= sqlMap.selectOne("ilsan");
	   return ilsan;
   }
   
   public int count7() {
	 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 7*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count7 = sqlMap.selectOne("usercount",dTime);
	   return count7;
   }
   
   public int count6() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 6*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count6 = sqlMap.selectOne("usercount",dTime);
	   return count6;
   }
   
   public int count5() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 5*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count5 = sqlMap.selectOne("usercount",dTime);
	   return count5;
   }
   
   public int count4() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 4*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count4 = sqlMap.selectOne("usercount",dTime);
	   return count4;
   }
   
   public int count3() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 3*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count3 = sqlMap.selectOne("usercount",dTime);
	   return count3;
   }
   
   public int count2() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 2*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count2 = sqlMap.selectOne("usercount",dTime);
	   return count2;
   }
   
   public int count1() {
		 
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime() - 1*( (long) 1000 * 60 * 60 * 24 ));
	   String dTime = formatter.format ( countTime );
	   
	  
	  
	   int count1 = sqlMap.selectOne("usercount",dTime);
	   return count1;
   }
   
   public List<Integer> userrank() {
	   List<Integer> userrank = sqlMap.selectList("userrank");
	   return userrank;
   }
   
   public int followingSize1() {
	   List<Integer> userrank = sqlMap.selectList("userrank");
	  
	   int one = sqlMap.selectOne("ranksize",userrank.get(0));
	 
	  
		return one;
	}
   public int followingSize2() {
	   List<Integer> userrank = sqlMap.selectList("userrank");
	   System.out.println(userrank.get(2));
	   int one = sqlMap.selectOne("ranksize",userrank.get(1));
	 
	  
		return one;
	}
   public int followingSize3() {
	   List<Integer> userrank = sqlMap.selectList("userrank");
	  System.out.println(userrank.get(2));
	   int one = sqlMap.selectOne("ranksize",userrank.get(2));
	 
	  
		return one;
	}
   public int todayjoin() {
	   SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
	   Date currentTime = new Date ( );
	   Date countTime = new Date ( currentTime.getTime());
	   String dTime = formatter.format ( countTime );
	   
	   int todayjoin = sqlMap.selectOne("todayjoin",dTime);
	   
	   return todayjoin;
   }
   

}