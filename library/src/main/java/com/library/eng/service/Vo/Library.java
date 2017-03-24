package com.library.eng.service.Vo;

public class Library {
	private int LIBCODE;
	private String LIBNAME;
	private String LIBLOCATION;
	public int getLIBCODE() {
		return LIBCODE;
	}
	public void setLIBCODE(int LIBCODE) {
		this.LIBCODE = LIBCODE;
	}
	public String getLIBNAME() {
		return LIBNAME;
	}
	public void setLIBNAME(String LIBNAME) {
		this.LIBNAME = LIBNAME;
	}
	public String getLIBLOCATION() {
		return LIBLOCATION;
	}
	public void setLIBLOCATION(String LIBLOCATION) {
		this.LIBLOCATION = LIBLOCATION;
	}
	@Override
	public String toString() {
		return "Library [LIBCODE=" + LIBCODE + ", LIBNAME=" + LIBNAME + ", LIBLOCATION=" + LIBLOCATION + "]";
	}
}
