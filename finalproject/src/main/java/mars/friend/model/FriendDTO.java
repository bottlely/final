package mars.friend.model;

public class FriendDTO {
	private int idx;
	private int user1_idx;
	private int user2_idx;
	private int type; //Group or not ..if group: 1 (not group: 0)
	private String group_name; //This should be not null if the group is 1.
	private int black_state; //if black: 1 (not black: 0)
	private int numtype1;
	private int numtype2;
	private String vartype1;
	private String vartype2;
	
	public FriendDTO() {
		super();
	}

	public FriendDTO(int idx, int user1_idx, int user2_idx, int type, String group_name, int black_state, int numtype1,
			int numtype2, String vartype1, String vartype2) {
		super();
		this.idx = idx;
		this.user1_idx = user1_idx;
		this.user2_idx = user2_idx;
		this.type = type;
		this.group_name = group_name;
		this.black_state = black_state;
		this.numtype1 = numtype1;
		this.numtype2 = numtype2;
		this.vartype1 = vartype1;
		this.vartype2 = vartype2;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getUser1_idx() {
		return user1_idx;
	}

	public void setUser1_idx(int user1_idx) {
		this.user1_idx = user1_idx;
	}

	public int getUser2_idx() {
		return user2_idx;
	}

	public void setUser2_idx(int user2_idx) {
		this.user2_idx = user2_idx;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public int getBlack_state() {
		return black_state;
	}

	public void setBlack_state(int black_state) {
		this.black_state = black_state;
	}

	public int getNumtype1() {
		return numtype1;
	}

	public void setNumtype1(int numtype1) {
		this.numtype1 = numtype1;
	}

	public int getNumtype2() {
		return numtype2;
	}

	public void setNumtype2(int numtype2) {
		this.numtype2 = numtype2;
	}

	public String getVartype1() {
		return vartype1;
	}

	public void setVartype1(String vartype1) {
		this.vartype1 = vartype1;
	}

	public String getVartype2() {
		return vartype2;
	}

	public void setVartype2(String vartype2) {
		this.vartype2 = vartype2;
	}
	
	
}
