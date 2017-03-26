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
import com.medical.model.Feedback;
import com.medical.model.Patient;

public class ViewFeedback extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doc_id = request.getParameter("doc_id");
		HttpSession session = request.getSession();
		AppDao appdao = new AppDao();
        List<Feedback> feedbacks = appdao.getfeedback(doc_id);
		if(session.getAttribute("currentSessionPatient")==null){
			request.setAttribute("feedbacks", feedbacks); // Will be available as ${products} in JSP
            request.getRequestDispatcher("seefeedback.jsp").forward(request, response);
		}
		else{
        
            request.setAttribute("feedbacks", feedbacks); // Will be available as ${products} in JSP
            request.getRequestDispatcher("feedbacklist.jsp").forward(request, response);
		}
		}
}
