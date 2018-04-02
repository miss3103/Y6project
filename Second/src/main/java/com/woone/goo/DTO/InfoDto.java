package com.woone.goo.DTO;

import java.sql.Date;

public class InfoDto {
	private int Idx;
	private int phone;
	private String name;
	private String transfer;
	private int confirm;
	private int refund;
	private int pay;
	private Date check_in;
	private Date check_out;
	private int bbq;
	private int personnel;
	private int o_id;
	private int p_id;
	private String roomname;

	public int getIdx() {
		return Idx;
	}

	public void setIdx(int idx) {
		Idx = idx;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTransfer() {
		return transfer;
	}

	public void setTransfer(String transfer) {
		this.transfer = transfer;
	}

	public int getConfirm() {
		return confirm;
	}

	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}

	public int getRefund() {
		return refund;
	}

	public void setRefund(int refund) {
		this.refund = refund;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public Date getCheck_in() {
		return check_in;
	}

	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}

	public Date getCheck_out() {
		return check_out;
	}

	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}

	public int getBbq() {
		return bbq;
	}

	public void setBbq(int bbq) {
		this.bbq = bbq;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getRoomname() {
		return roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public InfoDto(int idx, int phone, String name, String transfer, int confirm, int refund, int pay, Date check_in,
			Date check_out, int bbq, int personnel, int o_id, int p_id, String roomname) {
		Idx = idx;
		this.phone = phone;
		this.name = name;
		this.transfer = transfer;
		this.confirm = confirm;
		this.refund = refund;
		this.pay = pay;
		this.check_in = check_in;
		this.check_out = check_out;
		this.bbq = bbq;
		this.personnel = personnel;
		this.o_id = o_id;
		this.p_id = p_id;
		this.roomname = roomname;
	}

	public InfoDto() {
	}

}
