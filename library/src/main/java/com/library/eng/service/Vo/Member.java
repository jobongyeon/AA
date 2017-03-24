package com.library.eng.service.Vo;

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
	public void setMEMBERID(String MEMBERID) {
		this.MEMBERID = MEMBERID;
	}
	public String getMEMBERPW() {
		return MEMBERPW;
	}
	public void setMEMBERPW(String MEMBERPW) {
		this.MEMBERPW = MEMBERPW;
	}
	public String getMEMBERNAME() {
		return MEMBERNAME;
	}
	public void setMEMBERNAME(String MEMBERNAME) {
		this.MEMBERNAME = MEMBERNAME;
	}
	public String getMEMBERBIRTHDAY() {
		return MEMBERBIRTHDAY;
	}
	public void setMEMBERBIRTHDAY(String MEMBERBIRTHDAY) {
		this.MEMBERBIRTHDAY = MEMBERBIRTHDAY;
	}
	public int getMEMBERPHONE() {
		return MEMBERPHONE;
	}
	public void setMEMBERPHONE(int MEMBERPHONE) {
		this.MEMBERPHONE = MEMBERPHONE;
	}
	public String getMEMBERADDR() {
		return MEMBERADDR;
	}
	public void setMEMBERADDR(String MEMBERADDR) {
		this.MEMBERADDR = MEMBERADDR;
	}
	public String getJOINDAY() {
		return JOINDAY;
	}
	public void setJOINDAY(String JOINDAY) {
		this.JOINDAY = JOINDAY;
	}
	public String getLIBCODE() {
		return LIBCODE;
	}
	public void setLIBCODE(String LIBCODE) {
		this.LIBCODE = LIBCODE;
	}
	@Override
	public String toString() {
		return "Member [MEMBERID=" + MEMBERID + ", MEMBERPW=" + MEMBERPW + ", MEMBERNAME=" + MEMBERNAME
				+ ", MEMBERBIRTHDAY=" + MEMBERBIRTHDAY + ", MEMBERPHONE=" + MEMBERPHONE + ", MEMBERADDR=" + MEMBERADDR
				+ ", JOINDAY=" + JOINDAY + ", LIBCODE=" + LIBCODE + "]";
	}

}
