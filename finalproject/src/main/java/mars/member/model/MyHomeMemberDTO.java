package mars.member.model;

public class MyHomeMemberDTO {
   private int idx;
   private String name;
   private int gender;
   private int birth_y;
   private int birth_m;
   private int birth_d;
   private String profile_img;
   private String intro;
   public MyHomeMemberDTO() {
      super();
   }
   public MyHomeMemberDTO(int idx, String name, int gender, int birth_y, int birth_m, int birth_d, String profile_img,
         String intro) {
      super();
      this.idx = idx;
      this.name = name;
      this.gender = gender;
      this.birth_y = birth_y;
      this.birth_m = birth_m;
      this.birth_d = birth_d;
      this.profile_img = profile_img;
      this.intro = intro;
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
   public String getProfile_img() {
      return profile_img;
   }
   public void setProfile_img(String profile_img) {
      this.profile_img = profile_img;
   }
   public String getIntro() {
      return intro;
   }
   public void setIntro(String intro) {
      this.intro = intro;
   }
   
   
}