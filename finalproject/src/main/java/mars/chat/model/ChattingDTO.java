package mars.chat.model;

import java.sql.Date;

public class ChattingDTO {
	private int idx;
	private int from_idx;
	private int to_idx;
	private Date start_time;
	private int numtype1;
	private int numtype2;
	private String vartype1;
	private String vartype2;
	
	public ChattingDTO() {
		super();
	}

	public ChattingDTO(int idx, int from_idx, int to_idx, Date start_time, int numtype1, int numtype2, String vartype1,
			String vartype2) {
		super();
		this.idx = idx;
		this.from_idx = from_idx;
		this.to_idx = to_idx;
		this.start_time = start_time;
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

	public Date getStart_time() {
		return start_time;
	}

	public void setStart_time(Date start_time) {
		this.start_time = start_time;
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
