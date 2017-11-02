package mars.setting.model;

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
}
