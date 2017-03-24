package com.library.eng.service.Vo;

public class Books {
	private int LIBCODE;
	private int BOOKCODE;
	private String BOOKNAME;
	private String WRITER;
	private String PUBLISHER;
	private String CATEGORY;
	private String GENRE;
	private String BOOKLOCATION;
	private String CURRENTSTATUS;
	
	public String getCURRENTSTATUS() {
		return CURRENTSTATUS;
	}
	public void setCURRENTSTATUS(String CURRENTSTATUS) {
		this.CURRENTSTATUS = CURRENTSTATUS;
	}
	public int getBOOKCODE() {
		return BOOKCODE;
	}
	public void setBOOKCODE(int BOOKCODE) {
		this.BOOKCODE = BOOKCODE;
	}
	public int getLIBCODE() {
		return LIBCODE;
	}
	public void setLIBCODE(int LIBCODE) {
		this.LIBCODE = LIBCODE;
	}
	public String getBOOKNAME() {
		return BOOKNAME;
	}
	public void setBOOKNAME(String BOOKNAME) {
		this.BOOKNAME = BOOKNAME;
	}
	public String getWRITER() {
		return WRITER;
	}
	public void setWRITER(String WRITER) {
		this.WRITER = WRITER;
	}
	public String getPUBLISHER() {
		return PUBLISHER;
	}
	public void setPUBLISHER(String PUBLISHER) {
		this.PUBLISHER = PUBLISHER;
	}
	public String getCATEGORY() {
		return CATEGORY;
	}
	public void setCATEGORY(String CATEGORY) {
		this.CATEGORY = CATEGORY;
	}
	public String getGENRE() {
		return GENRE;
	}
	public void setGENRE(String GENRE) {
		this.GENRE = GENRE;
	}
	public String getBOOKLOCATION() {
		return BOOKLOCATION;
	}
	public void setBOOKLOCATION(String BOOKLOCATION) {
		this.BOOKLOCATION = BOOKLOCATION;
	}
	@Override
	public String toString() {
		return "Books [LIBCODE=" + LIBCODE + ", BOOKCODE=" + BOOKCODE + ", BOOKNAME=" + BOOKNAME + ", WRITER=" + WRITER
				+ ", PUBLISHER=" + PUBLISHER + ", CATEGORY=" + CATEGORY + ", GENRE=" + GENRE + ", BOOKLOCATION="
				+ BOOKLOCATION + ", CURRENTSTATUS=" + CURRENTSTATUS + "]";
	}
}
