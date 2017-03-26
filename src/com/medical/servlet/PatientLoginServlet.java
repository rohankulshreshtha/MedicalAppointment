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
public class PatientLoginServlet extends HttpServlet {  
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
        String password=request.getParameter("password"); 
        DataDao dao = new DataDao();
        Patient pat = dao.getpat(id);
        HttpSession session = request.getSession();	
        
        if(pat.getPassword().equals(password)){  
       // out.print("Welcome, "+name);  
        	session.setAttribute("currentSessionPatient",pat);
        response.sendRedirect("patient.jsp");
        }  
        else{  
        	request.setAttribute("error_msg","Invalid Username or Password");
        	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");            
        	rd.include(request, response);
        }  
        out.close();  
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
response.setContentType("text/html");  
PrintWriter out=response.getWriter();  
//request.getRequestDispatcher("link.html").include(request, response);  
  
String id=request.getParameter("id");  
String password=request.getParameter("password"); 
DataDao dao = new DataDao();
Patient pat = dao.getpat(id);
if(pat==null){
	request.setAttribute("error","Invalid Username or Password");
	RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");            
	rd.include(request, response);
}
else if(pat.getPassword().equals(password)){  
// out.print("Welcome, "+name);  
	HttpSession session = request.getSession();	
    session.setAttribute("currentSessionPatient",pat);
response.sendRedirect("patient.jsp");
}  
else{  
	request.setAttribute("error","Invalid Username or Password");
	RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");            
	rd.include(request, response);
}  
out.close();  
}  
}  