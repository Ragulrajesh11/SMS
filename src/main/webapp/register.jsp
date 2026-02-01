<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body{
            font-family: Arial;
            background-color: #f2f2f2;
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
            color: #4CAF50;
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
            background: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        a{
            display: block;
            text-align: center;
            margin-top: 12px;
        }
        .error{
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="box">

    <h1>SMS</h1>
    <p style="text-align:center;">Student Management System</p>

    <h2>Register</h2>

    <% if(request.getParameter("error") != null){ %>
        <p class="error">Registration failed. Try again.</p>
    <% } %>

    <form action="register" method="post">
        <input type="text" name="name" placeholder="Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Register">
    </form>

    <a href="login.jsp">Already registered? Login</a>

</div>

</body>
</html>
