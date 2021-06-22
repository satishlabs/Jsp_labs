package com.satishlabs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
		//1. Collect the data
		String sn = request.getParameter("sname");
		String em = request.getParameter("email");
		String ems[] = request.getParameterValues("email");
		System.out.println(sn);
		System.out.println(em);
		for(String s:ems) {
			System.out.println(s);
		}
		
		//2. Collect Headers
		String ho = request.getHeader("host");
		String re = request.getHeader("referer");
		String al = request.getHeader("accept-language");
		String ae = request.getHeader("accept-encoding");
		System.out.println(ho);
		System.out.println(re);
		System.out.println(al);
		System.out.println(ae);
		
		//3. Collect Cookies
		Cookie ck[] = request.getCookies();
		for(Cookie c:ck) {
			System.out.println(c.getName()+" "+c.getValue());
		}
		
		Cookie ck1 = new Cookie("email", "satish@gmail.com");
		Cookie ck2 = new Cookie("phone", "12345");
		response.addCookie(ck2);
		response.addCookie(ck2);
		
		RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
		rd.forward(request, response);
		
	}

}
