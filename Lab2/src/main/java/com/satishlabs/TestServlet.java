package com.satishlabs;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fnm = request.getParameter("fname");
		if(fnm == null || fnm.trim().length()==0) {
			fnm="Guest";
		}
		Date dt = new Date();
		request.setAttribute("NM", fnm);
		request.setAttribute("DT", dt);
		request.getRequestDispatcher("show.jsp").forward(request, response);
	}

}
