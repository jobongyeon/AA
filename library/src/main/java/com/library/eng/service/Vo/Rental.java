package com.library.eng.service.Vo;

public class Rental {
	private int BOOKCODE;				//도서코드
	private String RENTALSTARTDAY;		//도서대여
	private String RETURNEXPECTDAY;		//도서반납예정일
	private String MEMBERID;			//도서대여자아이디
	private String MEMBERNAME;			//도서대여자이름
	private int MEMBERPHONE;			//도서대여자전화번호
	private String RETURNSTATUS;		//도서대여/반납상태
	private int RENTALCODE;				//도서대여코드
	private String BOOKNAME;			//도서이름
	
	
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
	public String getBOOKNAME() {
		return BOOKNAME;
	}
	public void setBOOKNAME(String bOOKNAME) {
		BOOKNAME = bOOKNAME;
	}
	public int getMEMBERPHONE() {
		return MEMBERPHONE;
	}
	public void setMEMBERPHONE(int mEMBERPHONE) {
		MEMBERPHONE = mEMBERPHONE;
	}
	public String getMEMBERNAME() {
		return MEMBERNAME;
	}
	public void setMEMBERNAME(String mEMBERNAME) {
		MEMBERNAME = mEMBERNAME;
	}
	@Override
	public String toString() {
		return "Rental [BOOKCODE=" + BOOKCODE + ", RENTALSTARTDAY=" + RENTALSTARTDAY + ", RETURNEXPECTDAY="
				+ RETURNEXPECTDAY + ", MEMBERID=" + MEMBERID + ", MEMBERNAME=" + MEMBERNAME + ", MEMBERPHONE="
				+ MEMBERPHONE + ", RETURNSTATUS=" + RETURNSTATUS + ", RENTALCODE=" + RENTALCODE + ", BOOKNAME="
				+ BOOKNAME + "]";
	}
	
}