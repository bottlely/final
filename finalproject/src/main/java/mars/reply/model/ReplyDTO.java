package mars.reply.model;

import java.sql.Date;

import mars.myHome.model.MyHomeDTO;

public class ReplyDTO {
   private int idx;
   private int from_idx;
   private int content_idx;
   private int to_idx;
   private String content;
   private int ref;
   private int lev;
   private int sunbun;
   private Date replydate;
   private int numtype1;
   private int numtype2;
   private String vartype1;
   private String vartype2;
   private Date likedate;
 
   private MyHomeDTO myhome;
   
   public MyHomeDTO getMyHomeDTO() {
   return myhome;
}
public void setMyHomeDTO(MyHomeDTO myhome) {
   this.myhome = myhome;
}
public ReplyDTO() {
      super();
   }
   public ReplyDTO(int idx, int from_idx, int content_idx, int to_idx, String content, int ref, int lev, int sunbun,
         Date replydate, int numtype1, int numtype2, String vartype1, String vartype2) {
      super();
      this.idx = idx;
      this.from_idx = from_idx;
      this.content_idx = content_idx;
      this.to_idx = to_idx;
      this.content = content;
      this.ref = ref;
      this.lev = lev;
      this.sunbun = sunbun;
      this.replydate = replydate;
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
   public int getFrom_idx() {
      return from_idx;
   }
   public void setFrom_idx(int from_idx) {
      this.from_idx = from_idx;
   }
   public int getContent_idx() {
      return content_idx;
   }
   public void setContent_idx(int content_idx) {
      this.content_idx = content_idx;
   }
   public int getTo_idx() {
      return to_idx;
   }
   public void setTo_idx(int to_idx) {
      this.to_idx = to_idx;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
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
   public int getSunbun() {
      return sunbun;
   }
   public void setSunbun(int sunbun) {
      this.sunbun = sunbun;
   }
   public Date getReplydate() {
      return replydate;
   }
   public void setReplydate(Date replydate) {
      this.replydate = replydate;
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
public Date getLikedate() {
	return likedate;
}
public void setLikedate(Date likedate) {
	this.likedate = likedate;
}
public MyHomeDTO getMyhome() {
	return myhome;
}
public void setMyhome(MyHomeDTO myhome) {
	this.myhome = myhome;
}
   
   
}