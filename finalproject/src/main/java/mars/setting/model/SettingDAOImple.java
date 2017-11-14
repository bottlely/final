package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.friend.model.FriendDTO;
import mars.group.model.GroupDTO;
import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;

public class SettingDAOImple implements SettingDAO {

	private SqlSessionTemplate sqlMap;

	public SettingDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/** 자기 정보 가져오기 관련 메서드 */
	public MemberDTO getMyInfo(int idx) {
		MemberDTO dto = sqlMap.selectOne("getMyInfo", idx);
		return dto;
	}

	/** 자기 정보 수정 관련 메서드 */
	public int updateMyInfo(MemberDTO dto) {
		int count = sqlMap.update("updateMyInfo", dto);
		return count;
	}

	/**비밀번호 가져오기 관련 메서드 */
	public String getMyPwd(int idx) {
		String sv_pwd = sqlMap.selectOne("getMyPwd", idx);
		return sv_pwd;
	}

	/** 비밀번호 변경 관려 메서드 */
	public int changePwd(HashMap<String, String> map) {
		int count = sqlMap.update("changePwd", map);
		return count;
	}

	/** 계정 탈퇴 관련 메서드 */
	public int leaveMars(int idx) {
		int count = sqlMap.delete("leaveMars", idx);
		return count;
	}

	/** 나를 팔로잉 하는 사람 목록 가져오기 관련 메서드 */
	public List<MemberDTO> getFollowingList(int user2_idx) {
		List<MemberDTO> list = sqlMap.selectList("getFollowingList", user2_idx);
		return list;
	}

	/**나의 그룹 리스트 가져오기 관련 메서드*/
	/*public List<GroupListDTO> getGroupList(int user2_idx) {
		List<GroupListDTO> g_list = sqlMap.selectList("getGroupList", user2_idx);
		return g_list;
	}*/
	
	public List<FriendDTO> getGroupList(int user2_idx) {
		List<FriendDTO> g_list = sqlMap.selectList("getGroupList", user2_idx);
		return g_list;
	}
	
	/** 문제신고 관련 메서드 */
	public int sendReport(ReportDTO dto) {
		int count = sqlMap.insert("sendReport",dto);
		return count;
	}

	/** mars_ff에 그룹 저장*/
	public int addGroup(FriendDTO dto) {
		int count = sqlMap.insert("addGroup", dto);
		return count;
	}

	/** group_cnt 가져오기 관련 메서드*/
	public int getGroupCnt(int user2_idx) {
		int count = sqlMap.selectOne("getGroupCnt", user2_idx);
		return count;
	}

	/** idx_ff 가져오기 관련 메서드*/
	public int getGroupIdx(FriendDTO dto) {
		int idx_ff = sqlMap.selectOne("getGroupIdx", dto); 
		return idx_ff;
	}

	/**group 테이블에 등록 관련 메서드*/
	public int insertGroup(GroupDTO dto) {
		int count = sqlMap.insert("insertGroup", dto);
		return count;
	}

	/**그룹 인원 리스트 보기 관렴 메서드*/
	public List<GroupDTO> showGroup(int idx_ff) {
		List<GroupDTO> group = sqlMap.selectList("showGroup", idx_ff);
		return group;
	}

	public List<MemberDTO> groupMember(int idx) {
		List<MemberDTO> list = sqlMap.selectList("groupMember", idx);
		return list;
	}

	/**그룹 삭제*/
	public int deleteGroup(int idx_ff) {
		int count = sqlMap.delete("deleteGroup", idx_ff);
		return count;
	}

	public int deleteff(int idx_ff) {
		int count = sqlMap.delete("deleteff", idx_ff);
		return count;
	}

	public String groupName(HashMap<String, String> map) {
		String name = sqlMap.selectOne("getGroupname", map);
		return name;
	}

	
}
