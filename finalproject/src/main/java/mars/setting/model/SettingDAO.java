package mars.setting.model;

import mars.member.model.MemberDTO;

public interface SettingDAO {

	public MemberDTO getMyInfo(int idx);
}
