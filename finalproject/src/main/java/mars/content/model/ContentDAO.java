package mars.content.model;

import java.util.HashMap;
import java.util.List;

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
}
