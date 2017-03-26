package com.medical.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ForgotServlet extends HttpServlet {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
             throws ServletException, IOException {  
 response.setContentType("text/html");  
 PrintWriter out=response.getWriter();  
 String id=request.getParameter("id");
 if(id.equals("id"))
 out.println("success");
 else
	 out.println("failure");
 out.close();  
	 }
}
