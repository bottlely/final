package mars.htag.model;

import java.util.HashMap;
import java.util.List;

import mars.content.model.ContentDTO;
import mars.htag.model.htagDTO;

public interface htagDAO {
   public List<ContentDTO> htagSearch(String name);
   public void add_Htag(HashMap<String, String> map);
}