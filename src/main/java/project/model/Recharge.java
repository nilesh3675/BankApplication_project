package project.model;

public class Recharge {
	private int accNo;
	private String mobNo;
	private String service;
	private int ammount;
	public Recharge() {
		super();
	}
	public Recharge(int accNo, String mobNo, String service, int ammount) {
		super();
		this.accNo = accNo;
		this.mobNo = mobNo;
		this.service = service;
		this.ammount = ammount;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public int getAmmount() {
		return ammount;
	}
	public void setAmmount(int ammount) {
		this.ammount = ammount;
	}



}
