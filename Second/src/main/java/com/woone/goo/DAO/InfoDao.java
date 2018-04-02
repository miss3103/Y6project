package com.woone.goo.DAO;

import java.util.Date;

import com.woone.goo.DTO.InfoDto;


public interface InfoDao {
	public void Info(int phone, String name, int roomDto, Date vip_checkin,Date check_out, int vip_people,String roomname);

	public InfoDto Infodata(String name,int phone);
	
	public void deleteinfo(String idx);
}
