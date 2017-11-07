package mars.report.model;

import java.sql.Date;

public class ReportDTO {

	int idx;
	int idx_from;
	int idx_to;
	String content;
	int category;	//11:검색,인기태그 , 12:공개범위 , 13:친구 , 14:피드 , 15:게시물작성 16_알림
	String link;
	Date reportdate;
	int state;
	
	public ReportDTO() {
	}

	public ReportDTO(int idx_from, String content, int category) {
		super();
		this.idx_from = idx_from;
		this.content = content;
		this.category = category;
	}
	
	public ReportDTO(int idx, int idx_from, int idx_to, String content, int category, String link, Date reportdate,
			int state) {
		super();
		this.idx = idx;
		this.idx_from = idx_from;
		this.idx_to = idx_to;
		this.content = content;
		this.category = category;
		this.link = link;
		this.reportdate = reportdate;
		this.state = state;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Date getReportdate() {
		return reportdate;
	}

	public void setReportdate(Date reportdate) {
		this.reportdate = reportdate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
}