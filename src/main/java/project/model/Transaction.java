package project.model;

public class Transaction {
	private int senderAccNo;
	private int recieverAccNo;
	private String transType;
	private int ammount;
	public Transaction() {
		super();
	}
	public Transaction(int senderAccNo, int recieverAccNo, String transType, int ammount) {
		super();
		this.senderAccNo = senderAccNo;
		this.recieverAccNo = recieverAccNo;
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
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public int getAmmount() {
		return ammount;
	}
	public void setAmmount(int ammount) {
		this.ammount = ammount;
	}
	
	
}
