package mars.myHome.model;

import java.util.HashMap;

public interface MyHomeDAO {
	
	public MyHomeDTO myHomeSource(String member_idx);
	
	public int profileUpload(HashMap<String, String> info);
	public int backgroundUpload(HashMap<String, String> info);
	public int introUpload(HashMap<String, String> info);
	
	public void visitorUpdate(String member_idx);
	public void visitorTodayReset(String member_idx);
	
	public String refreshPage();
	public String moreButtonForm();

}
