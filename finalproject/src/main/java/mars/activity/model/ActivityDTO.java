package mars.activity.model;

import java.sql.Date;

public class ActivityDTO {
	private int idx;
	private int from_idx;
	private int to_idx;
	private int type; //(like or reply or follow)
	private int content_idx;
	private int reply_idx;
	private int like_idx;
	private Date likedate;
	private int numtype1;
	private int numtype2;
	private String vartype1;
	private String vartype2;
	
	public ActivityDTO() {
		super();
	}

	public ActivityDTO(int idx, int from_idx, int to_idx, int type, int content_idx, int reply_idx, int like_idx,
			Date likedate, int numtype1, int numtype2, String vartype1, String vartype2) {
		super();
		this.idx = idx;
		this.from_idx = from_idx;
		this.to_idx = to_idx;
		this.type = type;
		this.content_idx = content_idx;
		this.reply_idx = reply_idx;
		this.like_idx = like_idx;
		this.likedate = likedate;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public int getReply_idx() {
		return reply_idx;
	}

	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}

	public int getLike_idx() {
		return like_idx;
	}

	public void setLike_idx(int like_idx) {
		this.like_idx = like_idx;
	}

	public Date getLikedate() {
		return likedate;
	}

	public void setLikedate(Date likedate) {
		this.likedate = likedate;
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
