<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Fees</title>
<style>
    body{ font-family:Segoe UI; background:#f0f2f5; display:flex; justify-content:center; align-items:center; height:100vh; margin:0;}
    .container{ width:350px; background:white; padding:30px; border-radius:10px; box-shadow:0 5px 15px rgba(0,0,0,0.2); text-align:center;}
    input{ width:90%; padding:10px; margin:10px 0; border:1px solid #ddd; border-radius:5px;}
    button{ width:100%; padding:10px; background:#e67e22; color:white; border:none; border-radius:5px; cursor:pointer; font-weight:bold;}
    button:hover{ background:#d35400;}
    h2{ color:#e67e22;}
    .back{ margin-top:15px; display:block; text-decoration:none; color:#555;}
</style>
</head>
<body>
<div class="container">
    <h2>💰 Add Student Fee</h2>
    <form action="addFee" method="post">
        <input type="number" name="studentId" placeholder="Student ID" required>
        <input type="number" name="amount" step="0.01" placeholder="Amount (₹)" required>
        <button type="submit">Add Fee</button>
    </form>
    <a href="dashboard.jsp" class="back">Back to Dashboard</a>
</div>
</body>
</html>