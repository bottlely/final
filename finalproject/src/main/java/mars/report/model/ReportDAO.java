package mars.report.model;
import java.util.List;
import mars.report.model.ReportDTO;
public interface ReportDAO {
	public List<ReportDTO> list(int i , int j); 
	public int allReport();
}
