package com.woone.goo.DTO;

import java.sql.Date;

public class PlanDto {
	private int p_Idx;
	private Date peak_season;
	private int peak_price;

	public PlanDto() {
	}

	public PlanDto(int p_Idx, Date peak_season, int peak_price) {
		this.p_Idx = p_Idx;
		this.peak_season = peak_season;
		this.peak_price = peak_price;
	}

	public int getP_Idx() {
		return p_Idx;
	}

	public void setP_Idx(int p_Idx) {
		this.p_Idx = p_Idx;
	}

	public Date getPeak_season() {
		return peak_season;
	}

	public void setPeak_season(Date peak_season) {
		this.peak_season = peak_season;
	}

	public int getPeak_price() {
		return peak_price;
	}

	public void setPeak_price(int peak_price) {
		this.peak_price = peak_price;
	}

}
