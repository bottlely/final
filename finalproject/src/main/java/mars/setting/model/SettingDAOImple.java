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
		System.out.println("2222222222222222222222222222222");
		System.out.println("food" + dto.getFavorite_food());
		System.out.println("idx_"+dto.getIdx());
		int count = sqlMap.update("updateMyInfo", dto);
		System.out.println("count_" + count);
		return count;
	}
}
