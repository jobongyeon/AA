package com.library.eng.service.Vo;

public class Admin {
	private String ADMINID;
	private String ADMINPW;
	public String getADMINID() {
		return ADMINID;
	}
	public void setADMINID(String ADMINID) {
		this.ADMINID = ADMINID;
	}
	public String getADMINPW() {
		return ADMINPW;
	}
	public void setADMINPW(String ADMINPW) {
		this.ADMINPW = ADMINPW;
	}
	@Override
	public String toString() {
		return "Admin [ADMINID=" + ADMINID + ", ADMINPW=" + ADMINPW + "]";
	}
	
}
