package mars.friend.model;

public class MyPageFriendDTO {
	private String name;
	private int member_idx;
	private String profile_img;
	
	public MyPageFriendDTO() {
		super();
	}

	public MyPageFriendDTO(String name, int member_idx, String profile_img) {
		super();
		this.name = name;
		this.member_idx = member_idx;
		this.profile_img = profile_img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	
	
}
