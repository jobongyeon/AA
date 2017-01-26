package com.library.eng.service;

public class Member {
	
	private String MEMBERID;
	private String MEMBERPW;
	private String MEMBERNAME;
	private String MEMBERBIRTHDAY;
	private int MEMBERPHONE;
	private String MEMBERADDR;
	private String JOINDAY;
	private String LIBCODE;
	public String getMEMBERID() {
		return MEMBERID;
	}
	public void setMEMBERID(String mEMBERID) {
		MEMBERID = mEMBERID;
	}
	public String getMEMBERPW() {
		return MEMBERPW;
	}
	public void setMEMBERPW(String mEMBERPW) {
		MEMBERPW = mEMBERPW;
	}
	public String getMEMBERNAME() {
		return MEMBERNAME;
	}
	public void setMEMBERNAME(String mEMBERNAME) {
		MEMBERNAME = mEMBERNAME;
	}
	public String getMEMBERBIRTHDAY() {
		return MEMBERBIRTHDAY;
	}
	public void setMEMBERBIRTHDAY(String mEMBERBIRTHDAY) {
		MEMBERBIRTHDAY = mEMBERBIRTHDAY;
	}
	public int getMEMBERPHONE() {
		return MEMBERPHONE;
	}
	public void setMEMBERPHONE(int mEMBERPHONE) {
		MEMBERPHONE = mEMBERPHONE;
	}
	public String getMEMBERADDR() {
		return MEMBERADDR;
	}
	public void setMEMBERADDR(String mEMBERADDR) {
		MEMBERADDR = mEMBERADDR;
	}
	public String getJOINDAY() {
		return JOINDAY;
	}
	public void setJOINDAY(String jOINDAY) {
		JOINDAY = jOINDAY;
	}
	public String getLIBCODE() {
		return LIBCODE;
	}
	public void setLIBCODE(String lIBCODE) {
		LIBCODE = lIBCODE;
	}
	@Override
	public String toString() {
		return "Member [MEMBERID=" + MEMBERID + ", MEMBERPW=" + MEMBERPW + ", MEMBERNAME=" + MEMBERNAME
				+ ", MEMBERBIRTHDAY=" + MEMBERBIRTHDAY + ", MEMBERPHONE=" + MEMBERPHONE + ", MEMBERADDR=" + MEMBERADDR
				+ ", JOINDAY=" + JOINDAY + ", LIBCODE=" + LIBCODE + "]";
	}

}
