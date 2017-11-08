package mars.group.model;

import java.sql.*;

public class GroupDTO {

	int idx;
	int idx_from;
	int idx_to;
	int idx_ff;
	String group_name;
	Date adddate;
	
	public GroupDTO() {
	}
	
	public GroupDTO(int idx_from, int idx_to, int idx_ff, String group_name) {
		super();
		this.idx_from = idx_from;
		this.idx_to = idx_to;
		this.idx_ff = idx_ff;
		this.group_name = group_name;
	}

	public GroupDTO(int idx, int idx_from, int idx_to, int idx_ff, String group_name, Date adddate) {
		super();
		this.idx = idx;
		this.idx_from = idx_from;
		this.idx_to = idx_to;
		this.idx_ff = idx_ff;
		this.group_name = group_name;
		this.adddate = adddate;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getIdx_from() {
		return idx_from;
	}

	public void setIdx_from(int idx_from) {
		this.idx_from = idx_from;
	}

	public int getIdx_to() {
		return idx_to;
	}

	public void setIdx_to(int idx_to) {
		this.idx_to = idx_to;
	}

	public int getIdx_ff() {
		return idx_ff;
	}

	public void setIdx_ff(int idx_ff) {
		this.idx_ff = idx_ff;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public Date getAdddate() {
		return adddate;
	}

	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}
	
}
