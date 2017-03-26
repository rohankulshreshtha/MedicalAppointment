package com.medical.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doc_id=request.getParameter("doc_id");
		String pat_id=request.getParameter("pat_id");
        request.setAttribute("doc_id", doc_id);
        request.setAttribute("pat_id", pat_id);
        System.out.println(doc_id);
        request.getRequestDispatcher("feedbackform.jsp").forward(request, response);
}
}