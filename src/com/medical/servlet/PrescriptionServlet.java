package com.medical.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.AppDao;
import com.medical.model.Prescription;

/**
 * Servlet implementation class Prescribtion
 */

public class PrescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();
		//String presc=(String)request.getAttribute("message");
		String id=request.getParameter("app_id");
		String pat_id=request.getParameter("pat_id");
		String doc_id=request.getParameter("doc_id");
		request.setAttribute("id",id);
		request.setAttribute("pat_id",pat_id);
    	RequestDispatcher rd=request.getRequestDispatcher("prescription.jsp");            
    	rd.include(request, response);
	}

}
