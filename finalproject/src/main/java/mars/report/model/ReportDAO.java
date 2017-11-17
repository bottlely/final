package mars.report.model;
import java.util.List;
import mars.report.model.ReportDTO;
public interface ReportDAO {
	public List<ReportDTO> list(int i , int j,int z); 
	public int allReport();
	public int partReport(int i);
}
