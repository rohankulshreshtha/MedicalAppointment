package com.medical.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.AppDao;
import com.medical.model.Prescription;

public class SavePrescription extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 
		String presc=request.getParameter("message");
			String id=request.getParameter("app_id");
			String pat_id=request.getParameter("pat_id");
			String doc_id=request.getParameter("doc_id");
			String datestring=request.getParameter("date");
			SimpleDateFormat localDateFormat = new SimpleDateFormat("MM/dd/yyyy");
		    Date dateformat;
			try {
				dateformat = localDateFormat.parse(datestring);
			Prescription p=new Prescription();
			p.setApp_id(id);
			p.setNext_date(dateformat);
			p.setMedicine(presc);
			AppDao app=new AppDao();
			app.saveprescription(p);
			request.getRequestDispatcher("DoctorAppointmentServlet").forward(request, response);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	}
}
