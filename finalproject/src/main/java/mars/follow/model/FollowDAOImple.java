package mars.follow.model;

import java.sql.*;
import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

public class FollowDAOImple implements FollowDAO {
	
	private SqlSessionTemplate sqlMap;	
	
	public FollowDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
}
