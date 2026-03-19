<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#667eea,#764ba2);
overflow:hidden;
}

/* animated background circles */

.circle{
position:absolute;
border-radius:50%;
background:rgba(255,255,255,0.15);
animation:float 8s infinite ease-in-out;
}

.circle1{
width:200px;
height:200px;
top:10%;
left:15%;
}

.circle2{
width:300px;
height:300px;
bottom:10%;
right:10%;
animation-delay:2s;
}

@keyframes float{
0%{transform:translateY(0);}
50%{transform:translateY(-30px);}
100%{transform:translateY(0);}
}

/* glass card */

.container{
background:rgba(255,255,255,0.15);
backdrop-filter:blur(10px);
padding:50px;
border-radius:15px;
text-align:center;
box-shadow:0 15px 35px rgba(0,0,0,0.3);
width:420px;
color:white;
animation:fadeIn 1s ease;
}

@keyframes fadeIn{
from{opacity:0;transform:translateY(40px);}
to{opacity:1;transform:translateY(0);}
}

h1{
margin-bottom:35px;
font-size:30px;
}

/* buttons */

a{
display:block;
text-decoration:none;
margin:15px 0;
padding:15px;
border-radius:8px;
font-size:18px;
font-weight:bold;
color:white;
background:linear-gradient(135deg,#ff7eb3,#ff758c);
transition:0.3s;
}

a:nth-child(3){
background:linear-gradient(135deg,#43e97b,#38f9d7);
}

a:nth-child(4){
background:linear-gradient(135deg,#f7971e,#ffd200);
}

a:hover{
transform:scale(1.05);
box-shadow:0 10px 20px rgba(0,0,0,0.3);
}

</style>

</head>

<body>

<div class="circle circle1"></div>
<div class="circle circle2"></div>

<div class="container">

<h1>🎓 Student Management System</h1>

<a href="login.jsp">🔐 Login</a>

<a href="register.jsp">📝 Register</a>

<a href="dashboard.jsp">📊 Dashboard</a>

</div>

</body>
</html>