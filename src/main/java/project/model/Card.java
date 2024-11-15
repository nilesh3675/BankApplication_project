package project.model;

public class Card {
	private int senderAccNo;
	private int recieverAccNo;
	private int cvv;
	private String transType;
	private int ammount;
	public Card() {
		
	}
	public Card(int senderAccNo, int recieverAccNo, int cvv, String transType, int ammount) {
		super();
		this.senderAccNo = senderAccNo;
		this.recieverAccNo = recieverAccNo;
		this.cvv = cvv;
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
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
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
