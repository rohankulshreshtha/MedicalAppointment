package com.medical.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.DAO.ScheduleDAO;

import com.medical.model.Schedule;

public class BookAppointment extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String doc_id=request.getParameter("doc_id");
		if(session.getAttribute("currentSessionPatient")==null){
			request.setAttribute("error_msg", "please login");
	        request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		else{
        request.setAttribute("doc_id", doc_id);
        request.getRequestDispatcher("bookappointment.jsp").forward(request, response);
		}
}
}