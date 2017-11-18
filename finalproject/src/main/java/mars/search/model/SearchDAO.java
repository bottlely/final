package mars.search.model;

import java.util.List;
import mars.member.model.MemberDTO;
import mars.member.model.MyHomeMemberDTO;
import mars.myHome.model.MyHomeDTO;

public interface SearchDAO {
   public List<MyHomeMemberDTO> memberSearch(String name);
}