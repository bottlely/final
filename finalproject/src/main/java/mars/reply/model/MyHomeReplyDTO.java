package mars.reply.model;

public class MyHomeReplyDTO {
	private String name;
	private String profile_img;
	private String content;
	
	public MyHomeReplyDTO(String name, String profile_img, String content) {
		super();
		this.name = name;
		this.profile_img = profile_img;
		this.content = content;
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
