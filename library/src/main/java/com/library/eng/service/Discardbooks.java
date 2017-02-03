package com.library.eng.service;

public class Discardbooks {
	private int BOOKCODE;
	private String DISCARDREASON;
	public int getBOOKCODE() {
		return BOOKCODE;
	}
	public void setBOOKCODE(int BOOKCODE) {
		this.BOOKCODE = BOOKCODE;
	}
	public String getDISCARDREASON() {
		return DISCARDREASON;
	}
	public void setDISCARDREASON(String DISCARDREASON) {
		this.DISCARDREASON = DISCARDREASON;
	}
	@Override
	public String toString() {
		return "Discardbooks [BOOKCODE=" + BOOKCODE + ", DISCARDREASON=" + DISCARDREASON + "]";
	}
}
