package edu.kb.ex.dao;

import edu.kb.ex.dto.AdminDto;

public interface AdminDao {
	public AdminDto confirmAdmin(String adminId,String adminPw);
	public int getAdminBoardType(String adminId);
}
