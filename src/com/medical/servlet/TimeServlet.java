package com.medical.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.medical.DAO.ScheduleDAO;

public class TimeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
            String date="10/10/2016";            
            ScheduleDAO sd = new ScheduleDAO();
            String doc_id = request.getParameter("doc_id"); 
            List<String> list;
            String json = null;
			try {
				list = sd.getList(doc_id, date);
	            json = new Gson().toJson(list);
	            response.setContentType("application/json");
	            response.getWriter().write(json);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            
    }
}
