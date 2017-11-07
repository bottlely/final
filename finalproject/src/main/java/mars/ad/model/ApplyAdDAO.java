package mars.ad.model;

import java.util.List;

public interface ApplyAdDAO {

	public List<ApplyAdDTO> adList();
	public int insert(ApplyAdDTO adDto);

}
