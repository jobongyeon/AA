package com.library.eng.service;

public class Rental {
	private int BOOKCODE;
	private String RENTALSTARTDAY;
	private String RETURNEXPECTDAY;
	private String MEMBERID;
	private String RETURNSTATUS;
	private int RENTALCODE;
	public int getRENTALCODE() {
		return RENTALCODE;
	}
	public void setRENTALCODE(int RENTALCODE) {
		this.RENTALCODE = RENTALCODE;
	}
	public int getBOOKCODE() {
		return BOOKCODE;
	}
	public void setBOOKCODE(int BOOKCODE) {
		this.BOOKCODE = BOOKCODE;
	}
	public String getRENTALSTARTDAY() {
		return RENTALSTARTDAY;
	}
	public void setRENTALSTARTDAY(String RENTALSTARTDAY) {
		this.RENTALSTARTDAY = RENTALSTARTDAY;
	}
	public String getRETURNEXPECTDAY() {
		return RETURNEXPECTDAY;
	}
	public void setRETURNEXPECTDAY(String RETURNEXPECTDAY) {
		this.RETURNEXPECTDAY = RETURNEXPECTDAY;
	}
	public String getMEMBERID() {
		return MEMBERID;
	}
	public void setMEMBERID(String MEMBERID) {
		this.MEMBERID = MEMBERID;
	}
	public String getRETURNSTATUS() {
		return RETURNSTATUS;
	}
	public void setRETURNSTATUS(String RETURNSTATUS) {
		this.RETURNSTATUS = RETURNSTATUS;
	}
	@Override
	public String toString() {
		return "Rental [BOOKCODE=" + BOOKCODE + ", RENTALSTARTDAY=" + RENTALSTARTDAY + ", RETURNEXPECTDAY="
				+ RETURNEXPECTDAY + ", MEMBERID=" + MEMBERID + ", RETURNSTATUS=" + RETURNSTATUS + ", RENTALCODE="
				+ RENTALCODE + "]";
	}
	
	
}