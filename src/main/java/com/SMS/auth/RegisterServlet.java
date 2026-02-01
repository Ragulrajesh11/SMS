package com.SMS.auth;

import com.SMS.dao.UserDAO;
import com.SMS.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(name, email, password);
        UserDAO dao = new UserDAO();

        try {
            boolean status = dao.registerUser(user);

            if (status) {
                // Redirect to login page with success message
                response.sendRedirect("login.jsp?msg=registered");
            } else {
                // Stay on register page if registration failed
                response.sendRedirect("register.jsp?error=failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=exception");
        }
    }
}
