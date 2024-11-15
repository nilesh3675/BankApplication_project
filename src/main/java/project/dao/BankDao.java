package project.dao;

import java.util.List;

import project.model.Card;
import project.model.Customer;
import project.model.Neft;
import project.model.Rtgs;
import project.model.Transaction;

public interface BankDao {
	
	public int neftTransaction(List<Neft>neftList);
	public int rtgsTransaction(List<Rtgs>rtgsList);
	public int cardTransaction(List<Card>cardList);
	public boolean validateSender(int accNo) ;
	public boolean validateReciever(int accNo);
	public int register(List<Customer>custList);
	public int accountBalance(int accNo);
	public List<Customer>login(int accNo);
	public int updateBalance(int accNo,int newBal);
	public List<Transaction>bankStatement(int accNo);
	public String getPassword(int accNo);
	public int changePassword(int accNo,String newPass);
	
		
	
}
