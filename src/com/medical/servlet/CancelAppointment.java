package com.medical.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.AppDao;


public class CancelAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String app_id = request.getParameter("app_id");
		AppDao ad = new AppDao();
		ad.deleteappointment(app_id);
		request.getRequestDispatcher("PatientAppointmentServlet").forward(request, response);
		
	}
	
}
