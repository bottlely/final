package mars.htag.model;

import java.util.HashMap;
import java.util.List;
import mars.htag.model.htagDTO;

public interface htagDAO {
   public List<htagDTO> htagSearch(String name);
   public void add_Htag(HashMap<String, String> map);
}