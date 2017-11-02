package mars.myHome.model;

import java.util.HashMap;

public interface MyHomeDAO {
	
	public int introUpload(HashMap<String, String> info);
	public String refreshPage();
	public String moreButtonForm();

}
