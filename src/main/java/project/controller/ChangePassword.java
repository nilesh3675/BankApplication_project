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

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oldPass=request.getParameter("oldPass");
		String newPass=request.getParameter("newPass");
		
		
		int j=0;
		List<Customer>custList=null;
		BankDao bdao=new BankDaoImpl();
		Customer c=null;
		HttpSession session=request.getSession();
		custList=(List<Customer>)session.getAttribute("user");
		c=custList.get(0);
		
		String Password=bdao.getPassword(c.getAccNo());
		if(Password.equals(oldPass)) {
			j=bdao.changePassword(c.getAccNo(), newPass);
			if(j>0) {
				session.setAttribute("changePass", "Password changed..!");
				response.sendRedirect("Myprofile.jsp");
			}else {
				session.setAttribute("changePass", "Password not changed..!");
				response.sendRedirect("Myprofile.jsp");
			}
		}else {
			session.setAttribute("changePass", "old password did not matched..!");
			response.sendRedirect("Myprofile.jsp");
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
