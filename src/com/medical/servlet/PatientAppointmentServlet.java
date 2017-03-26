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
import com.medical.model.Patient;

public class PatientAppointmentServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);	    
        Patient pat = (Patient)session.getAttribute("currentSessionPatient");
        String pat_id = pat.getId();
        AppDao appdao = new AppDao();
            List<Appointment> appointments = appdao.getAppointment(pat_id, "patient");
            System.out.println(appointments.size());
            request.setAttribute("appointments", appointments); // Will be available as ${products} in JSP
            request.getRequestDispatcher("patientappointment.jsp").forward(request, response);
	}
}
