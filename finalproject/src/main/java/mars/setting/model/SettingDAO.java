package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import mars.member.model.MemberDTO;

public interface SettingDAO {

	public MemberDTO getMyInfo(int idx);
	public int updateMyInfo(MemberDTO dto);
	public String getMyPwd(int idx);
	public int changePwd(HashMap<String, String> map);
	public int leaveMars(int idx);
	public List<MemberDTO> getFollowingList(int idx);
}
