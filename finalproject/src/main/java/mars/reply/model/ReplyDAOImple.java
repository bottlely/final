package mars.reply.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class ReplyDAOImple implements ReplyDAO {
	private SqlSessionTemplate sqlMap;

	public ReplyDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<MyHomeReplyDTO> replyList(int content_idx) {
		List<MyHomeReplyDTO> list = sqlMap.selectList("replyList", content_idx);
		
		return list;
	}
	
	public int addReply(String content) {
		int content_idx = sqlMap.insert("addReply", content);
		
		return content_idx;
	}
}