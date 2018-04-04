package edu.kb.ex.dao;


import java.util.ArrayList;

import edu.kb.ex.dto.AdminDto;
import edu.kb.ex.dto.BoardTypeDto;


public interface AdminDao {
	public AdminDto confirmAdmin(String adminId,String adminPw);
	public ArrayList<BoardTypeDto> managerBoard(String adminId);
	
}
