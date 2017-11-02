package mars.myHome.model;

import java.sql.*;

public class MyHomeDTO {
	
	private int member_idx;
	private String name;
	private String intro;
	private String profile_img;
	private String background_img;
	private int visitor_today;
	private int visitor_total;
	private int open_coverage;
	private Date entertime;
	
	public MyHomeDTO() {
		super();
	}


	public MyHomeDTO(int member_idx, String name, String intro, String profile_img, String background_img,
			int visitor_today, int visitor_total, int open_coverage, Date entertime) {
		super();
		this.member_idx = member_idx;
		this.name = name;
		this.intro = intro;
		this.profile_img = profile_img;
		this.background_img = background_img;
		this.visitor_today = visitor_today;
		this.visitor_total = visitor_total;
		this.open_coverage = open_coverage;
		this.entertime = entertime;
	}



	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public String getBackground_img() {
		return background_img;
	}

	public void setBackground_img(String background_img) {
		this.background_img = background_img;
	}

	public int getVisitor_today() {
		return visitor_today;
	}

	public void setVisitor_today(int visitor_today) {
		this.visitor_today = visitor_today;
	}

	public int getVisitor_total() {
		return visitor_total;
	}

	public void setVisitor_total(int visitor_total) {
		this.visitor_total = visitor_total;
	}

	public int getOpen_coverage() {
		return open_coverage;
	}

	public void setOpen_coverage(int open_coverage) {
		this.open_coverage = open_coverage;
	}


	public Date getEntertime() {
		return entertime;
	}


	public void setEntertime(Date entertime) {
		this.entertime = entertime;
	}
	
	

}
