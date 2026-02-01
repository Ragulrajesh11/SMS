package com.SMS.auth;

import com.SMS.DAOimpl.MarksDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class MarksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String sid = req.getParameter("studentId");

        if(sid != null){
            req.setAttribute("marksList",
                    new MarksDaoImpl().getMarksByStudentId(Integer.parseInt(sid)));
        }else{
            req.setAttribute("marksList",
                    new MarksDaoImpl().getAllMarks());
        }

        RequestDispatcher rd = req.getRequestDispatcher("viewMarks.jsp");
        rd.forward(req,res);
    }
}
