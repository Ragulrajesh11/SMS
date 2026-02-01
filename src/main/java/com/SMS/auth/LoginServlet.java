package com.SMS.auth;

import com.SMS.dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        try {
            boolean isValidUser = dao.loginUser(email, password);

            if (isValidUser) {
                String name = dao.getNameByEmail(email);

                HttpSession session = request.getSession();
                session.setAttribute("name", name);

                response.sendRedirect("dashboard.jsp");
            } else {
                // Stay on login page if credentials are wrong
                response.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=exception");
        }
    }
}
