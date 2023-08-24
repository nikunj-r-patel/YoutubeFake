package com.httpServletDemo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1>welcome to Register servlet </h1>");
		String name = request.getParameter("user_name");
		String password = request.getParameter("user_password");
		String email = request.getParameter("user_email");
		String gender = request.getParameter("user_gender");
		String course = request.getParameter("user_course");
		String conditon = request.getParameter("condition");
		out.println(conditon);
		if (conditon != null) {
			if (conditon.equals("checked")) {
				out.println("<h2> Name: " + name + "</h2>");
				out.println("<h2> Password: " + password + "</h2>");
				out.println("<h2> Email: " + email + "</h2>");
				out.println("<h2> Gender: " + gender + "</h2>");
				out.println("<h2> Course: " + course + "</h2>");
				// to forword the request to other servlet using Request Dispatcher
				RequestDispatcher reqDispatcher=request.getRequestDispatcher("success");
				// using forword method
				reqDispatcher.forward(request, response);
				
			}
		} else {
			out.println("<h2>You have not checked the agreement</h2>");
			// to include the output of index.html page using Request dispatcher
			
			RequestDispatcher reqDisp=request.getRequestDispatcher("index.html");
			// using include method
			reqDisp.include(request, response);
		}
	}
}
