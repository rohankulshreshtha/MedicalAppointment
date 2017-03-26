package com.medical.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.medical.DAO.AJAXDao;

public class SearchController extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {

                response.setContentType("application/json");
                try {
                        String term = request.getParameter("term");
                        List<String> list ;
                        AJAXDao ajax = new AJAXDao();
                        System.out.println("called");
                        if(request.getParameter("kind").equals("city")){
                        list =  ajax.getLocation(term);
                        
                        }
                        else
                        	list =  ajax.getSpec(term);
                        String searchList = new Gson().toJson(list);
                        response.getWriter().write(searchList);
                } catch (Exception e) {
                        System.err.println(e.getMessage());
                }
        }
}