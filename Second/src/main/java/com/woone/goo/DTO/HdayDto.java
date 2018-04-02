package com.woone.goo.DTO;

import java.sql.Date;

public class HdayDto {
	private String h_Idx;
	private Date holiday;
	private Date br_holiday;
	private String p_Idx;

	public String getH_Idx() {
		return h_Idx;
	}

	public void setH_Idx(String h_Idx) {
		this.h_Idx = h_Idx;
	}

	public Date getHoliday() {
		return holiday;
	}

	public void setHoliday(Date holiday) {
		this.holiday = holiday;
	}

	public Date getBr_holiday() {
		return br_holiday;
	}

	public void setBr_holiday(Date br_holiday) {
		this.br_holiday = br_holiday;
	}

	public String getP_Idx() {
		return p_Idx;
	}

	public void setP_Idx(String p_Idx) {
		this.p_Idx = p_Idx;
	}

	public HdayDto(String h_Idx, Date holiday, Date br_holiday, String p_Idx) {
		this.h_Idx = h_Idx;
		this.holiday = holiday;
		this.br_holiday = br_holiday;
		this.p_Idx = p_Idx;
	}

	public HdayDto() {
	}
}
