<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Fee</title>

<style>

body{
font-family:Segoe UI;
background:linear-gradient(135deg,#667eea,#764ba2);
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
color:#667eea;
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
background:#27ae60;
border:none;
color:white;
font-size:16px;
border-radius:6px;
cursor:pointer;
}

button:hover{
background:#1e8449;
}

a{
display:block;
margin-top:15px;
text-decoration:none;
color:#667eea;
}

</style>

</head>

<body>

<div class="container">

<h2>Add Student Fee</h2>

<form action="<%=request.getContextPath()%>/addFee" method="post">

<input type="number" name="studentId" placeholder="Student ID" required>

<input type="number" name="amount" placeholder="Fee Amount" required>

<button type="submit">Add Fee</button>

</form>

<a href="dashboard.jsp">← Back</a>

</div>

</body>
</html>