package com.SMS.main;

import java.io.IOException;
import java.util.List;

import com.SMS.DAOimpl.FeeDaoImpl;
import com.SMS.model.Fee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/viewFees")
public class ViewFeeServlet extends HttpServlet {

protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

List<Fee> fees = new FeeDaoImpl().getAllFees();

req.setAttribute("fees", fees);

req.getRequestDispatcher("viewFees.jsp").forward(req,res);

}

}