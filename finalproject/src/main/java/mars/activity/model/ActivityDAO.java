package mars.activity.model;

import java.util.List;

import mars.activity.model.ActivityDTO;

public interface ActivityDAO {
	 public List<String> active_like(int i);
	 public List<String> active_reply(int i);
}
