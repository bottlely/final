package mars.report.model;

import java.sql.Date;

public class ReportDTO {

	int idx;
	int idx_from;
	int idx_to;
	String content;
	int category;	//11:野껓옙占쎄퉳,占쎌뵥疫꿸퀬源�域뱄옙 , 12:�⑤벀而삭린遺우맄 , 13:燁살뮄�럡 , 14:占쎈돗占쎈굡 , 15:野껊슣�뻻�눧�눘�삂占쎄쉐 16_占쎈르�뵳占�
	String name;
	Date reportdate;
	int state;
	
	public ReportDTO() {
	}
	
	

	public ReportDTO(String name, Date reportdate,int category,String content) {
		super();
		this.content = content;
		this.category = category;
		this.name = name;
		this.reportdate = reportdate;
	}



	public ReportDTO(int idx_from, String content, int category) {
		super();
		this.idx_from = idx_from;
		this.content = content;
		this.category = category;
	}
	
	public ReportDTO(int idx_from, int idx_to, String content, int category) {
		super();
		this.idx_from = idx_from;
		this.idx_to = idx_to;
		this.content = content;
		this.category = category;
	}

	public ReportDTO(int idx, int idx_from, int idx_to, String content, int category, String name, Date reportdate,
			int state) {
		super();
		this.idx = idx;
		this.idx_from = idx_from;
		this.idx_to = idx_to;
		this.content = content;
		this.category = category;
		this.name = name;
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

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
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
