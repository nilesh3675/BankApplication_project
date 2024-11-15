package project.controller;

import java.io.IOException;
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
import project.model.Login;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int accNo=Integer.parseInt(request.getParameter("accNo"));
		String pass=request.getParameter("pass");

		List<Customer>custList=null;
		Customer c=null;
		BankDao bdao=new BankDaoImpl();


		custList=bdao.login(accNo);
		c=custList.get(0);
		String str1="Invalid Account Number";
		String str2="Invalid Password";

		if(c.getAccNo()==accNo && c.getPass().equals(pass)) {
			HttpSession session=request.getSession();
			session.setAttribute("user", custList);
			response.sendRedirect("Dashboard.jsp");
		}else {
			if(c.getAccNo()!=accNo) {
				HttpSession session=request.getSession();
				session.setAttribute("invalid", str1);
				response.sendRedirect("Login.jsp");

			}
			else if(!c.getPass().equals(pass)) {
				HttpSession session=request.getSession();
				session.setAttribute("invalid", str2);
				response.sendRedirect("Login.jsp");
			}
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
