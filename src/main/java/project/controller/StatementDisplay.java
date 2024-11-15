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
import project.model.Transaction;

/**
 * Servlet implementation class StatementDisplay
 */
@WebServlet("/StatementDisplay")
public class StatementDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatementDisplay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Customer>custList=null;
		List<Transaction>transList=new ArrayList<Transaction>();
		Customer c=null;
		BankDao bdao=new BankDaoImpl();
		HttpSession session=request.getSession();
		custList=(List<Customer>)session.getAttribute("user");
		if (custList != null && !custList.isEmpty()) {
		    c = custList.get(0);
		  } else {
			  System.out.println("No data in List");
		  }
		transList=bdao.bankStatement(c.getAccNo());
		session.setAttribute("bankstatement", transList);
		response.sendRedirect("BankStatement.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
