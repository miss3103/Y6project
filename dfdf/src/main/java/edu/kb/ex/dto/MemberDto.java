package edu.kb.ex.dto;

public class MemberDto {
	private String name;
	private String id;
	private String pwd;
	private int phone;
	private String addr_code;
	private String addr_main;
	private String addr_side;
	
	public MemberDto() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public MemberDto(String name, String id, String pwd, int phone, String addr_code, String addr_main, String addr_side) {
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.addr_code = addr_code;
		this.addr_main = addr_main;
		this.addr_side = addr_side;
	}
	public String getAddr_main() {
		return addr_main;
	}
	public void setAddr_main(String addr_main) {
		this.addr_main = addr_main;
	}
	public String getAddr_side() {
		return addr_side;
	}
	public void setAddr_side(String addr_side) {
		this.addr_side = addr_side;
	}
	public String getAddr_code() {
		return addr_code;
	}
	public void setAddr_code(String addr_code) {
		this.addr_code = addr_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
