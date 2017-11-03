package mars.coverage.model;

public class CoverageDTO {
	
	private int content_idx;
	private int coverage_idx;
	private int coverage_state;
	private int idx_to;
	private int idx_from;
	
	public CoverageDTO() {
		super();
	}
	public CoverageDTO(int content_idx, int coverage_idx, int coverage_state, int idx_to, int idx_from) {
		super();
		this.content_idx = content_idx;
		this.coverage_idx = coverage_idx;
		this.coverage_state = coverage_state;
		this.idx_to = idx_to;
		this.idx_from = idx_from;
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
	public int getIdx_to() {
		return idx_to;
	}
	public void setIdx_to(int idx_to) {
		this.idx_to = idx_to;
	}
	public int getIdx_from() {
		return idx_from;
	}
	public void setIdx_from(int idx_from) {
		this.idx_from = idx_from;
	}
	
	
}
