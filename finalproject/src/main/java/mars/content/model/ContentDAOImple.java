package mars.content.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import mars.coverage.model.CoverageDTO;

public class ContentDAOImple implements ContentDAO {
	
	private SqlSessionTemplate sqlMap;

	public ContentDAOImple (SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int uploadContent(HashMap<String, String> info) {
		int result = sqlMap.insert("uploadContent", info);
		return result;
	}

	public List<ContentDTO> searchUploadDate(HashMap<String, String> uploadDateMap){
		List<ContentDTO> list = sqlMap.selectList("searchUploadDate", uploadDateMap);
		return list;
	}

	public List<ContentDTO> contentList(String member_idx) {
		List<ContentDTO> list = sqlMap.selectList("contentList", member_idx);
		return list;
	}

	public int contentIdxSearch(String member_idx) {
		int contentIdx = sqlMap.selectOne("contentIdxSearch", member_idx);
		return contentIdx;
	}

	public int coverageInsert(CoverageDTO dto) {
		int result = sqlMap.insert("coverageInsert", dto);
		return result;
	}

	public List<CoverageDTO> coverageList(String member_idx) {
		List<CoverageDTO> list = sqlMap.selectList("coverageList",member_idx);
		return list;
	}
}
