package mars.chat.model;

public interface ChattingDAO {
	public int insertChat(ChattingDTO cdto);
	public int insertGrChat(GroupChattingDTO gcdto);
}
