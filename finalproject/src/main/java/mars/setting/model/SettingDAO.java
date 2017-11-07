package mars.setting.model;

import java.util.HashMap;
import java.util.List;

import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;

public interface SettingDAO {

	public MemberDTO getMyInfo(int idx);
	public int updateMyInfo(MemberDTO dto);
	public String getMyPwd(int idx);
	public int changePwd(HashMap<String, String> map);
	public int leaveMars(int idx);
	public List<MemberDTO> getFollowingList(int idx);
	public int sendReport(ReportDTO dto);
}
