package mars.ad.model;

import java.sql.*;
import java.util.Date;

public class ApplyAdDTO {
	
	private int ad_idx; //회원 가입시 idx, primary key
	private int member_idx; //회원 가입하는 사람의 idx
	private String name; //회사 이름
	private String type; //회사 타입
	private String link; //회사 링크, 타고갈 링크
	private String ad_content; //홍보할 컨텐트
	private int fee; //요금
	private int favor_movie;
	private int favor_sport;
	private int favor_fashion;
	private int favor_beauty;
	private int favor_travel;
	private int favor_music;
	private int favor_dance;
	private int favor_food;
	private int status; //0:신청&심사중 1:심사 완료/결제 2:결제완료 3:게시
	private String post; //퍼간???
	private String follow; //팔로워?팔로잉
	private Date apply_date; //신청 날짜 -> 승인하면 승인날짜로
	private int amount;
	private int cnt1;
	private int cnt2;
	private int cnt3;
	private int cnt4;
	private int cnt5;
	private int cnt6;
	private int cnt7;
	private String s_date; //광고 시작 날짜
	private String e_date; //광고 끝나는 날짜
	
	public ApplyAdDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ApplyAdDTO(int ad_idx, int member_idx, String name, String type, String link, String ad_content,
			int fee, int favor_movie, int favor_sport, int favor_fashion, int favor_beauty,
			int favor_travel, int favor_music, int favor_dance, int favor_food, int status, String post,
			String follow, Date apply_date, int amount, String s_date, String e_date) {
		super();
		this.ad_idx = ad_idx;
		this.member_idx = member_idx;
		this.name = name;
		this.type = type;
		this.link = link;
		this.ad_content = ad_content;
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
		this.s_date = s_date;
		this.e_date = e_date;
	}
	
	
	public int getAd_idx() {
		return ad_idx;
	}

	public void setAd_idx(int ad_idx) {
		this.ad_idx = ad_idx;
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
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getE_date() {
		return e_date;
	}
	public void setE_date(String e_date) {
		this.e_date = e_date;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public int getFavor_movie() {
		return favor_movie;
	}
	public void setFavor_movie(int favor_movie) {
		this.favor_movie = favor_movie;
	}
	public int getFavor_sport() {
		return favor_sport;
	}
	public void setFavor_sport(int favor_sport) {
		this.favor_sport = favor_sport;
	}
	public int getFavor_fashion() {
		return favor_fashion;
	}
	public void setFavor_fashion(int favor_fashion) {
		this.favor_fashion = favor_fashion;
	}
	public int getFavor_beauty() {
		return favor_beauty;
	}
	public void setFavor_beauty(int favor_beauty) {
		this.favor_beauty = favor_beauty;
	}
	public int getFavor_travel() {
		return favor_travel;
	}
	public void setFavor_travel(int favor_travel) {
		this.favor_travel = favor_travel;
	}
	public int getFavor_music() {
		return favor_music;
	}
	public void setFavor_music(int favor_music) {
		this.favor_music = favor_music;
	}
	public int getFavor_dance() {
		return favor_dance;
	}
	public void setFavor_dance(int favor_dance) {
		this.favor_dance = favor_dance;
	}
	public int getFavor_food() {
		return favor_food;
	}
	public void setFavor_food(int favor_food) {
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
