package com.medical.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.DAO.AppDao;
import com.medical.DAO.ScheduleDAO;
import com.medical.model.Appointment;

public class ConfirmBooking extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
		response.setContentType("text/html");    
		String doc_id=request.getParameter("doc_id");  
        String pat_id=request.getParameter("pat_id");  
        String date=request.getParameter("date"); 
        String time=request.getParameter("time"); 
        DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
        SimpleDateFormat localDateFormat = new SimpleDateFormat("HH:mm:ss");
	    Date dateformat;
		try {
			dateformat = df.parse(date);
			Date timeformat=localDateFormat.parse(time);
	        AppDao ad = new AppDao();
	        ScheduleDAO sd = new ScheduleDAO();
	        Appointment app = new Appointment();
	        app.setDoc_id(doc_id);
	        app.setPat_id(pat_id);
	        app.setDate(dateformat);
	        app.setSt_time(timeformat);
	        ad.saveappointment(app);
	        sd.deleteTime(doc_id, timeformat, dateformat);
	        response.sendRedirect("patient.jsp");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
}
