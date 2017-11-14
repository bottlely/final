package mars.chat.model;

import java.sql.*;
import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

public class ChattingDAOImple implements ChattingDAO {
	
	private SqlSessionTemplate sqlMap;	
	
	public ChattingDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int insertChat(ChattingDTO cdto) {
		int res = sqlMap.insert("chatInsert", cdto);
		return res;
	}
	
	public int insertGrChat(GroupChattingDTO gcdto) {
		int res = sqlMap.insert("groupChatInsert", gcdto);
		return res;
	}
	
}
