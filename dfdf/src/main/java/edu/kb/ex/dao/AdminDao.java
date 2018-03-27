package edu.kb.ex.dao;

import edu.kb.ex.dto.AdminDto;

public interface AdminDao {
	public AdminDto confirmAdmin(String admin_id,String admin_pw);

}
