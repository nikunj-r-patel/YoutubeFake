package com.httpServletDemo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
public class MyServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("this is get method ......");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1> this is doget() of myServlet </h1>");
		out.println("<h2> " + new Date() + " </h2>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("this is post method.....");
		resp.setContentType("text/html");
		PrintWriter out= resp.getWriter();
		out.println("<h1>this is doPost() of myServlet</h1>");
		out.println("<h1>"+ new Date() +"</h1>");
	}
	
}
