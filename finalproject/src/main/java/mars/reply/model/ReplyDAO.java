package mars.reply.model;

import java.util.List;

public interface ReplyDAO {
	public List<ReplyDTO> replyList(int content_idx);
	public int addReply(ReplyDTO dto);
}
