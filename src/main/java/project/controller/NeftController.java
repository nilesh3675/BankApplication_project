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
import project.model.Customer;
import project.model.Neft;
import project.model.Rtgs;

/**
 * Servlet implementation class NeftController
 */
@WebServlet("/NeftController")
public class NeftController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NeftController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int recieverAccNo=Integer.parseInt(request.getParameter("toAcNo"));
	    String ifsc=request.getParameter("ifsc");
	    String branch=request.getParameter("branch");
	    float ammount=Float.parseFloat(request.getParameter("ammount"));

	    HttpSession session=request.getSession();
	    List<Customer> custList=(List<Customer>)session.getAttribute("user");
	    if(custList != null && !custList.isEmpty()) {
	        Customer c=custList.get(0);
	        List<Neft>neftList=new ArrayList<Neft>();
	        BankDao bdao=new BankDaoImpl();
	        Neft n=new Neft(c.getAccNo(), recieverAccNo, ifsc, branch, "Neft", ammount);
	        neftList.add(n);
	        boolean b=bdao.validateReciever(recieverAccNo);
	        if(b==true) {
	            int senderAccBal=bdao.accountBalance(c.getAccNo());
	            int recieverBal=bdao.accountBalance(recieverAccNo);
	            if(senderAccBal > ammount) {
	                int j=bdao.updateBalance(c.getAccNo(), senderAccBal-(int)ammount);
	                int k=bdao.updateBalance(recieverAccNo, recieverBal+(int)ammount);
	                int i=bdao.neftTransaction(neftList);

	                if(i > 0 && j > 0 && k > 0) {
	                    session.setAttribute("neftError", "Transaction Successful...!!!");
	                    response.sendRedirect("Neft.jsp");
	                } else {
	                    session.setAttribute("neftError", "Transaction Failed...!!!");
	                    response.sendRedirect("Neft.jsp");
	                }
	            } else {
	                session.setAttribute("neftError", "Insufficient Funds...!!!");
	                response.sendRedirect("Neft.jsp");
	            }
	        } else {
	            session.setAttribute("neftError", "Invalid Account Number...!!!");
	            response.sendRedirect("Neft.jsp");
	        }
	    } else {
	        session.setAttribute("neftError", "User details not found...!!!");
	        response.sendRedirect("Neft.jsp");
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
