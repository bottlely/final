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
	
	
}
