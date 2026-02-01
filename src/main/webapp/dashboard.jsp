<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("name") == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>

<style>
body{
    font-family: Arial;
    background: linear-gradient(to right,#e8ffe8,#d0f5d0);
}
.container{
    width: 900px;
    margin: 60px auto;
}
h1{text-align:center;color:#2e7d32;}
h3{text-align:center;margin-top:10px;}
.cards{
    display:flex;
    flex-wrap:wrap;
    justify-content:space-between;
    margin-top:40px;
}
.card{
    width:200px;
    background:white;
    padding:20px;
    text-align:center;
    border-radius:10px;
    box-shadow:0 8px 15px rgba(0,0,0,0.2);
    margin-bottom:25px;
    transition:0.3s;
}
.card:hover{
    transform:translateY(-8px);
    box-shadow:0 15px 25px rgba(0,0,0,0.3);
}
.card h4{color:#2e7d32;}
.card a{
    text-decoration:none;
    color:white;
    display:block;
    padding:10px;
    background:#2196F3;
    margin-top:15px;
    border-radius:6px;
}
.card a:hover{background:#1976D2;}
.logout{
    display:block;
    width:150px;
    margin:40px auto;
    text-align:center;
    background:red;
    color:white;
    padding:10px;
    text-decoration:none;
    border-radius:6px;
}
</style>
</head>

<body>
<div class="container">

<h1>SMS</h1>
<h3>Student Management System</h3>
<h3>Welcome <%= session.getAttribute("name") %></h3>

<div class="cards">

    <div class="card">
        <h4>Home</h4>
        <a href="<%= request.getContextPath() %>/index.jsp">Open</a>
    </div>

    <div class="card">
        <h4>Add Student</h4>
        <a href="<%= request.getContextPath() %>/addStudent.jsp">Open</a>
    </div>

    <div class="card">
        <h4>View Students</h4>
        <a href="<%= request.getContextPath() %>/viewStudents">Open</a>
    </div>

    <div class="card">
        <h4>Add Fees</h4>
        <a href="<%= request.getContextPath() %>/addFee.jsp">Open</a>
    </div>

    <div class="card">
        <h4>View Fees</h4>
        <a href="<%= request.getContextPath() %>/viewFees">Open</a>
    </div>

    <div class="card">
        <h4>Add Marks</h4>
        <a href="<%= request.getContextPath() %>/addMarks.jsp">Open</a>
    </div>

    <div class="card">
        <h4>View Marks</h4>
        <a href="<%= request.getContextPath() %>/viewMarks">Open</a>
    </div>

</div>

<a class="logout" href="<%= request.getContextPath() %>/logout">Logout</a>

</div>
</body>
</html>
