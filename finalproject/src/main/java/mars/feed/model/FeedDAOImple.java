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

	/**전체 피드 가져오기*/
	public List<ContentDTO> showFeed(int idx) {
		List<ContentDTO> list = sqlMap.selectList("showFeed", idx);
		return list;
	}

	public List<ContentDTO> photoFeed(int idx) {
		List<ContentDTO> list = sqlMap.selectList("photoFeed", idx);
		return list;
	}

}
