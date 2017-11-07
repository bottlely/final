package mars.search.model;

import java.util.List;

import mars.member.model.MemberDTO;

public interface SearchDAO {
	public List<MemberDTO> memberSearch(String name);
}