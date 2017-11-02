package mars.member.model;

import java.sql.*;

public class MemberDTO {

	int idx;
	String name;
	String id;
	String pwd;
	int gender;
	int birth_y;
	int birth_m;
	int birth_d;
	String tel;
	String city;
	int favorite_movie;
	int favorite_sport;
	int favorite_fashion;
	int favorite_beauty;
	int favorite_travel;
	int favorite_music;
	int favorite_dance;
	int favorite_food;
	Date joindate;
	int usertype;
	int company_number;
	String add1;
	String add2;
	String add3;
	String add4;
	String add5;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(int idx, String name, String id, String pwd, int gender, int birth_y, int birth_m, int birth_d,
			String tel, String city, int favorite_movie, int favorite_sport, int favorite_fashion, int favorite_beauty,
			int favorite_travel, int favorite_music, int favorite_dance, int favorite_food, Date joindate, int usertype,
			int company_number, String add1, String add2, String add3, String add4, String add5) {
		super();
		this.idx = idx;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.gender = gender;
		this.birth_y = birth_y;
		this.birth_m = birth_m;
		this.birth_d = birth_d;
		this.tel = tel;
		this.city = city;
		this.favorite_movie = favorite_movie;
		this.favorite_sport = favorite_sport;
		this.favorite_fashion = favorite_fashion;
		this.favorite_beauty = favorite_beauty;
		this.favorite_travel = favorite_travel;
		this.favorite_music = favorite_music;
		this.favorite_dance = favorite_dance;
		this.favorite_food = favorite_food;
		this.joindate = joindate;
		this.usertype = usertype;
		this.company_number = company_number;
		this.add1 = add1;
		this.add2 = add2;
		this.add3 = add3;
		this.add4 = add4;
		this.add5 = add5;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getBirth_y() {
		return birth_y;
	}

	public void setBirth_y(int birth_y) {
		this.birth_y = birth_y;
	}

	public int getBirth_m() {
		return birth_m;
	}

	public void setBirth_m(int birth_m) {
		this.birth_m = birth_m;
	}

	public int getBirth_d() {
		return birth_d;
	}

	public void setBirth_d(int birth_d) {
		this.birth_d = birth_d;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getFavorite_movie() {
		return favorite_movie;
	}

	public void setFavorite_movie(int favorite_movie) {
		this.favorite_movie = favorite_movie;
	}

	public int getFavorite_sport() {
		return favorite_sport;
	}

	public void setFavorite_sport(int favorite_sport) {
		this.favorite_sport = favorite_sport;
	}

	public int getFavorite_fashion() {
		return favorite_fashion;
	}

	public void setFavorite_fashion(int favorite_fashion) {
		this.favorite_fashion = favorite_fashion;
	}

	public int getFavorite_beauty() {
		return favorite_beauty;
	}

	public void setFavorite_beauty(int favorite_beauty) {
		this.favorite_beauty = favorite_beauty;
	}

	public int getFavorite_travel() {
		return favorite_travel;
	}

	public void setFavorite_travel(int favorite_travel) {
		this.favorite_travel = favorite_travel;
	}

	public int getFavorite_music() {
		return favorite_music;
	}

	public void setFavorite_music(int favorite_music) {
		this.favorite_music = favorite_music;
	}

	public int getFavorite_dance() {
		return favorite_dance;
	}

	public void setFavorite_dance(int favorite_dance) {
		this.favorite_dance = favorite_dance;
	}

	public int getFavorite_food() {
		return favorite_food;
	}

	public void setFavorite_food(int favorite_food) {
		this.favorite_food = favorite_food;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public int getCompany_number() {
		return company_number;
	}

	public void setCompany_number(int company_number) {
		this.company_number = company_number;
	}

	public String getAdd1() {
		return add1;
	}

	public void setAdd1(String add1) {
		this.add1 = add1;
	}

	public String getAdd2() {
		return add2;
	}

	public void setAdd2(String add2) {
		this.add2 = add2;
	}

	public String getAdd3() {
		return add3;
	}

	public void setAdd3(String add3) {
		this.add3 = add3;
	}

	public String getAdd4() {
		return add4;
	}

	public void setAdd4(String add4) {
		this.add4 = add4;
	}

	public String getAdd5() {
		return add5;
	}

	public void setAdd5(String add5) {
		this.add5 = add5;
	}
	
	
	
	
	
}


