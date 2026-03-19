package com.SMS.main;

import java.io.IOException;

import com.SMS.DAOimpl.MarksDaoImpl;
import com.SMS.model.Marks;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/addMarks")
public class AddMarksServlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

int studentId = Integer.parseInt(req.getParameter("studentId"));
String subject = req.getParameter("subject");
int mark = Integer.parseInt(req.getParameter("mark"));

Marks marks = new Marks(studentId,subject,mark);

boolean status = new MarksDaoImpl().addMarks(marks);

if(status){
res.sendRedirect("viewMarks?studentId="+studentId);
}else{
res.getWriter().println("Marks Insert Failed");
}

}

}