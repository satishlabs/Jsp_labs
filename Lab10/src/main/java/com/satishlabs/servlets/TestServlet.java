package com.satishlabs.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	}

}
