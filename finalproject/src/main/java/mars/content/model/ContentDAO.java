package mars.content.model;

import java.util.HashMap;
import java.util.List;

import mars.coverage.model.CoverageDTO;

public interface ContentDAO {
	
	/*contentAddForm()
	categoryPageForm()
	photoContentForm()
	videoContetentForm()
	textContentForm()
	webCamForm()
	contentUploadForm()
	contentUpload()
	contentUndo()
	privacyScopeForm()
	privacyDefined()
	pivacyExcept()
	prePageGo()
	*/
	
	public int uploadContent(HashMap<String, String> info);
	public List<ContentDTO> searchUploadDate(HashMap<String, String> uploadDateMap);
	public List<ContentDTO> contentList(String member_idx);
	public int contentIdxSearch(String member_idx);
	public int coverageInsert(CoverageDTO dto);
	public List<CoverageDTO> coverageList(String member_idx);
	public int contentDel (String content_idx);
	public ContentDTO contentOne (String content_idx);
	public CoverageDTO coverageOne (String content_idx);
	public int profileUpdate (HashMap<String, String> info);
	public int contentUpdate(HashMap<String, String> info);
	public int coverageUpdate(HashMap<String, String> info);
	public List<ContentDTO> contentList_ff(HashMap<String, String> info);
	public List<ContentDTO> contentList_other(String idx);
}

