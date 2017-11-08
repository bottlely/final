package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import mars.friend.model.FriendDTO;
import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;

public interface SettingDAO {

	public MemberDTO getMyInfo(int idx);
	public int updateMyInfo(MemberDTO dto);
	public String getMyPwd(int idx);
	public int changePwd(HashMap<String, String> map);
	public int leaveMars(int idx);
	public List<MemberDTO> getFollowingList(int idx);
	public List<FriendDTO> getGroupList(int idx);
	public int sendReport(ReportDTO dto);
	public int addGroup(FriendDTO dto);
	public int getGroupCnt(int idx);
}
