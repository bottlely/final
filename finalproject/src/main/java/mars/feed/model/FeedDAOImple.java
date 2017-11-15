package mars.feed.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.content.model.ContentDTO;

public class FeedDAOImple implements FeedDAO {

	private SqlSessionTemplate sqlMap;

	public FeedDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	/**�쟾泥� �뵾�뱶 媛��졇�삤湲�*/
	public List<ContentDTO> showFeed(int idx) {
		List<ContentDTO> list = sqlMap.selectList("showFeed", idx);
		return list;
	}
}
