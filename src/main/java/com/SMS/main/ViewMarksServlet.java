package com.SMS.main;

import java.io.IOException;
import java.util.List;

import com.SMS.DAOimpl.MarksDaoImpl;
import com.SMS.model.Marks;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/viewMarks")
public class ViewMarksServlet extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String studentIdParam = request.getParameter("studentId");

if(studentIdParam == null || studentIdParam.isEmpty()){

response.sendRedirect("viewStudents");

return;

}

int studentId = Integer.parseInt(studentIdParam);

MarksDaoImpl dao = new MarksDaoImpl();

List<Marks> marks = dao.getMarksByStudentId(studentId);

request.setAttribute("marks", marks);

request.getRequestDispatcher("viewMarks.jsp").forward(request,response);

}

}