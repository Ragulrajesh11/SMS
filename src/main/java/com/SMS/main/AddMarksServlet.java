package com.SMS.main;

import com.SMS.DAOimpl.MarksDaoImpl;
import com.SMS.model.Marks;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AddMarksServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int studentId = Integer.parseInt(req.getParameter("studentId"));
        String subject = req.getParameter("subject");
        int mark = Integer.parseInt(req.getParameter("mark"));

        Marks m = new Marks(studentId, subject, mark);
        boolean status = new MarksDaoImpl().addMarks(m);

        if(status){
            res.sendRedirect("addMarks.jsp?msg=success");
        }else{
            res.sendRedirect("addMarks.jsp?error=fail");
        }
    }
}
