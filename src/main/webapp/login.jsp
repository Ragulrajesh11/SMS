<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body{
            font-family: Arial;
            background-color: #e6f0ff;
        }
        .box{
            width: 350px;
            margin: 120px auto;
            background: white;
            padding: 25px;
            border-radius: 6px;
        }
        h1{
            text-align: center;
            color: #2196F3;
            margin-bottom: 5px;
        }
        h2{
            text-align: center;
        }
        input{
            width: 100%;
            padding: 10px;
            margin-top: 12px;
        }
        input[type=submit]{
            background: #2196F3;
            color: white;
            border: none;
            cursor: pointer;
        }
        .success{
            color: green;
            text-align: center;
        }
        .error{
            color: red;
            text-align: center;
        }
        .register-link{
            display: block;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<div class="box">

    <h1>SMS</h1>
    <p style="text-align:center;">Student Management System</p>

    <h2>Login</h2>

    <% if("registered".equals(request.getParameter("msg"))){ %>
        <p class="success">Registration successful. Please login.</p>
    <% } %>

    <% if("invalid".equals(request.getParameter("error"))){ %>
        <p class="error">Invalid Email or Password</p>
    <% } %>

    <% if("exception".equals(request.getParameter("error"))){ %>
        <p class="error">Something went wrong. Try again.</p>
    <% } %>

    <% if("logout".equals(request.getParameter("msg"))){ %>
        <p class="success">Logged out successfully</p>
    <% } %>

    <form action="login" method="post">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
    </form>

    <a class="register-link" href="register.jsp">New user? Register here</a>

</div>

</body>
</html>
