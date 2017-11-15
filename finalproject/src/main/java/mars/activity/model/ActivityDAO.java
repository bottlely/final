package mars.activity.model;

import java.util.List;

import mars.activity.model.ActivityDTO;

public interface ActivityDAO {
	 public List<ActivityDTO> active_like(int i);
	 public List<ActivityDTO> active_reply(int i);
}
