package mars.ad.model;

import java.sql.Date;
import java.io.*;
import java.util.*;

public class ApplyAdDTO {
	
	private int member_idx;
	private String name;
	private String type;
	private String link;
	private String ad_content;
	private Date s_date;
	private Date e_date;
	private int fee;
	private String favor_movie;
	private String favor_sport;
	private String favor_fashion;
	private String favor_beauty;
	private String favor_travel;
	private String favor_music;
	private String favor_dance;
	private String favor_food;
	private int status;
	private String post;
	private String follow;
	private Date apply_date;
	private int amount;
	private int cnt1;
	private int cnt2;
	private int cnt3;
	private int cnt4;
	private int cnt5;
	private int cnt6;
	private int cnt7;
	
	public ApplyAdDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ApplyAdDTO(int member_idx, String name, String type, String link, String ad_content, Date s_date,
			Date e_date, int fee, String favor_movie, String favor_sport, String favor_fashion, String favor_beauty,
			String favor_travel, String favor_music, String favor_dance, String favor_food, int status, String post,
			String follow, Date apply_date, int amount) {
		super();
		this.member_idx = member_idx;
		this.name = name;
		this.type = type;
		this.link = link;
		this.ad_content = ad_content;
		this.s_date = s_date;
		this.e_date = e_date;
		this.fee = fee;
		this.favor_movie = favor_movie;
		this.favor_sport = favor_sport;
		this.favor_fashion = favor_fashion;
		this.favor_beauty = favor_beauty;
		this.favor_travel = favor_travel;
		this.favor_music = favor_music;
		this.favor_dance = favor_dance;
		this.favor_food = favor_food;
		this.status = status;
		this.post = post;
		this.follow = follow;
		this.apply_date = apply_date;
		this.amount = amount;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getAd_content() {
		return ad_content;
	}
	public void setAd_content(String ad_content) {
		this.ad_content = ad_content;
	}
	public Date getS_date() {
		return s_date;
	}
	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}
	public Date getE_date() {
		return e_date;
	}
	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getFavor_movie() {
		return favor_movie;
	}
	public void setFavor_movie(String favor_movie) {
		this.favor_movie = favor_movie;
	}
	public String getFavor_sport() {
		return favor_sport;
	}
	public void setFavor_sport(String favor_sport) {
		this.favor_sport = favor_sport;
	}
	public String getFavor_fashion() {
		return favor_fashion;
	}
	public void setFavor_fashion(String favor_fashion) {
		this.favor_fashion = favor_fashion;
	}
	public String getFavor_beauty() {
		return favor_beauty;
	}
	public void setFavor_beauty(String favor_beauty) {
		this.favor_beauty = favor_beauty;
	}
	public String getFavor_travel() {
		return favor_travel;
	}
	public void setFavor_travel(String favor_travel) {
		this.favor_travel = favor_travel;
	}
	public String getFavor_music() {
		return favor_music;
	}
	public void setFavor_music(String favor_music) {
		this.favor_music = favor_music;
	}
	public String getFavor_dance() {
		return favor_dance;
	}
	public void setFavor_dance(String favor_dance) {
		this.favor_dance = favor_dance;
	}
	public String getFavor_food() {
		return favor_food;
	}
	public void setFavor_food(String favor_food) {
		this.favor_food = favor_food;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getFollow() {
		return follow;
	}
	public void setFollow(String follow) {
		this.follow = follow;
	}
	public Date getApply_date() {
		return apply_date;
	}
	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
}
