package mars.admin.model;

import java.util.List;

import mars.member.model.MemberDTO;

public interface AdminDAO {
	public List<MemberDTO> admin_member();
	public int admin_memberDelete(int idx);
	public List<MemberDTO> admin_nameSearch(String name);
	public List<MemberDTO> admin_idSearch(String id);
}