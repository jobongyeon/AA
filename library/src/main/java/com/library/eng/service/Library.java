package com.library.eng.service;

public class Library {
	private int LIBCODE;
	private String LIBNAME;
	private String LIBLOCATION;
	public int getLIBCODE() {
		return LIBCODE;
	}
	public void setLIBCODE(int lIBCODE) {
		LIBCODE = lIBCODE;
	}
	public String getLIBNAME() {
		return LIBNAME;
	}
	public void setLIBNAME(String lIBNAME) {
		LIBNAME = lIBNAME;
	}
	public String getLIBLOCATION() {
		return LIBLOCATION;
	}
	public void setLIBLOCATION(String lIBLOCATION) {
		LIBLOCATION = lIBLOCATION;
	}
	@Override
	public String toString() {
		return "Library [LIBCODE=" + LIBCODE + ", LIBNAME=" + LIBNAME + ", LIBLOCATION=" + LIBLOCATION + "]";
	}
}
