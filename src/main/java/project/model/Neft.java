package project.model;

public class Neft {
	private int senderAccNo;
	private int recieverAccNo;
	private String ifsc;
	private String branch;
	private String transType;
	private float ammount;
	public Neft() {
		super();
	}
	public Neft(int senderAccNo, int recieverAccNo, String ifsc, String branch, String transType, float ammount) {
		super();
		this.senderAccNo = senderAccNo;
		this.recieverAccNo = recieverAccNo;
		this.ifsc = ifsc;
		this.branch = branch;
		this.transType = transType;
		this.ammount = ammount;
	}
	public int getSenderAccNo() {
		return senderAccNo;
	}
	public void setSenderAccNo(int senderAccNo) {
		this.senderAccNo = senderAccNo;
	}
	public int getRecieverAccNo() {
		return recieverAccNo;
	}
	public void setRecieverAccNo(int recieverAccNo) {
		this.recieverAccNo = recieverAccNo;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public float getAmmount() {
		return ammount;
	}
	public void setAmmount(float ammount) {
		this.ammount = ammount;
	}
	
	
	
	
	
	
}
