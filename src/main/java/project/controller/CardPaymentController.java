package project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.dao.BankDao;
import project.dao.BankDaoImpl;
import project.model.Card;
import project.model.Customer;
import project.model.Rtgs;

/**
 * Servlet implementation class CardPaymentController
 */
@WebServlet("/CardPaymentController")
public class CardPaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardPaymentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int accNo=Integer.parseInt(request.getParameter("accNo"));
		int cvv=Integer.parseInt(request.getParameter("cvv"));
		int ammount=Integer.parseInt(request.getParameter("ammount"));
		
		 HttpSession session=request.getSession();
		    List<Customer> custList=(List<Customer>)session.getAttribute("user");
		    if(custList != null && !custList.isEmpty()) {
		        Customer c=custList.get(0);
		       List<Card>cardList=new ArrayList<>();
		        BankDao bdao=new BankDaoImpl();
		        Card card=new Card(c.getAccNo(), accNo, cvv, "Card", ammount);
		        cardList.add(card);
		        boolean b=bdao.validateReciever(accNo);
		        if(b==true) {
		            int senderAccBal=bdao.accountBalance(c.getAccNo());
		            int recieverBal=bdao.accountBalance(accNo);
		            if(senderAccBal > ammount) {
		                int j=bdao.updateBalance(c.getAccNo(), senderAccBal-(int)ammount);
		                int k=bdao.updateBalance(accNo, recieverBal+(int)ammount);
		                int i=bdao.cardTransaction(cardList);

		                if(i > 0 && j > 0 && k > 0) {
		                    session.setAttribute("CardError", "Transaction Successful...!!!");
		                    response.sendRedirect("CardPayment.jsp");
		                } else {
		                    session.setAttribute("CardError", "Transaction Failed...!!!");
		                    response.sendRedirect("CardPayment.jsp");
		                }
		            } else {
		                session.setAttribute("CardError", "Insufficient Funds...!!!");
		                response.sendRedirect("CardPayment.jsp");
		            }
		        } else {
		            session.setAttribute("CardError", "Invalid Account Number...!!!");
		            response.sendRedirect("CardPayment.jsp");
		        }
		    } else {
		        session.setAttribute("CardError", "User details not found...!!!");
		        response.sendRedirect("CardPayment.jsp");
		    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
