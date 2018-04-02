package com.woone.goo.DTO;

public class RoomDto {
	private	String roomname;
	private	String content;
	private	int defaultpeople;
	private	int price;
	private	int flag;
	private	int regdate;
	private	int weekday;
	private	int weekend;
	private	String roomtype;
	private	String h_idx;

	public RoomDto() {
	}

	public String getRoomname() {
		return roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getDefaultpeople() {
		return defaultpeople;
	}

	public void setDefaultpeople(int defaultpeople) {
		this.defaultpeople = defaultpeople;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public int getRegdate() {
		return regdate;
	}

	public void setRegdate(int regdate) {
		this.regdate = regdate;
	}

	public int getWeekday() {
		return weekday;
	}

	public void setWeekday(int weekday) {
		this.weekday = weekday;
	}

	public int getWeekend() {
		return weekend;
	}

	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}

	public String getRoomtype() {
		return roomtype;
	}

	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}

	public String getH_idx() {
		return h_idx;
	}

	public void setH_idx(String h_idx) {
		this.h_idx = h_idx;
	}

	public RoomDto(String roomname, String content, int defaultpeople, int price, int flag, int regdate, int weekday,
			int weekend, String roomtype, String h_idx) {
		this.roomname = roomname;
		this.content = content;
		this.defaultpeople = defaultpeople;
		this.price = price;
		this.flag = flag;
		this.regdate = regdate;
		this.weekday = weekday;
		this.weekend = weekend;
		this.roomtype = roomtype;
		this.h_idx = h_idx;
	}


}
