package com.medical.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.DataDao;
import com.medical.model.Doctor;

public class DoctorSeachServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("search servlet 1");
		String location=request.getParameter("location");
		String spec=request.getParameter("spec");
		DataDao sd=new DataDao();
		List<Doctor> dd=sd.getdoctors(location,spec);
		 request.setAttribute("doctors", dd);
	        request.getRequestDispatcher("doctorsearch1.jsp").forward(request, response);
		
	}
	
}
