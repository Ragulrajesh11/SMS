package com.SMS.main;

import java.io.IOException;
import java.util.List;
import com.SMS.DAOimpl.StudentDaoImpl;
import com.SMS.model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class ViewStudentsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        StudentDaoImpl dao = new StudentDaoImpl();
        List<Student> list = dao.getAllStudents();

        request.setAttribute("students", list);
        request.getRequestDispatcher("viewStudents.jsp")
               .forward(request, response);
    }
}
