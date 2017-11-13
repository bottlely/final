package mars.reply.model;

public class MyHomeReplyDTO {
   private String name;
   private String profile_img;
   private String content;
   private int idx;
   private int lev;
   private int ref;
   private int sunbun;
   
   public MyHomeReplyDTO(String name, String profile_img, String content, int idx, int lev, int ref, int sunbun) {
      super();
      this.name = name;
      this.profile_img = profile_img;
      this.content = content;
      this.idx = idx;
      this.lev = lev;
      this.ref = ref;
      this.sunbun = sunbun;
   }
   
   public int getSunbun() {
   return sunbun;
}


public void setSunbun(int sunbun) {
   this.sunbun = sunbun;
}


public int getRef() {
   return ref;
}



public void setRef(int ref) {
   this.ref = ref;
}



public int getLev() {
      return lev;
   }

   public void setLev(int lev) {
      this.lev = lev;
   }

   public int getIdx() {
      return idx;
   }

   public void setIdx(int idx) {
      this.idx = idx;
   }

   public MyHomeReplyDTO() {
      super();
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getProfile_img() {
      return profile_img;
   }
   public void setProfile_img(String profile_img) {
      this.profile_img = profile_img;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   
   
}