package mars.coverage.model;

public class CoverageDTO {
	
	private int content_idx;
	private int coverage_idx;
	private int coverage_state;
	private String idx_to;
	private int idx_from;
	private String idx_group;
	
	public CoverageDTO() {
		super();
	}
	
	public CoverageDTO(int content_idx, int coverage_idx, int coverage_state, String idx_to, int idx_from,
			String idx_group) {
		super();
		this.content_idx = content_idx;
		this.coverage_idx = coverage_idx;
		this.coverage_state = coverage_state;
		this.idx_to = idx_to;
		this.idx_from = idx_from;
		this.idx_group = idx_group;
	}



	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public int getCoverage_idx() {
		return coverage_idx;
	}

	public void setCoverage_idx(int coverage_idx) {
		this.coverage_idx = coverage_idx;
	}

	public int getCoverage_state() {
		return coverage_state;
	}

	public void setCoverage_state(int coverage_state) {
		this.coverage_state = coverage_state;
	}

	public String getIdx_to() {
		return idx_to;
	}

	public void setIdx_to(String idx_to) {
		this.idx_to = idx_to;
	}

	public int getIdx_from() {
		return idx_from;
	}

	public void setIdx_from(int idx_from) {
		this.idx_from = idx_from;
	}

	public String getIdx_group() {
		return idx_group;
	}

	public void setIdx_group(String idx_group) {
		this.idx_group = idx_group;
	}
	
}
