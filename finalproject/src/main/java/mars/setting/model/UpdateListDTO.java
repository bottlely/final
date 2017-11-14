package mars.setting.model;

public class UpdateListDTO {

	private String name;
	private int idx;
	private boolean checked;
	
	public UpdateListDTO() {
		// TODO Auto-generated constructor stub
	}

	public UpdateListDTO(String name, int idx, boolean checked) {
		super();
		this.name = name;
		this.idx = idx;
		this.checked = checked;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	
	
}
