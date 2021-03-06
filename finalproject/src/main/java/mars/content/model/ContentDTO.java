package mars.content.model;

import java.sql.Date;

public class ContentDTO {
	
	private int member_idx;
	private int content_idx;
	private int category;
	private Date writetime;
	private String path;
	private String content;
	private String writer;
	private String profile;
	
	public ContentDTO() {
		super();
	}


	public ContentDTO(int member_idx, int content_idx, int category, Date writetime, String path, String content,
			String writer, String profile) {
		super();
		this.member_idx = member_idx;
		this.content_idx = content_idx;
		this.category = category;
		this.writetime = writetime;
		this.path = path;
		this.content = content;
		this.writer = writer;
		this.profile = profile;
	}


	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public Date getWritetime() {
		return writetime;
	}

	public void setWritetime(Date writetime) {
		this.writetime = writetime;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getProfile() {
		return profile;
	}


	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}
