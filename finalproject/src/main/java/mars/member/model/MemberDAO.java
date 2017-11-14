package mars.member.model;



public interface MemberDAO {
	
	public int memberJoin(MemberDTO dto);
	public MemberDTO idxSearch(MemberDTO dto);
	public int myHomeCreate(MemberDTO dto);
	
	public int loginIdCheck(String userid);
	public String pwdCheck(String userid);
	public MemberDTO getUserInfo(String userid);

	
}
