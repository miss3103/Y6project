package edu.kb.ex.dao;

import java.util.ArrayList;
import edu.kb.ex.dto.MemberDto;

public interface MemberDao {
	public ArrayList<MemberDto> listDao();
	public boolean loginFormDao(String id, String pwd);
	public void signUpDao(String name, String id, String pwd, int phone, String addr_code, String addr_main, String addr_side);
	public MemberDto myPageDao(String id);
}
