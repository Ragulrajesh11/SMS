<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String studentIdParam = request.getParameter("studentId");
%>

<!DOCTYPE html>
<html>
<head>
<title>Add Marks</title>
<style>
body{
    margin:0;
    font-family:Segoe UI;
    background:linear-gradient(120deg,#2ecc71,#27ae60);
}
.container{
    width:420px;
    background:white;
    padding:30px;
    margin:80px auto;
    border-radius:15px;
    box-shadow:0px 10px 30px rgba(0,0,0,0.3);
    animation:slide 1s ease;
}
@keyframes slide{
    from{transform:translateY(-50px);opacity:0;}
    to{transform:translateY(0);opacity:1;}
}
h2{
    text-align:center;
    color:#27ae60;
}
input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:8px;
}
button{
    width:100%;
    padding:12px;
    background:#27ae60;
    border:none;
    color:white;
    font-size:16px;
    border-radius:8px;
    cursor:pointer;
}
button:hover{
    background:#219150;
}
.msg{
    text-align:center;
    color:green;
    margin-bottom:10px;
}
.error{
    text-align:center;
    color:red;
    margin-bottom:10px;
}
</style>
</head>
<body>

<div class="container">
<h2>Add Student Marks</h2>

<% if(request.getParameter("msg") != null){ %>
    <div class="msg">✅ Marks Added Successfully</div>
<% } %>

<% if(request.getParameter("error") != null){ %>
    <div class="error">❌ Failed to Add Marks</div>
<% } %>

<form action="addMarks" method="post">
    <input type="number" name="studentId" placeholder="Student ID" 
           value="<%= studentIdParam != null ? studentIdParam : "" %>" required>
    <input type="text" name="subject" placeholder="Subject" required>
    <input type="number" name="mark" placeholder="Mark" required>
    <button>Add Marks</button>
</form>

<a href="viewStudents">← Back to Students List</a>
</div>
</body>
