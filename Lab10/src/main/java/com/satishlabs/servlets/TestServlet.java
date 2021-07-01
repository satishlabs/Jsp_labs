package com.satishlabs.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.satishlabs.entity.Account;
import com.satishlabs.entity.Address;
import com.satishlabs.entity.Customer;

/**
 * Servlet implementation class TestServlet
 */
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ServletContext ctx = session.getServletContext();
		
		//1. Strings, Wrapper and Date
		request.setAttribute("EM", "satish@gmail.com");
		session.setAttribute("PH", new Long(76761345));
		ctx.setAttribute("DOB", new Date());
		
		RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
		rd.forward(request, response);
		
		//2. Collection of Strings, Wrapper and Date
		ArrayList<Integer> al = new ArrayList<Integer>();
		al.add(new Integer(11));
		al.add(new Integer(22));
		al.add(new Integer(33));
		al.add(new Integer(44));
		al.add(new Integer(55));
		request.setAttribute("AL", al);
		String []str = {"dd","ss","sat","pra"};
		session.setAttribute("STR", str);
		
		//3. Collection of Collections(JSTL)
		ArrayList<ArrayList> al1 = new ArrayList<ArrayList>();
		al1.add(al);
		al1.add(al);
		al1.add(al);
		request.setAttribute("AL1", al1);
		
		//4. Customer or User defined class object
		Address add = new Address("Ranchi Main Road", "Ranchi");
		Account acc = new Account(101, "SA", 9999.9, add);
		Customer cust = new Customer(99,"satish", "satish@gmail", 9999, acc);
		session.setAttribute("CUST", cust);
		
		//5. Collection of User defined class object
		ArrayList<Customer> cs = new ArrayList<Customer>();
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		session.setAttribute("CS", cs);
		
		//6. Map Object
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("sid", "11");
		hm.put("sname", "Satish");
		hm.put("email", "satish@gmail");
		session.setAttribute("HM", hm);
		
		//7. Collection of Map object (*JSTL)
		ArrayList<HashMap<String, String>> al2 = new ArrayList<HashMap<String,String>>();
		al2.add(hm);
		al2.add(hm);
		al2.add(hm);
		request.setAttribute("AL2", al2);
		RequestDispatcher rd1 = request.getRequestDispatcher("show.jsp");
		rd1.forward(request, response);
	}

}
