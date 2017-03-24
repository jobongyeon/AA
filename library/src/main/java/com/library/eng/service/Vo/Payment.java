package com.library.eng.service.Vo;

public class Payment {
	private int RENTALCODE;
	private String MEMBERID;
	private String PAYMENTDAY;
	private int PAYMENTPRICE;
	public int getRENTALCODE() {
		return RENTALCODE;
	}
	public void setRENTALCODE(int RENTALCODE) {
		this.RENTALCODE = RENTALCODE;
	}
	public String getMEMBERID() {
		return MEMBERID;
	}
	public void setMEMBERID(String MEMBERID) {
		this.MEMBERID = MEMBERID;
	}
	public String getPAYMENTDAY() {
		return PAYMENTDAY;
	}
	public void setPAYMENTDAY(String PAYMENTDAY) {
		this.PAYMENTDAY = PAYMENTDAY;
	}
	public int getPAYMENTPRICE() {
		return PAYMENTPRICE;
	}
	public void setPAYMENTPRICE(int PAYMENTPRICE) {
		this.PAYMENTPRICE = PAYMENTPRICE;
	}
	@Override
	public String toString() {
		return "Payment [RENTALCODE=" + RENTALCODE + ", MEMBERID=" + MEMBERID + ", PAYMENTDAY=" + PAYMENTDAY
				+ ", PAYMENTPRICE=" + PAYMENTPRICE + "]";
	}
	
}
