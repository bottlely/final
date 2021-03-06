package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import mars.friend.model.FriendDTO;
import mars.group.model.GroupDTO;
import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;

public interface SettingDAO {

	public MemberDTO getMyInfo(int idx);
	public int updateMyInfo(MemberDTO dto);
	public String getMyPwd(int idx);
	public int changePwd(HashMap<String, String> map);
	public int leaveMars(int idx);
	public List<MemberDTO> getFollowingList(int idx);
//	public List<GroupListDTO> getGroupList(int idx);
	public List<FriendDTO> getGroupList(int idx);
	public int sendReport(ReportDTO dto);
	public int addGroup(FriendDTO dto);
	public int getGroupCnt(int idx);
	public int getGroupIdx(FriendDTO dto);
	public int insertGroup(GroupDTO dto);
	public List<GroupDTO> showGroup(int idx_ff);
	public List<MemberDTO> groupMember(int idx);
	public int deleteGroup(int idx_ff);
	public int deleteff(int idx_ff);
	public String groupName(HashMap<String, String> map);
}
