package mars.ad.model;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

public interface ApplyAdDAO {

	public List<ApplyAdDTO> adList();
	public List<ApplyAdDTO> adPayList();
	public int insert(ApplyAdDTO adDto, String ad_content);
	public List<ApplyAdDTO> showCurList(int member_idx);
	public String showAveNum(Integer i);
	public List<ApplyAdDTO> showNum(int member_idx);
	public List<ApplyAdDTO> showList(String ad_idx);
	public String insertOkSign(int ad_idx, int member_idx);
	public String insertNoSign(int ad_idx, int member_idx);

}
