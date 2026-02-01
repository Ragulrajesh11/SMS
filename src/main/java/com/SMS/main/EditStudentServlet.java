package com.SMS.main;

import com.SMS.DAOimpl.StudentDaoImpl;
import com.SMS.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

public class EditStudentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Student s = new StudentDaoImpl().getStudentById(id);

        request.setAttribute("student", s);
        request.getRequestDispatcher("editStudent.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        Student s = new Student();
        s.setId(Integer.parseInt(request.getParameter("id")));
        s.setFirstName(request.getParameter("firstName"));
        s.setLastName(request.getParameter("lastName"));
        s.setGender(request.getParameter("gender"));
        s.setDob(request.getParameter("dob"));
        s.setEmail(request.getParameter("email"));
        s.setPhone(request.getParameter("phone"));
        s.setDepartment(request.getParameter("department"));
        s.setYear(Integer.parseInt(request.getParameter("year")));
        s.setAddress(request.getParameter("address"));

        new StudentDaoImpl().updateStudent(s);

        response.sendRedirect(request.getContextPath() + "/viewStudents");
    }
}
