package mars.setting.model;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

import mars.member.model.MemberDTO;

public class SettingDAOImple implements SettingDAO{

	private SqlSessionTemplate sqlMap;

	public SettingDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	/**자기 정보 가져오기 관련 메서드*/
	public MemberDTO getMyInfo(int idx){
		MemberDTO dto = sqlMap.selectOne("getMyInfo", idx);
		return dto;
	}

	/**자기 정보 수정 관련 메서드*/
	public int updateMyInfo(MemberDTO dto) {
		int count = sqlMap.update("updateMyInfo", dto);
		return count;
	}

	/**비밀번호 가져오기 관련 메서드*/
	public String getMyPwd(int idx) {
		String sv_pwd = sqlMap.selectOne("getMyPwd", idx);
		return sv_pwd;
	}

	/**비밀번호 변경 관려 메서드*/
	public int changePwd(HashMap<String , String> map) {
		int count = sqlMap.update("changePwd", map);
		return count;
	}
	
	/**계정 탈퇴 관련 메서드*/
	public int leaveMars(int idx){
		int count = sqlMap.delete("leaveMars", idx);
		return count;
	}
}
