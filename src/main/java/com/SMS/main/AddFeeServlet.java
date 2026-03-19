package com.SMS.main;

import java.io.IOException;

import com.SMS.DAOimpl.FeeDaoImpl;
import com.SMS.model.Fee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addFee")   // ⭐ IMPORTANT
public class AddFeeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int studentId = Integer.parseInt(req.getParameter("studentId"));
        double amount = Double.parseDouble(req.getParameter("amount"));

        Fee fee = new Fee(studentId, amount);

        boolean status = new FeeDaoImpl().addFee(fee);

        if (status) {
            res.sendRedirect("dashboard.jsp?msg=Fee Added Successfully");
        } else {
            res.sendRedirect("dashboard.jsp?msg=Fee Failed");
        }
    }
}