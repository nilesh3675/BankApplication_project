package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import project.model.Card;
import project.model.Customer;
import project.model.Neft;
import project.model.Rtgs;
import project.model.Transaction;

public class BankDaoImpl implements BankDao{
	PreparedStatement pstate=null;
	Statement state=null;
	ResultSet result=null;

	@Override
	public int neftTransaction(List<Neft> neftList) {

		int i=0;
		Neft n=null;
		Connection con=DBConnection.myconnection();
		n=neftList.get(0);
		try {
			pstate=con.prepareStatement("insert into transaction values(?,?,?,?)");
			pstate.setInt(1,n.getSenderAccNo());
			pstate.setInt(2, n.getRecieverAccNo());
			pstate.setString(3, n.getTransType());
			pstate.setFloat(4, n.getAmmount());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

	@Override
	public int rtgsTransaction(List<Rtgs> rtgsList) {
		int i=0;
		Rtgs r=null;
		Connection con=DBConnection.myconnection();
		r=rtgsList.get(0);
		try {
			pstate=con.prepareStatement("insert into transaction values(?,?,?,?)");
			pstate.setInt(1,r.getSenderAccNo());
			pstate.setInt(2, r.getRecieverAccNo());
			pstate.setString(3, r.getTransType());
			pstate.setFloat(4, r.getAmmount());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

	@Override
	public int cardTransaction(List<Card> cardList) {
		int i=0;
		Connection con=DBConnection.myconnection();
		Card c=null;
		c=cardList.get(0);
		try {
			pstate=con.prepareStatement("insert into transaction values(?,?,?,?)");
			pstate.setInt(1,c.getSenderAccNo());
			pstate.setInt(2, c.getRecieverAccNo());
			pstate.setString(3, c.getTransType());
			pstate.setFloat(4, c.getAmmount());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;


	}

	@Override
	public boolean validateSender(int accNo) {

		Connection con=DBConnection.myconnection();
		List<Customer>custList=new ArrayList<>();
		try {

			pstate=con.prepareStatement("select * from customer where acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			System.out.println("test1");
			System.out.println(accNo);
			if(result.next()) {
				custList.add(new Customer(result.getString(1),result.getInt(2),result.getString(3),result.getInt(4)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		if(!custList.isEmpty()) {
			return true;
		}else {
			return false;
		}

	}

	@Override
	public boolean validateReciever(int accNo) {
		List<Customer>custList=new ArrayList<>();
		Connection con=DBConnection.myconnection();
		try {

			pstate=con.prepareStatement("select * from customer where acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			System.out.println("Test2");
			System.out.println(accNo);
			if(result.next()) {
				custList.add(new Customer(result.getString(1),result.getInt(2),result.getString(3),result.getInt(4)));
			}else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!custList.isEmpty()) {
			return true;
		}else {
			return false;
		}

	}

	@Override
	public int register(List<Customer> custList) {
		Connection con=DBConnection.myconnection();
		Customer c=new Customer();
		int i=0;
		c=custList.get(0);
		try {
			pstate=con.prepareStatement("insert into customer values(?,?,?,?)");
			pstate.setString(1, c.getCustName());
			pstate.setInt(2, c.getAccNo());
			pstate.setString(3, c.getPass());
			pstate.setInt(4, c.getAccBal());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;

	}

	@Override
	public int accountBalance(int accNo) {
		Connection con=DBConnection.myconnection();
		int i=0;
		int accBal=0;
		try {
			pstate=con.prepareStatement("select * from customer where acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			if(result.next()) {
				accBal=result.getInt(4);
			}else {
				accBal=0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return accBal;
	}

	@Override
	public List<Customer> login(int accNo) {
		List<Customer>custList=new ArrayList<Customer>();
		Connection con=DBConnection.myconnection();

		try {
			pstate=con.prepareStatement("select * from customer where acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			System.out.println(accNo);
			if(result.next()) {
				System.out.println("hello");
				custList.add(new Customer(result.getString(1),result.getInt(2),result.getString(3),result.getInt(4)));
			}else {
				custList.add(new Customer("00",00,"00",00));
			}
		} catch (SQLException e) {
			
		}
		return custList;
	}

	@Override
	public int updateBalance(int accNo,int newBal) {
		int j=0;
		Connection con=DBConnection.myconnection();
		try {
			pstate=con.prepareStatement("update Customer set acc_bal=? where acc_No=?");
			pstate.setInt(1, newBal);
			pstate.setInt(2, accNo);
			j=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return j;
	}

	@Override
	public List<Transaction> bankStatement(int accNo) {
		List<Transaction>transList=new ArrayList<>();
		Connection con=DBConnection.myconnection();
		try {
			pstate=con.prepareStatement("select * from transaction where from_acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			while(result.next()) {
				transList.add(new Transaction(result.getInt(1), result.getInt(2), result.getString(3), result.getInt(4)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return transList;
	}

	@Override
	public String getPassword(int accNo) {
		Connection con=DBConnection.myconnection();
		int i=0;
		String Password="";
		try {
			pstate=con.prepareStatement("select * from customer where acc_no=?");
			pstate.setInt(1, accNo);
			result=pstate.executeQuery();
			if(result.next()) {
				 Password=result.getString(3);
			}else {
				Password=null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Password;
	}

	@Override
	public int changePassword(int accNo, String newPass) {
		int j=0;
		Connection con=DBConnection.myconnection();
		try {
			pstate=con.prepareStatement("update Customer set PASSWORD=? where acc_No=?");
			pstate.setString(1, newPass);
			pstate.setInt(2, accNo);
			j=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return j;
	}

	

	
	

}
