package project.model;

public class Login {
	private int accNo;
	
	private String pass;
	
	public Login() {
	
	}

	public Login(int accNo,  String pass) {
		super();
		this.accNo = accNo;
	
		this.pass = pass;
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
	
	
	
}
