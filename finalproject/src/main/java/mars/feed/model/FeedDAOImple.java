package mars.feed.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.content.model.ContentDTO;
import mars.htag.model.htagDTO;

public class FeedDAOImple implements FeedDAO {

	private SqlSessionTemplate sqlMap;

	public FeedDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**�쟾泥� �뵾�뱶 媛��졇�삤湲�*/
	public List<ContentDTO> showFeed(HashMap<String, String> map) {
		List<ContentDTO> list = sqlMap.selectList("showFeed", map);
		return list;
	}

	/**해시태그 피드 가져오기*/
	public List<htagDTO> getHtag() {
		List<htagDTO> hlist = sqlMap.selectList("getHtag");
		return hlist;
	}
}
