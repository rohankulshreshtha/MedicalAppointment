package com.medical.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.medical.DAO.ScheduleDAO;

import com.medical.model.Schedule;
public class DoctorScheduleServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("doc_id"));
    ScheduleDAO schdao = new ScheduleDAO();
        List<Schedule> schedules = schdao.getschedule(request.getParameter("doc_id"));
        request.setAttribute("schedules", schedules); // Will be available as ${products} in JSP
        request.getRequestDispatcher("doctorschedule.jsp").forward(request, response);
    
}
}
