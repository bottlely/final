package mars.htag.model;

import java.sql.Date;

public class htagDTO {
	private int idx;
	private int content_idx;
	private String content;
	private Date htgaDate;
	private int numtype1;
	private int numtype2;
	private String vartype1;
	private String vartype2;
	public htagDTO() {
		super();
	}
	public htagDTO(int idx, int content_idx, String content, Date htgaDate, int numtype1, int numtype2, String vartype1,
			String vartype2) {
		super();
		this.idx = idx;
		this.content_idx = content_idx;
		this.content = content;
		this.htgaDate = htgaDate;
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
	public int getContent_idx() {
		return content_idx;
	}
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getHtgaDate() {
		return htgaDate;
	}
	public void setHtgaDate(Date htgaDate) {
		this.htgaDate = htgaDate;
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