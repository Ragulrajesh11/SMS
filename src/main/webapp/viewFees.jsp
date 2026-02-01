<%@ page import="java.util.List,com.SMS.model.Fee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>View Fees</title>
<style>
    body{ font-family:Segoe UI; background:#f8f9fa; padding:20px;}
    .container{ max-width:800px; margin:0 auto; background:white; padding:20px; border-radius:10px; box-shadow:0 4px 10px rgba(0,0,0,0.1);}
    h2{ text-align:center; color:#2c3e50;}
    table{ width:100%; border-collapse:collapse; margin-top:20px;}
    th, td{ padding:12px; border-bottom:1px solid #ddd; text-align:center;}
    th{ background:#e67e22; color:white;}
    .back{ display:inline-block; margin-top:20px; text-decoration:none; color:#e67e22; font-weight:bold;}
</style>
</head>
<body>
<div class="container">
    <a href="dashboard.jsp" class="back">← Back</a>
    <h2>Fee Records</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Student ID</th>
            <th>Amount Paid</th>
        </tr>
        <%
            List<Fee> list = (List<Fee>)request.getAttribute("feeList");
            if(list != null && !list.isEmpty()){
                for(Fee f : list){
        %>
        <tr>
            <td><%= f.getId() %></td>
            <td><%= f.getStudentId() %></td>
            <td>₹ <%= f.getAmount() %></td>
        </tr>
        <% 
                }
            } else {
        %>
        <tr><td colspan="3">No records found</td></tr>
        <% } %>
    </table>
</div>
</body>
</html>