package com.medical.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.DataDao;
import com.medical.model.Doctor;

public class DoctorSeachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String location=request.getParameter("location");
		String spec=request.getParameter("spec");
		DataDao sd=new DataDao();
		List<Doctor> dd1=sd.getdoctors(location,spec);
		 request.setAttribute("doctors", dd1);
	        request.getRequestDispatcher("doctorsearch.jsp").forward(request, response);
	       
		
	}
	
}
