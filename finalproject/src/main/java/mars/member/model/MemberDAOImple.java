package mars.member.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDAOImple implements MemberDAO {

	private SqlSessionTemplate sqlMap;

	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/* Sign-up */
	public int memberJoin(MemberDTO dto) {
		int result = sqlMap.insert("memberJoin", dto);
		return result;
	}

	/* Idx Search */
	public MemberDTO idxSearch(MemberDTO dto) {
		MemberDTO dtoIdx = sqlMap.selectOne("idxSearch", dto);
		return dtoIdx;
	}

	/* MyHome Create */
	public int myHomeCreate(MemberDTO dto) {
		int result = sqlMap.insert("myHomeCreate", dto);
		return result;
	}

	/* login-Id Check */
	public int loginIdCheck(String userid) {
		int result = sqlMap.selectOne("loginIdCheck", userid);
		return result;
	}

	/* login-PwdCheck */
	public String pwdCheck(String userid) {
		String dbpwd = sqlMap.selectOne("pwdCheck", userid);
		return dbpwd;
	}

	/* get User Information */
	public MemberDTO getUserInfo(String userid) {
		MemberDTO dto = new MemberDTO();
		dto = sqlMap.selectOne("getUserInfo", userid);
		return dto;
	}

	public MemberDTO getUserInfo_idx(int useridx) {
		MemberDTO dto = new MemberDTO();
		dto = sqlMap.selectOne("getUserInfo_idx", useridx);
		return dto;
	}

	/*public List<MemberDTO> memberSearch() {
		List<MemberDTO> list = sqlMap.selectList("memberSearch");

		return list;
	}*/
	
	public String getFavor(int idx){
		String str="";
		MemberDTO dto = new MemberDTO();
		dto = sqlMap.selectOne("getAd", idx);
		
		if(dto.getFavorite_movie()!=0) 
			str += "favor_movie/";
		if(dto.getFavorite_sport()!=0)
			str += "favor_sport/";
		if(dto.getFavorite_fashion()!=0)
			str += "favor_fashion/";
		if(dto.getFavorite_beauty()!=0)
			str += "FAVOR_BEAUTY/";
		if(dto.getFavorite_travel()==1) 
			str += "favor_travel/";
		if(dto.getFavorite_music()==1) 
			str += "favor_music/";
		if(dto.getFavorite_dance()==1) 
			str += "favor_dance/";
		if(dto.getFavorite_food()==1) 
			str += "favor_food";
		
		return str;
	}

}
