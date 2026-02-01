package com.SMS.main;

import com.SMS.DAOimpl.StudentDaoImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;


public class DeleteStudentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        new StudentDaoImpl().deleteStudent(id);

        response.sendRedirect("viewStudents");
    }
}
