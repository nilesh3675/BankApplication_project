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

import project.model.Customer;
import project.model.Recharge;

/**
 * Servlet implementation class RechargeController
 */
@WebServlet("/RechargeController")
public class RechargeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RechargeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobNo=request.getParameter("mobNo");
		String service=request.getParameter("Service");
		int ammount=Integer.parseInt(request.getParameter("Ammount"));

		List<Recharge>rechargeList=new ArrayList<Recharge>();
		List<Customer>custList=null;
		Customer c=null;
		HttpSession session=request.getSession();
		custList=(List<Customer>)session.getAttribute("user");
		c=custList.get(0);
		System.out.println(c.getAccNo());

		Recharge r=new Recharge(c.getAccNo(), mobNo, service, ammount);
		rechargeList.add(r);
		session.setAttribute("recharge", rechargeList);
		response.sendRedirect("ConfirmDetails.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
