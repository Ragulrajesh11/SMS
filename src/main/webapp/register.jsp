<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<style>

body{
font-family:Segoe UI;
background:linear-gradient(135deg,#11998e,#38ef7d);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}

.box{
width:380px;
background:white;
padding:35px;
border-radius:10px;
box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

h2{
text-align:center;
color:#11998e;
margin-bottom:20px;
}

input{
width:100%;
padding:12px;
margin-top:12px;
border-radius:6px;
border:1px solid #ccc;
}

button{
width:100%;
padding:12px;
background:#11998e;
color:white;
border:none;
border-radius:6px;
margin-top:15px;
font-weight:bold;
cursor:pointer;
}

button:hover{
background:#0e8c7d;
}

.link{
text-align:center;
margin-top:15px;
}

.link a{
text-decoration:none;
color:#11998e;
}

</style>

</head>

<body>

<div class="box">

<h2>Create Account</h2>

<form action="<%= request.getContextPath() %>/register" method="post">

<input type="text" name="name" placeholder="Full Name" required>

<input type="email" name="email" placeholder="Email" required>

<input type="password" name="password" placeholder="Password" required>

<button type="submit">Register</button>

</form>

<div class="link">
<a href="login.jsp">Already have account? Login</a>
</div>

</div>

</body>
</html>