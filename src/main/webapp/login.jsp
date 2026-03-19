<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SMS Login</title>

<style>

body{
font-family:Segoe UI;
background:linear-gradient(135deg,#667eea,#764ba2);
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
color:#667eea;
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
background:#667eea;
color:white;
border:none;
border-radius:6px;
margin-top:15px;
font-weight:bold;
cursor:pointer;
}

button:hover{
background:#5a67d8;
}

.link{
text-align:center;
margin-top:15px;
}

.link a{
text-decoration:none;
color:#667eea;
}

</style>

</head>

<body>

<div class="box">

<h2>Login</h2>

<form action="<%= request.getContextPath() %>/login" method="post">

<input type="email" name="email" placeholder="Email" required>

<input type="password" name="password" placeholder="Password" required>

<button type="submit">Login</button>

</form>

<div class="link">
<a href="register.jsp">Create New Account</a>
</div>

</div>

</body>
</html>