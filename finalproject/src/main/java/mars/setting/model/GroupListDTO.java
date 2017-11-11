package mars.setting.model;

public class GroupListDTO {

	private int idx;
	private String name;
	private String group_name;
	
	public GroupListDTO() {
	}

	public GroupListDTO(int idx, String name, String group_name) {
		super();
		this.idx = idx;
		this.name = name;
		this.group_name = group_name;
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

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

}
