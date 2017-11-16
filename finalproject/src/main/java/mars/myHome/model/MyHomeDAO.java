package mars.myHome.model;

import java.util.HashMap;

import mars.report.model.ReportDTO;

public interface MyHomeDAO {
	
	public MyHomeDTO myHomeSource(String member_idx);
	
	public int profileUpload(HashMap<String, String> info);
	public int backgroundUpload(HashMap<String, String> info);
	public int introUpload(HashMap<String, String> info);
	
	public int openCoverage(HashMap<String, Integer> info);
	
	public void visitorUpdate(String member_idx);
	
	public String refreshPage();
	public String moreButtonForm();
	
	public int reportSend(ReportDTO dto);
	
	public int visitorTodayReset();

}
