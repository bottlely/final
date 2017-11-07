package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;

public class SettingDAOImple implements SettingDAO {

	private SqlSessionTemplate sqlMap;

	public SettingDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/** �옄湲� �젙蹂� 媛��졇�삤湲� 愿��젴 硫붿꽌�뱶 */
	public MemberDTO getMyInfo(int idx) {
		MemberDTO dto = sqlMap.selectOne("getMyInfo", idx);
		return dto;
	}

	/** �옄湲� �젙蹂� �닔�젙 愿��젴 硫붿꽌�뱶 */
	public int updateMyInfo(MemberDTO dto) {
		int count = sqlMap.update("updateMyInfo", dto);
		return count;
	}

	/** 鍮꾨�踰덊샇 媛��졇�삤湲� 愿��젴 硫붿꽌�뱶 */
	public String getMyPwd(int idx) {
		String sv_pwd = sqlMap.selectOne("getMyPwd", idx);
		return sv_pwd;
	}

	/** 鍮꾨�踰덊샇 蹂�寃� 愿��젮 硫붿꽌�뱶 */
	public int changePwd(HashMap<String, String> map) {
		int count = sqlMap.update("changePwd", map);
		return count;
	}

	/** 怨꾩젙 �깉�눜 愿��젴 硫붿꽌�뱶 */
	public int leaveMars(int idx) {
		int count = sqlMap.delete("leaveMars", idx);
		return count;
	}

	/** �굹瑜� �뙏濡쒖엵 �븯�뒗 �궗�엺 紐⑸줉 媛��졇�삤湲� 愿��젴 硫붿꽌�뱶 */
	public List<MemberDTO> getFollowingList(int user2_idx) {
		List<MemberDTO> list = sqlMap.selectList("getFollowingList", user2_idx);
		return list;
	}

	/**臾몄젣�떊怨� 愿��젴 硫붿꽌�뱶*/
	public int sendReport(ReportDTO dto) {
		int count = sqlMap.insert("sendReport",dto);
		return count;
	}
}
