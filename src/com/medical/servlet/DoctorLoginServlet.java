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
public class DoctorLoginServlet extends HttpServlet {  
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
        Doctor doc= dao.getdoc(id);
        HttpSession session = request.getSession();	    
        
       if(doc.getPassword().equals(password)){  
       // out.print("Welcome, "+name);  
    	   session.setAttribute("currentSessionDoctor",doc); 
        //response.sendRedirect("/ProjectSwe/doctor.jsp");  
            request.getRequestDispatcher("DoctorAppointmentServlet").forward(request, response);
        }  
        else{  
        	request.setAttribute("error_msg","Invalid Username or Password");
        	RequestDispatcher rd=request.getRequestDispatcher("error1.jsp");            
        	rd.include(request, response);
        }  
        out.close();  
    }  
	
	

}  