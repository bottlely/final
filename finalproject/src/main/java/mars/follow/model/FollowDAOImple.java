package mars.follow.model;

import java.sql.*;
import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

import mars.myHome.model.MyHomeDTO;

public class FollowDAOImple implements FollowDAO {
	
	private SqlSessionTemplate sqlMap;	
	
	public FollowDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public MyHomeDTO ac_name_img(int to_idx) {
		MyHomeDTO list = sqlMap.selectOne("ac_name_img", to_idx);
		return list;
	}
	
}
