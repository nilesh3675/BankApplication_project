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
import project.model.Recharge;

/**
 * Servlet implementation class ConfirmDetailsController
 */
@WebServlet("/ConfirmDetailsController")
public class ConfirmDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConfirmDetailsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Recharge>rechargeList=null;
		Recharge r=null;
		BankDao bdao=new BankDaoImpl();
		HttpSession session=request.getSession();
		rechargeList=(List<Recharge>)session.getAttribute("recharge");
		r=rechargeList.get(0);
		int i=0;
		int accBal=bdao.accountBalance(r.getAccNo());
		
		if(accBal>r.getAmmount() && r.getAmmount()>=0) {
			i=bdao.updateBalance(r.getAccNo(), accBal-r.getAmmount());
			if(i>0) {
				session.setAttribute("rechargeError", "Recharge Successful..!!");
				response.sendRedirect("Recharge.jsp");
			}else {
				session.setAttribute("rechargeError", "Recharge failed..!!");
				response.sendRedirect("Recharge.jsp");
			}
		}else {
			session.setAttribute("rechargeError", "Insufficient Balance..!!");
			response.sendRedirect("Recharge.jsp");
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
