package com.medical.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.DAO.DataDao;
import com.medical.model.Patient;

public class PatSignupServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
response.setContentType("text/html");  
PrintWriter out=response.getWriter();  
//request.getRequestDispatcher("link.html").include(request, response);  
  
String id=request.getParameter("id"); 
Patient pat = new Patient();
HttpSession session=request.getSession();
DataDao dao = new DataDao();
if(dao.getpat(id)==null){
	pat.setAddress(request.getParameter("address"));
	pat.setAge(Integer.parseInt(request.getParameter("age")));
	pat.setEmail_id(request.getParameter("email_id"));
	pat.setGender(request.getParameter("gender"));
	pat.setId(id);
	pat.setName(request.getParameter("name"));
	pat.setPassword(request.getParameter("password"));
	pat.setPhone_no(request.getParameter("phone_no"));
	
	dao.savepatient(pat);
	session.setAttribute("currentSessionPatient",pat);   
    response.sendRedirect("patient.jsp"); 
}
else {
	request.setAttribute("error","Patient already exists");
	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");            
	rd.include(request, response);
}
out.close(); 
}  
}
