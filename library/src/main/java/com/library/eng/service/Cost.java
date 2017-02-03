package com.library.eng.service;

public class Cost {
	private int MEMBERRENTALCOST;
	private int NONMEMBERRENTALCOST;
	public int getMEMBERRENTALCOST() {
		return MEMBERRENTALCOST;
	}
	public void setMEMBERRENTALCOST(int MEMBERRENTALCOST) {
		this.MEMBERRENTALCOST = MEMBERRENTALCOST;
	}
	public int getNONMEMBERRENTALCOST() {
		return NONMEMBERRENTALCOST;
	}
	public void setNONMEMBERRENTALCOST(int NONMEMBERRENTALCOST) {
		this.NONMEMBERRENTALCOST = NONMEMBERRENTALCOST;
	}
	@Override
	public String toString() {
		return "Cost [MEMBERRENTALCOST=" + MEMBERRENTALCOST + ", NONMEMBERRENTALCOST=" + NONMEMBERRENTALCOST + "]";
	}
	
}
