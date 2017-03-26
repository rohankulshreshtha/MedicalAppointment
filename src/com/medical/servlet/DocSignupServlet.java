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
import com.medical.model.Doctor;

public class DocSignupServlet extends HttpServlet {

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
Doctor doc = new Doctor();
HttpSession session=request.getSession();
DataDao dao = new DataDao();
if(dao.getdoc(id)==null){
	doc.setAge(Integer.parseInt(request.getParameter("age")));
	doc.setDescription(request.getParameter("description"));
	doc.setEmail_id(request.getParameter("email_id"));
	doc.setExp(Integer.parseInt(request.getParameter("exp")));
	doc.setHosp_name(request.getParameter("hosp_name"));
	doc.setId(id);
	doc.setName(request.getParameter("name"));
	doc.setPassword(request.getParameter("password"));
	doc.setSpec(request.getParameter("spec"));
	doc.setPhone_no(request.getParameter("phone_no"));
	doc.setLocation(request.getParameter("location"));
	dao.savedoctor(doc);
	
	session.setAttribute("currentSessionDoctor",doc);   
response.sendRedirect("doctor.jsp"); 
}
else {
	request.setAttribute("error_msg","Doctor already exists");
	RequestDispatcher rd=request.getRequestDispatcher("error1.jsp");            
	rd.include(request, response);
}
out.close();  

}  
}

