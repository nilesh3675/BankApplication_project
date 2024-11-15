package project.model;

public class Customer {
	private String custName;
	private int accNo;
	private String pass;
	private int accBal;
	public Customer() {
		super();
	}
	public Customer(String custName, int accNo, String pass, int accBal) {
		super();
		this.custName = custName;
		this.accNo = accNo;
		this.pass = pass;
		this.accBal = accBal;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getAccBal() {
		return accBal;
	}
	public void setAccBal(int accBal) {
		this.accBal = accBal;
	}
	
	
}
