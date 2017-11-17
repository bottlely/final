package mars.follow.model;

import java.sql.Date;

public class FollowDTO {
	private int idx;
	private int from_idx;
	private int to_idx;
	private String name;
	private String profile_img;
	private Date followdate;
	private int content_idx;
	private String vartype1;
	
	public FollowDTO() {
		super();
	}

	public FollowDTO(int idx, int from_idx, int to_idx, String name, String profile_img, Date followdate, int content_idx,
			String vartype1) {
		super();
		this.idx = idx;
		this.from_idx = from_idx;
		this.to_idx = to_idx;
		this.name = name;
		this.profile_img = profile_img;
		this.followdate = followdate;
		this.content_idx = content_idx;
		this.vartype1 = vartype1;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getFrom_idx() {
		return from_idx;
	}

	public void setFrom_idx(int from_idx) {
		this.from_idx = from_idx;
	}

	public int getTo_idx() {
		return to_idx;
	}

	public void setTo_idx(int to_idx) {
		this.to_idx = to_idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public Date getFollowdate() {
		return followdate;
	}

	public void setFollowdate(Date followdate) {
		this.followdate = followdate;
	}

	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public String getVartype1() {
		return vartype1;
	}

	public void setVartype1(String vartype1) {
		this.vartype1 = vartype1;
	}
	
}
