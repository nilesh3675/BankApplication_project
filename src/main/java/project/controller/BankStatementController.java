package project.controller;

import java.io.Closeable;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.dsig.spec.XSLTTransformParameterSpec;

import org.apache.poi.hssf.model.Sheet;
import org.apache.poi.hssf.model.Workbook;
import org.apache.poi.hssf.record.formula.functions.Row;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

import project.dao.BankDao;
import project.dao.BankDaoImpl;
import project.model.Customer;
import project.model.Transaction;

/**
 * Servlet implementation class BankStatementController
 */
@WebServlet("/BankStatementController")
public class BankStatementController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BankStatementController() {
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
		HttpSession session=request.getSession(true);
		custList=(List<Customer>)session.getAttribute("user");
		if (custList != null && !custList.isEmpty()) {
			c = custList.get(0);
		} else {
			System.out.println("No data in List");
		}

		transList=bdao.bankStatement(c.getAccNo());
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("Transactions");
		HSSFRow headerRow = sheet.createRow(0);
		String[] columns = {"Sender Account Number", "Reciever Account Number", "Transaction Type", "Ammount"};
		for (int i = 0; i < columns.length; i++) {
			HSSFCell cell = headerRow.createCell((short) i);
			cell.setCellValue(columns[i]);
		}
		int rowNum = 1;
		for (Transaction t : transList) {
			HSSFRow row = sheet.createRow(rowNum++);
			row.createCell((short) 0).setCellValue(t.getSenderAccNo());
			row.createCell((short) 1).setCellValue(t.getRecieverAccNo());
			row.createCell((short) 2).setCellValue(t.getTransType());
			row.createCell((short) 3).setCellValue(t.getAmmount());

		}
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		workbook.write(outputStream);

		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment; filename=transactions.xls");


		OutputStream out = response.getOutputStream();
		outputStream.writeTo(out);
		out.close();

		//		    session.setAttribute("bankstatement", transList);
		//		   response.sendRedirect("BankStatement.jsp");
		//		   



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
