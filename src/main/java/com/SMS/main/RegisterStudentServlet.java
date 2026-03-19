package com.SMS.main;

import com.SMS.DAOimpl.StudentDaoImpl;
import com.SMS.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addStudent")
public class RegisterStudentServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

try{

Student s = new Student();

s.setFirstName(request.getParameter("firstName"));
s.setLastName(request.getParameter("lastName"));
s.setGender(request.getParameter("gender"));
s.setDob(request.getParameter("dob"));
s.setEmail(request.getParameter("email"));
s.setPhone(request.getParameter("phone"));
s.setDepartment(request.getParameter("department"));
s.setYear(Integer.parseInt(request.getParameter("year")));
s.setAddress(request.getParameter("address"));

StudentDaoImpl dao = new StudentDaoImpl();

boolean status = dao.addStudent(s);

if(status){

response.sendRedirect("viewStudents");

}else{

response.sendRedirect("addStudent.jsp?error=1");

}

}catch(Exception e){

e.printStackTrace();

response.sendRedirect("addStudent.jsp?error=1");

}

}

}