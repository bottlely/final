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

	public int contentDel(String content_idx) {
		int result = sqlMap.delete("contentDel", content_idx);
		return result;
	}

	public ContentDTO contentOne(String content_idx) {
		ContentDTO result = sqlMap.selectOne("contentOne", content_idx);
		return result;
	}

	public CoverageDTO coverageOne(String content_idx) {
		CoverageDTO result = sqlMap.selectOne("coverageOne", content_idx);
		return result;
	}

	public int profileUpdate(HashMap<String, String> info) {
		int result = sqlMap.update("profileUpdate", info);
		return result;
	}

	public int contentUpdate(HashMap<String, String> info) {
		int result = sqlMap.update("contentUpdate", info);
		return result;
	}

	public int coverageUpdate(HashMap<String, String> info) {
		int result = sqlMap.update("coverageUpdate", info);
		return result;
	}

	public List<ContentDTO> contentList_ff(HashMap<String, String> info) {
		List<ContentDTO> list = sqlMap.selectList("contentList_ff", info);
		return list;
	}

	public List<ContentDTO> contentList_other(String idx) {
		List<ContentDTO> list = sqlMap.selectList("contentList_other", idx);
		return list;
	}

	public int reportDel(String content_idx) {
		int result = sqlMap.delete("reportDel", content_idx);
		return result;
	}
}
