<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Marks</title>

<style>

body{
font-family:Segoe UI;
background:linear-gradient(135deg,#43cea2,#185a9d);
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.container{
background:white;
padding:40px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
width:350px;
text-align:center;
}

h2{
margin-bottom:20px;
color:#185a9d;
}

input{
width:100%;
padding:10px;
margin:10px 0;
border-radius:6px;
border:1px solid #ccc;
}

button{
width:100%;
padding:12px;
background:#3498db;
border:none;
color:white;
font-size:16px;
border-radius:6px;
cursor:pointer;
}

button:hover{
background:#21618c;
}

a{
display:block;
margin-top:15px;
text-decoration:none;
color:#185a9d;
}

</style>

</head>

<body>

<div class="container">

<h2>Add Student Marks</h2>

<form action="<%=request.getContextPath()%>/addMarks" method="post">

<input type="number" name="studentId" placeholder="Student ID" required>

<input type="text" name="subject" placeholder="Subject" required>

<input type="number" name="mark" placeholder="Marks" required>

<button type="submit">Add Marks</button>

</form>

<a href="dashboard.jsp">← Back</a>

</div>

</body>
</html>