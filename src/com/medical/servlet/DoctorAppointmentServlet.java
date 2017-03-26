package com.medical.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.DAO.AppDao;
import com.medical.model.Appointment;
import com.medical.model.Doctor;

@SuppressWarnings("serial")
public class DoctorAppointmentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	    
    Doctor doc = (Doctor)session.getAttribute("currentSessionDoctor");
    String doc_id = doc.getId();
    AppDao appdao = new AppDao();
        List<Appointment> appointments = appdao.getAppointment(doc_id, "doctor");
        request.setAttribute("appointments", appointments); // Will be available as ${products} in JSP
        request.getRequestDispatcher("doctor.jsp").forward(request, response);
}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	    
    Doctor doc = (Doctor)session.getAttribute("currentSessionDoctor");
    String doc_id = doc.getId();
    AppDao appdao = new AppDao();
        List<Appointment> appointments = appdao.getAppointment(doc_id, "doctor");
        request.setAttribute("appointments", appointments); // Will be available as ${products} in JSP
        request.getRequestDispatcher("doctor.jsp").forward(request, response);
}
}
