package mars.ad.model;

import java.sql.*;
import java.sql.Date;

public class ApplyAdDTO {
	
	private int ad_idx; //ȸ�� ���Խ� idx, primary key
	private int member_idx; //ȸ�� �����ϴ� ����� idx
	private String name; //ȸ�� �̸�
	private String type; //ȸ�� Ÿ��
	private String link; //ȸ�� ��ũ, Ÿ�� ��ũ
	private String ad_content; //ȫ���� ����Ʈ
	private int fee; //���
	private int favor_movie;
	private int favor_sport;
	private int favor_fashion;
	private int favor_beauty;
	private int favor_travel;
	private int favor_music;
	private int favor_dance;
	private int favor_food;
	private int status; //0:��û&�ɻ��� 1:�ɻ� �Ϸ�/���� 2:�����Ϸ� 3:�Խ� 4:����
	private String post; //퍼가는
	private String follow; //follow수, 지워도 될듯
	private Date apply_date; //��û ��¥ -> �����ϸ� ���γ�¥��
	private int amount;
	private String s_date; //���� ���� ��¥
	private String e_date; //���� ������ ��¥
	private String ad_name; //���� �̸�
	private String all_amount; //string���� ���� amount �����ϱ�
	private int num_amount; //amount�� ���� ���� ��
	
	public ApplyAdDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ApplyAdDTO(int ad_idx, int member_idx, String name, String type, String link, String ad_content,
			int fee, int favor_movie, int favor_sport, int favor_fashion, int favor_beauty,
			int favor_travel, int favor_music, int favor_dance, int favor_food, int status, String post,
			String follow, Date apply_date, int amount, String s_date, String e_date, String ad_name, String all_amount,
			int num_amount) {
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
		this.ad_name = ad_name;
		this.all_amount = all_amount;
		this.num_amount = num_amount;
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

	public String getAd_name() {
		return ad_name;
	}

	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}

	public String getAll_amount() {
		return all_amount;
	}

	public void setAll_amount(String all_amount) {
		this.all_amount = all_amount;
	}

	public int getNum_amount() {
		return num_amount;
	}

	public void setNum_amount(int num_amount) {
		this.num_amount = num_amount;
	}
	
	
	
}
