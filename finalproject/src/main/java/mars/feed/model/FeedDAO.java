package mars.feed.model;

import mars.content.model.*;
import mars.htag.model.htagDTO;

import java.util.*;

public interface FeedDAO {

	public List<ContentDTO> showFeed(HashMap<String, String> map);
	public List<htagDTO> getHtag();
}
