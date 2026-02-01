package com.SMS.main;

import com.SMS.DAOimpl.FeeDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class ViewFeeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        req.setAttribute("feeList", new FeeDaoImpl().getAllFees());
        RequestDispatcher rd = req.getRequestDispatcher("viewFees.jsp");
        rd.forward(req, res);
    }
}
