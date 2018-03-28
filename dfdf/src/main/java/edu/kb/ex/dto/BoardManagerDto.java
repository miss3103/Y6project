package edu.kb.ex.dto;

public class BoardManagerDto {
	private String adminId;
	private int bType;
	private String typeName;
	
	
	public BoardManagerDto() {}
	
	public BoardManagerDto(String adminId, int bType, String typeName) {
		this.adminId = adminId;
		this.bType = bType;
		this.typeName = typeName;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public int getbType() {
		return bType;
	}
	public void setbType(int bType) {
		this.bType = bType;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	
}