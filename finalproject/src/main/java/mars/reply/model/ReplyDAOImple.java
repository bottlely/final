package mars.reply.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class ReplyDAOImple implements ReplyDAO {
	private SqlSessionTemplate sqlMap;

	public ReplyDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public List<ReplyDTO> replyList(int content_idx) {
		List<ReplyDTO> list = sqlMap.selectList("replyList", content_idx);
		
		return list;
	}
	
	public int addReply(ReplyDTO dto) {
		int result = sqlMap.insert("addReply", dto);
		
		return result;
	}
}