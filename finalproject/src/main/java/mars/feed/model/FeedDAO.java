package mars.feed.model;

import mars.content.model.*;
import java.util.*;

public interface FeedDAO {

	public List<ContentDTO> showFeed(int idx);
	public List<ContentDTO> photoFeed(int idx);
}
