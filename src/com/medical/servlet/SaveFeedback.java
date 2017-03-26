package com.medical.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.AppDao;


public class SaveFeedback extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
		response.setContentType("text/html");    
		String doc_id=request.getParameter("doc_id");  
        String pat_id=request.getParameter("pat_id");
        String feedback=request.getParameter("feedback");
        AppDao a = new AppDao();
		a.savefeedback(pat_id, doc_id, feedback);
	        response.sendRedirect("patient.jsp");
		
	}
}
