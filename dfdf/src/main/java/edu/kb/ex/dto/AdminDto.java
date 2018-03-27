package edu.kb.ex.dto;

public class AdminDto {
	private String adminId;
	private String adminPw;
	
	
	public AdminDto() {}
	public AdminDto(String adminId, String adminPw) {
		this.adminId = adminId;
		this.adminPw = adminPw;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	
}
