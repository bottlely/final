package mars.reply.model;

import java.util.List;

public interface ReplyDAO {
	public List<MyHomeReplyDTO> replyList(int content_idx);
	public int addReply(ReplyDTO dto);
}
