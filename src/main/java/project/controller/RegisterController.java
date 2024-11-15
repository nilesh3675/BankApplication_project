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

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String custName=null;
		int accNo=0;
		String pass=null;
		int accBal=0;
		try {
			custName = request.getParameter("custName");
			accNo = Integer.parseInt(request.getParameter("accNo"));
			pass = request.getParameter("password");
			accBal = Integer.parseInt(request.getParameter("accBal"));
		} catch (Exception e) {
			HttpSession session=request.getSession();
			session.setAttribute("register", "All Fields Require");
			response.sendRedirect("RegisterView.jsp");
			return; 
		}
		
		
		
		int i=0;
		BankDao bdao=new BankDaoImpl();
		Customer c=new Customer(custName, accNo, pass, accBal);
		List<Customer>custList=new ArrayList<>();
		custList.add(c);
		i=bdao.register(custList);
		if(i>0) {
			HttpSession session=request.getSession();
			session.setAttribute("register", "Customer Registered");
			response.sendRedirect("RegisterView.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("register", "Customer not Registered");
			response.sendRedirect("RegisterView.jsp");
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
