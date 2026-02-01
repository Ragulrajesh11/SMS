package com.SMS.main;

import com.SMS.DAOimpl.StudentDaoImpl;
import com.SMS.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


public class RegisterStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Get form data
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String department = request.getParameter("department");
            int year = Integer.parseInt(request.getParameter("year"));
            String address = request.getParameter("address");

            // Set into Student object
            Student s = new Student();
            s.setFirstName(firstName);
            s.setLastName(lastName);
            s.setGender(gender);
            s.setDob(dob);
            s.setEmail(email);
            s.setPhone(phone);
            s.setDepartment(department);
            s.setYear(year);
            s.setAddress(address);

            // Save using DAO
            StudentDaoImpl dao = new StudentDaoImpl();
            boolean status = dao.addStudent(s);

            // Redirect based on result
            if (status) {
                response.sendRedirect("viewStudents");
            } else {
                response.sendRedirect("addStudent.jsp?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
            String msg = e.getMessage() == null ? "Unknown error" : e.getMessage();
            response.sendRedirect("addStudent.jsp?error=1&errorMsg=" + URLEncoder.encode(msg, StandardCharsets.UTF_8));
        }
    }
}


